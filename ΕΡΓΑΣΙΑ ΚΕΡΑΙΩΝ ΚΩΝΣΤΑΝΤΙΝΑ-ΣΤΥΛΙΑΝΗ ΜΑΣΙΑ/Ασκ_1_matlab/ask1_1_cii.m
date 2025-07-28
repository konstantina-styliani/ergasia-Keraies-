clc
clear all
N=24;
M=16;

f_values=[0,pi/6,pi/3,pi/2];
theta_values = [0, pi/6, pi/3];
%Οι τιμές των HPBW για θο=0 , θο=30 και θο=60 (υπολογισμένα από το γράφημα)
HPBWx_values=[4.033 , 5.5 , 10]; 
HPBWy_values=[6.05 , 8 , 15];
D=zeros(length(f_values),length(theta_values))
for i=1:length(f_values)
    for k=1:length(theta_values)
        f=f_values(i)
        th=theta_values(k)
if(f==0||th==0)
    th_y=HPBWy_values(1)
else th_y=HPBWy_values(k)
end

if(f==pi/2||th==0)
    th_x=HPBWx_values(1)
else th_x=HPBWx_values(k)
end
th_h=1/(cos(th).*sqrt((cos(f).^2)./(th_x)^2 + (sin(f).^2)./(th_y)^2 ))
psi_h=1/sqrt( (sin(f).^2)./(th_x)^2 +(cos(f).^2)./(th_y)^2 )

D(i,k)=32400 / (th_h*psi_h)


    end
end


