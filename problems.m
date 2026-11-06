clear;
clc;
close all
problem=questdlg('plz select problems?','Problems','1','2','1')
%% p1
if problem==1
m1=1;m2=2;m3=2;l=1;k1=1000;k2=500;k3=2000;
I1=m1*l*l;I2=m2*l*l;I3=m3*l*l;g=10;
M1=[I1,0,0;0,I2,0;0,0,I3];
K1=[-(k1+k2)*l*l+m1*g*l,(k1+k2)*l*l,0
    .5*k1*l*l+k2*l*l,-k3*l*l+m2*g*l+.5*k1*l*l+k2*l*l,k3*l*l
    0,k3*l*l,-m3*g*l+k3*l*l];   
[Vec,w2]=eig(K1,M1);
EigenVector=Vec
Freq=sqrt(w2)
%% p2
else 
m1=2;m2=.5;m3=.5;l1=.5;l2=.5;k1=2000;
g=10;I1=m1*l1^2;I2=m2*l2*l2;
M1=[m1,0,0;0,I1,0;0,0,I2];
K1=[k1,0,0;-m2*g,-m2*g*l1,0;-m3*g,-m3*g*l1,-m3*g*l2];
[Vec,w2]=eig(K1,M1);
EigenVector=Vec
Freq=sqrt(w2)
end
