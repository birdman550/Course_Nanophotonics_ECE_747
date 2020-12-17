%MATLAB code for Prob Set 1, Q3 (c)

f=300e+12; %freq = 300 THz
k=(2*pi*f)/(3*10^8); %wavenumber, k=2*pi*f/c
z=-2000*10^(-9):1*10^(-9):2000*10^(-9); %z ranges from -2000 nm to 2000 nm

E=cos(k*z)-sin(k*z);% real electric field

plot(z*10^(6), E)
title('Electric field in x direction as a function of z')
xlabel('z [in \mu m]') 
ylabel('E(z,t=0) [V/m]')
