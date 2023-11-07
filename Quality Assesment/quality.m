
clc;        % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;      % Erase all existing variables.
workspace;  % Make sure the workspace panel is showing.
fontSize = 22;
%Original image
I = imread('C:\Users\msanc\OneDrive\Documents\MATLAB\Bayesian-Framework-of-Nonlocal-Means-Filter\phantomImage.png'); 
% Noisy image
I_noise = imread("C:\Users\msanc\OneDrive\Documents\MATLAB\Bayesian-Framework-of-Nonlocal-Means-Filter\Noise\noisyImage.png"); 
% Filtered image
I2 = imread("C:\Users\msanc\OneDrive\Documents\MATLAB\Bayesian-Framework-of-Nonlocal-Means-Filter\despeckledImage.png"); 
% Measure signal-to-noise ratio
img=I;
img=double(img(:));
ima=max(img(:));
imi=min(img(:));
mse=std(img(:));
snr=10*log10((ima-imi)./mse);
mse = immse(I2, I);

% Measure Peak SNR
[peaksnr, snr] = psnr(I2, I);
fprintf('\n The Peak-SNR value is %0.4f', peaksnr);
fprintf('\n The SNR value is %0.4f \n', snr);
fprintf('\n The MSE value is %0.4f \n', mse);

