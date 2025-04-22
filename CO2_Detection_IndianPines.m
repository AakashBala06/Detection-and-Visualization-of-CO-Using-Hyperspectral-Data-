
%% Hyperspectral CO₂ Detection in MATLAB Online (No Toolboxes Needed)
% Load the hyperspectral data cube
load('indian_pines_corrected.mat');  % Variable: indian_pines_corrected
cube = indian_pines_corrected;

% Display Band 100
figure;
imagesc(cube(:,:,100));
title('Band 100 of Hyperspectral Image');
colormap gray; axis off;

% Plot spectrum at pixel (60,80)
x = 60; y = 80;
spectrum = squeeze(cube(y, x, :));
figure;
plot(spectrum);
xlabel('Band Index'); ylabel('Reflectance');
title(['Spectrum at Pixel (' num2str(x) ',' num2str(y) ')']);

% Simulated CO₂ absorption detection using bands 180–200
co2_bands = cube(:,:,180:200);
co2_signal = mean(co2_bands, 3);

% Histogram to guide thresholding
figure;
histogram(co2_signal(:), 50);
title('Histogram of CO₂ Band Reflectance');
xlabel('Reflectance'); ylabel('Pixel Count');

% Apply manual threshold (based on histogram)
threshold = 1080;
co2_mask = co2_signal < threshold;

% Show CO₂ detection mask
figure;
imshow(co2_mask);
title(['Final CO₂ Detection Mask (Threshold = ' num2str(threshold) ')']);

% Overlay detection on grayscale background (Bands 30–40 average)
grayscale = mean(cube(:,:,30:40), 3);
figure;
imshowpair(grayscale, co2_mask, 'blend');
title('Overlay: Grayscale + CO₂ Detection');
