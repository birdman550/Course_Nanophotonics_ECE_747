%MATLAB code for Prob Set 1, Q3 (d)

f=300e+12; %freq = 300 THz
T=1/f; %time period
k=(2*pi*f)/(3*10^8); %wavenumber, k=2*pi*f/c
w=2*pi*f; %angular velocity
z=-2000*10^(-9):1*10^(-9):2000*10^(-9); %z ranges from -2000 nm to 2000 nm

%E_1 wave is a right moving waves
%E_2 wave is a left moving waves
%Each wave is plotted at 4 different times

%t = 0.1*T
E_1_1=cos(k*z - w*0.1*T)-sin(k*z - w*0.1*T);
E_2_1=cos(-k*z - w*0.1*T)-sin(-k*z - w*0.1*T);

%t = 0.2*T
E_1_2=cos(k*z - w*0.2*T)-sin(k*z - w*0.2*T);
E_2_2=cos(-k*z - w*0.2*T)-sin(-k*z - w*0.2*T);

%t = 0.3*T
E_1_3=cos(k*z - w*0.3*T)-sin(k*z - w*0.3*T);
E_2_3=cos(-k*z - w*0.3*T)-sin(-k*z - w*0.3*T);

%t = 0.4*T
E_1_4=cos(k*z - w*0.4*T)-sin(k*z - w*0.4*T);
E_2_4=cos(-k*z - w*0.4*T)-sin(-k*z - w*0.4*T);


%plotting right moving wave, E_1
hold on
plot(z*10^(6), E_1_1)
plot(z*10^(6), E_1_2)
plot(z*10^(6), E_1_3)
plot(z*10^(6), E_1_4)
legend({'t=0.1 T','t=0.2 T','t=0.3 T','t=0.4 T'},'Location','southwest')
title('Electric field in x direction as a function of z at various times')
xlabel('z [in \mu m]') 
ylabel('E(z,t) [V/m]')
ax = gca;
ax.FontSize = 30;

%plotting left moving wave, E_2
%hold on
%plot(z*10^(6), E_2_1)
%plot(z*10^(6), E_2_2)
%plot(z*10^(6), E_2_3)
%plot(z*10^(6), E_2_4)
%legend({'t=0.1 T','t=0.2 T','t=0.3 T','t=0.4 T'},'Location','southwest')
%title('Electric field in x direction as a function of z at various times')
%xlabel('z [in \mu m]') 
%ylabel('E(z,t) [V/m]')
%ax = gca;
%ax.FontSize = 30;


