%MATLAB code to plot Electric Fields for ECE747 Q4,(c) and (d)

%defining all the constants
lambda = 500*10^(-9); %given wavelength of the plane wave
k=2*pi/lambda; %modulus of wave vector
sigma=k*sin(10*pi/180)/2;
ky_min=k*sin(-10*pi/180);
ky_max=k*sin(10*pi/180);

%calculating the wave vectors and amplitudes
ky_array=linspace(ky_min,ky_max,30);%ky is linearly distributed over 30 waves
kx_array=sqrt(k^2-ky_array.^2);%calculating corresponding kx
A=exp((-ky_array.^2)/(2*sigma^2));%wave amplitudes

[X,Y] = meshgrid(-5:0.01:5,-5:0.01:5); %X and Y defined from -5 to 5 micro-meters
E_net=zeros(size(X));%net electric field
for i = 1:1:30
    E_net=E_net+A(i)*cos(kx_array(i)*X*10^(-6)+ky_array(i)*Y*10^(-6));
end
%surf(X,Y,E_net, 'edgecolor', 'none')
%title('E-field propagating in the X-Y plane')
%xlabel('X [in \mum]') 
%ylabel('Y [in \mum]')
%zlabel('E [in V/m]')
%ax = gca;
%ax.FontSize = 30;

I=zeros(size(E_net));
I=0.5*3*(10^8)*(8.8542*(10^(-12)))*abs(E_net).^2;
surf(X,Y,I, 'edgecolor', 'none')
title('Irradiance of beam propagating in the X-Y plane')
xlabel('X [in \mum]') 
ylabel('Y [in \mum]')
zlabel('I [in W/m^2]')
ax = gca;
ax.FontSize = 30;
