clear
clc
close all
%% Ineria
Ixx=0.0086;%7.5e-3;
Iyy=0.0086;%7.5e-3;
Izz=0.0172;%1.3e-2;
% axel length
l=0.225;%0.23;
%% rotor inertia
Jr=3.7404e-5;%6e-5;
%% mass
m=0.4794;%0.650;
g=9.81;
%% aerodynamic force and moments constant
kf=3.13e-5;
km=9e-7;%7.5e-7;
%% aerodynamic coefficients
Krx=0;%0.1;
Kry=0;%;0.1;

Krz=0;%0.15;
Ktx=0;%0.1;
Kty=0;%0.1;
Ktz=0;%0.15;
%% constants calculations
a1=(Iyy-Izz)/Ixx;
a2=Jr/Ixx;
a3=(Izz-Ixx)/Iyy;
a4=Jr/Iyy;
a5=(Ixx-Iyy)/Izz;
b1=l/Ixx;
b2=l/Iyy;
b3=l/Izz;
%% Rotor Dynamics
R_mot=0.6; %Motor Circuit Resistance
K_mot=5.2; %Motor Torque Constant
%% Disturbances
noise_rot=0;
noise_trans=0;
%% PID Constants
ki_Z=0;
kp_Z=30;
kd_Z=10;

ki_X=.1;
kp_X=2;
kd_X=.7;

ki_Y=.1;
kp_Y=2;
kd_Y=.7;

ki_Theta=2.1756;
kp_Theta=3.0239;
kd_Theta=0.2022;

ki_Phi=2.2310;
kp_Phi=2.9996;
kd_Phi=0.1969;

ki_Psi=1.8013;
kp_Psi=2.479;
kd_Psi=0.1528;
%% desired position
X_d = 1;
Y_d = 1;
Z_d = 2;
%% desired orientation
Phi_des = 0.087;
Theta_des = 0.087;
Psi_des = 0.087;
%% desired velocities and accelerations
z_dot_d=0;
phi_dot_d=0;
theta_dot_d=0;
psi_dot_d=0;
phi_dot_dot_d=0;
theta_dot_dot_d=0;
psi_dot_dot_d=0;
z_dot_dot_d=0;
x_dot_d=0;
y_dot_d=0;
%% hover omega
omega_hover=sqrt( (m*g)/(4*kf) );
deltaU1_max=kf*4*omega_hover^2;
deltaU2_max=kf*omega_hover^2;
deltaU4_max=km*2*omega_hover^2;
omega_max=(90*100)*9000*(2*pi/(60)); %90% of 9000 rpm to rad/s
U1_max=kf*4*omega_max^2;
U2_max=kf*omega_max^2;
U4_max=km*2*omega_max^2;
