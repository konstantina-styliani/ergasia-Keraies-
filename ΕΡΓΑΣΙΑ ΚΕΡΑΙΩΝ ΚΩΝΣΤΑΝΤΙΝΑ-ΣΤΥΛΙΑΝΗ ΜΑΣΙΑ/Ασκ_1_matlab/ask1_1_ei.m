clc
clear all
N=24;
M=16;
theta=0:pi/500:pi;
fi=0:pi/1000:2*pi;
[theta,fi]=meshgrid(theta,fi);
dx=-pi/2-2.92/N;
dy=0;
psixi=pi/2.*cos(fi).*sin(theta)+dx;
psiyi=pi/2.*sin(fi).*sin(theta)+dy;
Ax=abs((sin(N*psixi/2)./(sin(psixi/2))))
Ay=abs((sin(M*psiyi/2)./sin(psiyi/2)))
AF=abs(Ax.*Ay)
 X = abs(AF).*cos(fi).*sin(theta);
    Y = abs(AF).*sin(fi).*sin(theta);
    Z = abs(AF).*cos(theta);

surf(X,Y,Z,AF);
shading interp;
axis equal;