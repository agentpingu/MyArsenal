function com=compare(img,std)
que = imresize( img ,[size(std,1) size(std,2)]);
B=pre_pro(que);
C=edge_d(B);
D=segment(que);
figure
imshow(D)
i1=get_sec(que);
i2=get_sec2(que);
i3=get_sec3(que);
h1=imhist(i1);
h2=imhist(i2);
h3=imhist(i3);
s1=get_sec(std);
s2=get_sec2(std);
s3=get_sec3(std);
H1=imhist(s1);
H2=imhist(s2);
H3=imhist(s3);
e1=hcompare_EMD(H1,h1);
e2=hcompare_EMD(H2,h2);
e3=hcompare_EMD(H3,h3);
mean_e=(e1+e2+e3)/3;
c1=corr2(s1,i1);
c2=corr2(s2,i2);
c3=corr2(s3,i3);
mean_c=(c1+c2+c3)/3;
x=mean_e;
y=mean_c;
if(mean_c>0)
    p_s=mean_c*100;
else
    p_s=100 - (-mean_c/(1-mean_c)*100)
end
fprintf('Percentage similarity according to correlation is %d' , p_s);
com=[x y]
end
