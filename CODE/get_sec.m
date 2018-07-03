function GS1=get_sec(img)
C=segment(img);
I2 = imcrop(C,[10 80 40 130])
GS1=I2
figure
imshow(GS1)
title('Test Section1')
end