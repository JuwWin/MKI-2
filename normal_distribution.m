clearvars
clc
close all

Nx=512;
Ny=256;
dx=0.025;
dy=0.25;
x=(-Nx/2:Nx/2-1)*dx;
y=(-Ny/2:Ny/2-1)*dy;
X=ones(Ny,1).*x;
Y=y.*ones(1,Nx);
R = sqrt(X.^2+Y.^2);
sigma = 0.1;
GD = 1/sqrt(2*pi)/sigma*exp(-0.5*(R/sigma).^2);
mesh(x,y,GD);
axis equal