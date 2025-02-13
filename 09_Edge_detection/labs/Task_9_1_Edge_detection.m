% Piotr Skalski
% Edge detection

clc;
clearvars;
close all;

% Loading photo
image = imread('../data/dom.png');

% Finds edges by looking for zero-crossings after filtering image with a Laplacian of Gaussian
image_log = edge(image, 'log', 120/255, 0.5);
image_sobel = edge(image, 'Sobel');
image_canny = edge(image, 'Canny');

% Display of graphs
figure(1);
subplot(2,2,1);
imshow(image); title('Original image');
subplot(2,2,2);
imshow(image_log); title('Edges found using LoG');
subplot(2,2,3);
imshow(image_sobel); title('Edges found using Sobel');
subplot(2,2,4);
imshow(image_canny); title('Edges found using Canny');


