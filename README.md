# Human Detection with HOG + SVM (MATLAB & FPGA)

A human detection system implemented in both MATLAB and hardware (Verilog on an FPGA). A 130×66 RGB static image is converted to grayscale, features are extracted with **Histogram of Oriented Gradients (HOG)**, and the image is classified as human / non-human by a **Support Vector Machine (SVM)**.

## Overview

Machine-learning-based human detection is widely used, but its computational cost makes real-time implementation on a CPU difficult. This project presents a hardware architecture that acts as a co-processor, off-loading the HOG + SVM computation from the CPU. The design was simulated in ModelSim and implemented on a Terasic DE2-115 FPGA board.

## Results

| Metric | Value |
|---|---|
| Accuracy | 84.35% |
| Detection time (FPGA @ 50 MHz) | 0.757 ms |
| Speed-up vs. MATLAB software | ~54× |

<img width="1498" alt="Screen Shot 2023-01-05 at 16 53 05" src="https://user-images.githubusercontent.com/69381013/210751911-ecfa8517-eb60-4d47-b69a-164137d24ed1.png">

<img width="1469" alt="Screen Shot 2023-01-05 at 16 53 35" src="https://user-images.githubusercontent.com/69381013/210752239-c9475375-5bd5-4b06-a000-51e8674cbf5a.png">

## HOG Parameters

Follows the design choices of Dalal and Triggs:

| Parameter | Value |
|---|---|
| Input window | 130×66 grayscale (128×64 plus a 1-pixel border for edge gradients) |
| Cell size | 8×8 pixels (8 × 16 cells) |
| Block size | 2×2 cells, 50% overlap |
| Orientation bins | 9 (unsigned, 0–180°), votes split between the two nearest bins |
| Block normalization | L2 |
| Descriptor length | 7 × 15 blocks × 4 cells × 9 bins = **3,780** |

## Repository Structure

```
human-detection-hog-svm/
├── MATLAB/
│   ├── HUMAN_DETECTION.m     # Main script: train SVM, test, report accuracy
│   ├── getHOGDescriptor.m    # Computes the 3,780-value HOG descriptor
│   └── getHistogram.m        # Builds a cell's orientation histogram
├── VERILOG/                  # Hardware design (HOG + SVM) for DE2-115
└── README.md
```

## Getting Started

### MATLAB

**Requirements**
- MATLAB with the Image Processing Toolbox and the Statistics and Machine Learning Toolbox

**Dataset layout.** `HUMAN_DETECTION.m` expects these folders next to the script:

```
Dataset/Positive/        # training images with a human
Dataset/Negative/        # training images without a human
Testset/TestPositive/    # test images with a human
Testset/Neg/             # test images without a human
```

**Run**

```bash
git clone https://github.com/cam-n/human-detection-hog-svm.git
cd human-detection-hog-svm/MATLAB
matlab -batch "HUMAN_DETECTION"
```

The script computes HOG features for the training set, trains the SVM with `fitcsvm`, classifies the test set, and prints the accuracy.

### FPGA (Verilog)

**Requirements**
- ModelSim (simulation)
- Intel Quartus (synthesis and programming)
- Terasic DE2-115 board

Open the project from the `VERILOG/` folder in Quartus, compile, and program the board. To simulate, run the testbench in ModelSim.

## Reference

Details of the architecture and evaluation are in the paper: [arXiv:2205.02689](https://arxiv.org/abs/2205.02689)

## Author

[cam-n](https://github.com/cam-n)