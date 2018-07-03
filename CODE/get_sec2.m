function GS2=get_sec2(img)
C=segment(img);
I3 = imcrop(C,[190 70 130 70])
GS2=I3;
figure
imshow(GS2)
title('Test Section2')
end