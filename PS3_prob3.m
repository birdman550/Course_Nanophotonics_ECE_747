%MATLAB code for ECE747 Q3 (c,d)

%defining all the parameters
c=3e+08;%speed of light
wave_range=linspace(1e-06,1.7e-06,10); %free-space wavelength range
n_eff_range=zeros(1,10); %empty array of effective indices corresponding to each free-space wavelength
%Run Lumerical mode solver for each of the wavelength in wave_range, to
%obtain the corresponding n_eff
n_eff_range(1)=2.837678; %corresponding to wave_range(1)=1e-06
n_eff_range(2)=2.682639; %corresponding to wave_range(2)=1.078e-06
n_eff_range(3)=2.526582; %corresponding to wave_range(3)=1.156e-06
n_eff_range(4)=2.365418; %corresponding to wave_range(4)=1.233e-06
n_eff_range(5)=2.192126; %corresponding to wave_range(5)=1.311e-06
n_eff_range(6)=2.005841; %corresponding to wave_range(6)=1.389e-06
n_eff_range(7)=1.804829; %corresponding to wave_range(7)=1.467e-06
n_eff_range(8)=1.593506; %corresponding to wave_range(8)=1.544e-06
n_eff_range(9)=1.376746; %corresponding to wave_range(9)=1.622e-06
n_eff_range(10)=1.178673; %corresponding to wave_range(10)=1.7e-06

w_range=2*pi*c./wave_range; %corresponding angular frequency range
beta_range=2*pi.*n_eff_range./wave_range; %corresponding wave number range

%making the plot of the dispersion relation
%plot(beta_range*10^(-6),w_range,'Color','r','Linewidth',3)
%title('Dispersion Relation (\omega vs \beta)')
%xlabel('\beta [\mum^{-1}]')
%ylabel('\omega [Rad/s]')
%ax = gca;
%ax.FontSize = 25;

v_g=real(gradient(w_range)./gradient(beta_range)); %group velocity

%making the plot of the group velocity vs angular frequency
plot(w_range, v_g,'Color','r','Linewidth',3)
title('Group velocity (V_g) vs \omega')
xlabel('\omega [Rad/s]')
ylabel('V_g [m/s]')
ax = gca;
ax.FontSize = 25;