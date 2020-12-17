%MATLAB code for ECE747 Q6 (b)

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
k_range=2*pi./wave_range;%corresponding wave number range in free space

ep = ep_inf + A_1./(w_1^2 - w_range.^2 - 1i*v_1.*w_range) + A_2./(w_2^2 - w_range.^2 - 1i*v_2.*w_range);
n=sqrt(ep);%refractive index

k_range_media=k_range.*n;%wave numbers inside the media
v_g=real(gradient(w_range)./gradient(k_range_media));%group velocity

%making the plot
plot(wave_range*10^(6),v_g,'Color','r','Linewidth',3)
title('Group Velocity vs Free-space Wavelength')
xlabel('\lambda_o [in \mum]') 
ylabel('Group Velocity [m/s]')
ax = gca;
ax.FontSize = 25;