%MATLAB code to plot Electric Fields for ECE747 Q4,(a) case i&ii

%defining all the constants
lambda = 500*10^(-9); %given wavelength of the plane wave
k=2*pi/lambda; %modulus of wave vector
theta_1 = 0;  %theta in case #i
theta_2 = 10; %theta in case #ii

%defining components of wave vectors for each wave
k_x_1=k*cos(theta_1*pi/180);
k_y_1=k*sin(theta_1*pi/180);
k_x_2=k*cos(theta_2*pi/180);
k_y_2=k*sin(theta_2*pi/180);

[X,Y] = meshgrid(-5:0.01:5,-5:0.01:5); %X and Y defined from -5 to 5 micro-meters
E_1=cos(k_x_1*X*10^(-6)+k_y_1*Y*10^(-6)); %E-field for theta=0
E_2=cos(k_x_2*X*10^(-6)+k_y_2*Y*10^(-6)); %E-field for theta=10
surf(X,Y,E_1, 'edgecolor', 'none')
%surf(X,Y,E_2, 'edgecolor', 'none')

title('E-field propagating in the X-Y plane')
xlabel('X [in \mum]') 
ylabel('Y [in \mum]')
zlabel('E [in V/m]')
ax = gca;
ax.FontSize = 30;