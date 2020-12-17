%MATLAB code for ECE747 HW2 Q5 - to plot the dispersion relation in a
%parallel-plate waveguide

m_range=1:2:7; %range of lowest m-values
d=2e-6;%given that the separation of plates = 2 um
c=3e+8;%speed of light
beta=linspace(0,6e+6,1000);%range of wave-guide wave-numbers


w_1=c*sqrt(beta.^2+(pi()^2*m_range(1)^2)/(4*d^2));%omega for m=1
w_2=c*sqrt(beta.^2+(pi()^2*m_range(2)^2)/(4*d^2));%omega for m=3
w_3=c*sqrt(beta.^2+(pi()^2*m_range(3)^2)/(4*d^2));%omega for m=5
w_4=c*sqrt(beta.^2+(pi()^2*m_range(4)^2)/(4*d^2));%omega for m=7

plot(beta,w_1,'Color','r','Linewidth',3)
hold on
plot(beta,w_2,'Color','b','Linewidth',3)
plot(beta,w_3,'Color','g','Linewidth',3)
plot(beta,w_4,'Color','y','Linewidth',3)
hold off
legend({'m=1','m=3','m=5','m=7'},'Location','southeast')
title('Dispersion relation')
xlabel('\beta [in m^{-1}]') 
ylabel('\omega [in rad/s]')
ax = gca;
ax.FontSize = 25;
