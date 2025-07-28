clc
clear all
N=24
M=16
theta=0:pi/500:pi;
f_values=[0,pi/6,pi/3,pi/2];
theta_values = [0, pi/6, pi/3];
for i=1:length(f_values)
    figure(i)
for k=1:length(theta_values)
f=f_values(i)
   dx=-(pi*cos(f).*sin(theta_values(k)));
   dy=-(pi*sin(f).*sin(theta_values(k)));
psixi=pi.*cos(f).*sin(theta)+dx 
psiyi=pi*sin(f)*sin(theta)+dy;

if (psixi==0)
        Ax=N;
    else
    Ax=abs((sin(N*psixi/2)./(sin(psixi/2))))
    end
    if (psiyi==0)
        Ay=M
    else
    Ay=abs((sin(M*psiyi/2)./sin(psiyi/2)))
    end


polarplot(theta,Ax.*Ay)
hold on;
title(sprintf('φ=φmax=%.0f\xB0',f*180/pi))
end
hold off;
end