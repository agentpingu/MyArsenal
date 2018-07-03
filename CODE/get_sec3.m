function GS3=get_sec3(img)
C=segment(img);
I4 = imcrop(C,[350 30 130 160])
GS3=I4;
figure
imshow(GS3)
title('Test Section3')
end