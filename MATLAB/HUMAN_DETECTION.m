clc
clear all
load TrainedData.mat
hog.numBins = 9;

% The number of cells horizontally and vertically.
hog.numHorizCells = 8;
hog.numVertCells = 16;

% Cell size in pixels (the cells are square).
hog.cellSize = 8;

% Compute the expected window size (with 1 pixel border on all sides).
hog.winSize = [(hog.numVertCells * hog.cellSize + 2), ...
               (hog.numHorizCells * hog.cellSize + 2)];
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load Datasets
B = [];
posImgs = getImagesInDir('./Dataset/Positive/', true);
negImgs = getImagesInDir('./Dataset/Negative/', true);
 
dataset = [posImgs, negImgs];
    
%Set-up the labels for Datasets
trainLabels = [ones(length(posImgs), 1); zeros(length(negImgs), 1)];

% Set-up the dataset used to train

trainDataset = zeros(length(dataset), 3780);

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('Computing the HOG from dataset...');
tic;
for i = 1 : length(dataset)

    % Get data in the next file.
    imgPath = char(dataset(i));
     
   
    % Load the image into a matrix.
    img = imread(imgPath);
    
    [x, y, z] = size(img);
   if z > 1
     % Convert the RGB image to gray image if the input images are RGB
     % images
        grayImg  = rgb2gray(img);
   else 
        grayImg = img;
   end
    %resize the input images to 128x64 size
    grayImg = imresize(grayImg, [130 66]);
    % Calculate the HOG descriptor for the window.
    H = getHOGDescriptor(hog, grayImg);

	
    % Add the descriptor to the rest.
    trainDataset(i, :) = H';
end
SVMModel = fitcsvm(trainDataset , trainLabels);
Tsvmtraining = toc;
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('\nWait for training...');
SVMStruct = svmtrain(trainDataset , trainLabels);


%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Set-up the beginning Error is zero ( the numbers of images which are wrong detection).

error = 0;
% Prepare the data for testing


testPos = getImagesInDir('./Testset/TestPositive/', true);
testNeg = getImagesInDir('./Testset/Neg/', true);

testSet = [testPos, testNeg];
GroupSet = zeros(length(testSet), 1);

targetLabels = [ones(length(testPos), 1); zeros(length(testNeg), 1)];

feature = zeros(length(testSet), 1);
RESULT = zeros(length(testSet), 1);
GroupLabels = zeros(length(testSet), 1);
GroupScores = zeros(length(testSet), 1);
TIMEreg = zeros(length(testSet), 1);
TIME = zeros(length(testSet), 1);

for ii = 1 : length(testSet)

    % Get data in the next file.
    testImgPath = char(testSet(ii));
     
   
    % Load the image into a matrix.
    testImg = imread(testImgPath);
    
    [a, b, c] = size(testImg);
   if c > 1
     % Convert the RGB image to gray image if the input images are RGB
     % images
        grayTestImg  = rgb2gray(testImg);
   else 
        grayTestImg = testImg;
   end
    %resize the input images to 128x64 size
    grayTestImg = imresize(grayTestImg, [130 66]);
   
   tic;
    % Calculate the HOG descriptor for the window.
    T = getHOGDescriptor(hog, grayTestImg); 
   time = toc;
    TIME(ii, 1) = time;
    % Detect the testing images
  %  Group       = svmclassify(SVMStruct, T');
    

 %% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
 tic;
 [label,score] = predict(SVMModel,T');
 t_reg = toc;
 TIMEreg (ii,1) = t_reg;
 GroupLabels(ii, 1) = label;
% GroupScores (ii, 1) = (T' * SVMModel.Beta) + SVMModel.Bias;
 GroupScores (ii, 1) = T' * SVMModel.Beta;
    %GroupSet(ii) = Group;
    if  GroupLabels(ii, 1)  ~= targetLabels(ii, 1)
        error = error + 1;
    end
    
end

fprintf ('\nDone detection ! \n');
fprintf (' RESULT : \t');
fprintf('(%d / %d) %.2f%%\n', (length(testSet) - error), length(testSet), (length(testSet) - error) / length(testSet) * 100.0);


 image_pos = imread('TestIMG.jpg');
 image_neg = imread('TestIMG_non.jpg');
 gray_pos  = rgb2gray(image_pos);
 gray_neg  = rgb2gray(image_neg);
 gray_pos = imresize(gray_pos, [130 66]); 
 gray_neg = imresize(gray_neg, [130 66]);
  hog_pos = getHOGDescriptor(hog, gray_pos);
 hog_neg = getHOGDescriptor(hog, gray_neg);
 
% G = svmclassify(SVMStruct, hog_pos');
 %J = svmclassify(SVMStruct, hog_neg');
 % testing 
 result_pos = hog_pos' * SVMModel.Beta + SVMModel.Bias;
 result_neg = hog_neg' * SVMModel.Beta + SVMModel.Bias;
tic;
[labelPos,scorePos] = predict(SVMModel,hog_pos');
Treg = toc;
[labelNeg,scoreNeg] = predict(SVMModel,hog_neg');


% tic and toc function using to get the time of a process.














