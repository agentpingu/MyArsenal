I=imread('C:\Users\Pingu\Desktop\project\Sample\rupee2.jpg');
Q=imread('C:\Users\Pingu\Desktop\project\Sample\yen 4.jpg');
B=pre_pro(I);
C=edge_d(B);
D=segment(I);
p=compare(Q,I);