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
D=zeros(length(f_values),length(theta_values));

for i=1:length(f_values)
for k=1:length(theta_values)
   dx=-(pi*cos(f_values(i)).*sin(theta_values(k)));
   dy=-(pi*sin(f_values(i)).*sin(theta_values(k)));
psixi=pi*cos(fi).*sin(theta)+dx ;
psiyi=pi*sin(fi).*sin(theta)+dy;

if (psixi==0)
        Ax=N;
    else
    Ax=abs((sin(N*psixi/2)./(sin(psixi/2))));
    end
    if (psiyi==0)
        Ay=M;
    else
    Ay=abs((sin(M*psiyi/2)./sin(psiyi/2)));
    end
    AFmax=M*N;
    Ax(isnan(Ax))=N;
    Ay(isnan(Ay))=M;
    AF=(abs(Ax.*Ay)./AFmax).^2 ;
    AF=AF.*sin(theta)*(pi/180)^2;
    p=sum(AF, "all");
    D(i,k)=4*pi/p
end
end

  

