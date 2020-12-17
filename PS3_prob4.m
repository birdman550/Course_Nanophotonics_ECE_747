%MATLAB code for ECE747 Q4

%defining all the parameters
c=3e+08;%speed of light
d=2e-06; %separation between the waveguide plates in meters
wl=1e-06; %free space wavelength
z=0.01; %propagation length
n=2+0.001i; %complex refractive index of the medium in the waveguide

omega=2*pi*c/wl; %angular frequency at given wavelength

beta = sqrt(omega^2*n^2/c^2-pi^2/d^2) %propagation constant inside the waveguide
I_ratio = exp(-2*imag(beta)*z) %ratio of intensity at z vs at source
