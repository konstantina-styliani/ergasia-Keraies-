clear all
clc
N=24;
M=16;
dfi=pi/180;
dtheta=pi/(180); %1 μοίρα

theta=0:dtheta:pi; %Aνά μια μοίρα !
fi=0:dfi:2*pi; %Aνά μια μοίρα !
[theta,fi]=meshgrid(theta,fi);

f_values=[0,pi/6,pi/3,pi/2];
theta_values = [0, pi/6, pi/3];


dx=-pi/2-2.92/N;
dy=0;
psixi=pi/2.*cos(fi).*sin(theta)+dx;
psiyi=pi/2.*sin(fi).*sin(theta)+dy;


    Ax=abs((sin(N*psixi/2)./(sin(psixi/2))));
    
    Ay=abs((sin(M*psiyi/2)./sin(psiyi/2)));
    
    AFmax=M*N;
    Ax(isnan(Ax))=N;
    Ay(isnan(Ay))=M;
    AF=(abs(Ax.*Ay)./AFmax).^2 ;
    AF=AF.*sin(theta)*(pi/180)^2;
    p=sum(AF, "all");
    D=4*pi/p

  

