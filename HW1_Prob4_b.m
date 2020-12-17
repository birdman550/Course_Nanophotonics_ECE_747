%MATLAB code to plot Electric Fields for ECE747 Q4,(b)

lambda = 500*10^(-9); %given wavelength of the plane wave
k=2*pi/lambda; %modulus of wave vector

theta=[-10 0 10];%array representing thetas for E1,2,3 respectively

k_components = zeros(3,2); %array representing values of x and y components of k for all three E-field vectors
%Columns indicate the 3 vectors (sequentially) and rows indicate x and y components (sequentially) 
for i = 1:1:3
    k_components(i,1)=k*cos(theta(i)*pi/180); %X-components
    k_components(i,2)=k*sin(theta(i)*pi/180); %Y-components
end 

[X,Y] = meshgrid(-5:0.01:5,-5:0.01:5); %X and Y defined from -5 to 5 micro-meters
E_net=zeros(size(X));%net electric field
for i = 1:1:3
    E_net=E_net+cos(k_components(i,1)*X*10^(-6)+k_components(i,2)*Y*10^(-6));
end
surf(X,Y,E_net, 'edgecolor', 'none')
title('E-field propagating in the X-Y plane')
xlabel('X [in \mum]') 
ylabel('Y [in \mum]')
zlabel('E [in V/m]')
ax = gca;
ax.FontSize = 30;