clc
clear all
N=24;
M=16;
f_values=[0,pi/6,pi/3,pi/2];
theta_values = [0, pi/6, pi/3];
Dxo=24; %ευρύπλευρη
Dyo=16; %ευρύπλευρη
Dx_values=[Dxo, 21.81 , 12];
Dy_values=[Dyo, 14, 7.47];

D=zeros(length(f_values),length(theta_values))

for i=1:length(f_values)
for k=1:length(theta_values)
    f=f_values(i)
    theta=theta_values(k)
    if(f==0||theta==0)
        Dy=Dyo;
    else 
        Dy=Dy_values(k);
    end

    if(f==pi/2||theta==0) 
        Dx=Dxo;
    else 
        Dx=Dx_values(k);
    end
    format bank
D(i,k)=pi*cos(theta_values(k))*Dx*Dy
end
end
