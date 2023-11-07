I = imread('phantomImage.png');
%I = imread('cameraman.tif');
I = double(I);

%// Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));

%// Add noise to image
%v = var(I(:)) / sqrt(10);
sigma = 0.8;
%v=sigma^2;
%I_noisy = imnoise(I, 'gaussian', 0, v);
I_noisy = imnoise(I,'speckle');



%// Show images
figure
subplot(1, 2, 1), imshow(I), title('Original image')
subplot(1, 2, 2), imshow(I_noisy), title('Noisy image')

imwrite(I_noisy, 'Noise\noisyImage.png')