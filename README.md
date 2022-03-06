# Human-Detection
A human detection system is developed on Matlab and FPGA: The 130x66 RGB pixels of static input image was attracted features and classify (learning) by using Histogram of Oriented Gradient (HOG) and Support Vector Machine (SVM) algorithm, respectively.


Nowadays, human detection, which using machine learning is a popular topic and has been widely used in many applications. However, including complexities in computation, leading to the human detection system implemented hardly in the real-time applications. This paper presents the architecture of hardware, a human detection system which was simulated in the ModelSim tool and implemented on DE2-115 FPGA board. As a co-processor, this system was built to off-load to Central Processor Unit (CPU) and speed up the computation timing. The 130x66 RGB pixels of static input image was attracted features and classify (learning) by using Histogram of Oriented Gradient (HOG) and Support Vector Machine (SVM) algorithm, respectively. As a result, the accuracy rate of this system reach to 84.35%. And the timing for detection decreased to 0.757 ms at 50MHz frequency (54 times faster when this system was implemented in software by using the Matlab tool).

Technical Report at: https://drive.google.com/file/d/113buhgiucjXF7hy_1RBcnPNDTThMK99p/view
