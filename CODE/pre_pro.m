function a = pre_pro(rgb_im)
noisy_i = imnoise(rgb_im,'salt & pepper',0.02);
gray_i = rgb2gray(noisy_i);
blur_i = medfilt2(gray_i);
a = blur_i;
end