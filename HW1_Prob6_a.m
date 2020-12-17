%MATLAB code for ECE747 Q6 (a)

%defining all parameters
c=3*10^8;%speed of light
lambda_1=10*10^(-6);%resonant wavelength of oscillator #1
lambda_2=5*10^(-6);%resonant wavelength of oscillator #2
f_1=c/lambda_1;%resonant freq of oscillator #1
f_2=c/lambda_2;%rresonant freq of oscillator #2
w_1=2*pi*f_1;%resonant angular freq of oscillator #1
w_2=2*pi*f_2;%resonant angular freq of oscillator #2

ep_inf=4; %permittivity for HF oscillators
A_1=2*(w_1)^2;%lorentz parameter #1
A_2=2*(w_2)^2;%lorentz parameter #2
v_1=w_1/3;%damping coeff #1
v_2=w_2/5;%damping coeff #2

wave_range=linspace(0.5*10^(-6),20*10^(-6),1000);%wavelength range to plot
w_range=2*pi*c./wave_range;%corresponding angular freq range

ep = ep_inf + A_1./(w_1^2 - w_range.^2 - 1i*v_1.*w_range) + A_2./(w_2^2 - w_range.^2 - 1i*v_2.*w_range);
n=sqrt(ep);%refractive index

n_real=real(n);%real part of the refractive index
n_imag=imag(n);%complex part of refractive index
n_inf=sqrt(ep_inf)*ones(size(wave_range));%refractive index corresponding to ep_inf

%making the plot
plot(wave_range*10^(6),n_real,'Color','r','Linewidth',3)
hold on
plot(wave_range*10^(6),n_imag,'Color','g','Linewidth',3)
plot(wave_range*10^(6),n_inf,'Color','b','Linewidth',3)
hold off
legend({'Real Refractive Index','Complex Refractive Index','Refractive Index corresponding to HF oscillators'},'Location','east')
title('Refractive Index vs Free-space Wavelength')
xlabel('\lambda_o [in \mum]') 
ylabel('Refractive Index')
ax = gca;
ax.FontSize = 25;