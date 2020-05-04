clc;
clearvars;
x=-1.8:0.001:1.80;
y=x';
n=length(x);
[X,Y]=meshgrid(x,y);
z0=X+ 1i*Y;
z=zeros(n,n);
c=zeros(n,n);

maxitration=32;

for k=1:maxitration
    z=z.^2 + z0;
    c(abs(z) < 2)= k;
end
figure;
image(c,'CDataMapping','scaled')
axis image
colormap((hsv(maxitration)))