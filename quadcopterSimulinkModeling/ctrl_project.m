clear all;
close all;

%% parameters
M = 30;
mw = 2;
r = 0.1;
d = 0.7;
K_tL = 0.5;
K_tR = 0.5;
B_L = 0.1;
B_R = 0.1;
J_m = 0.0263;
J_M = 2.45;

alpha = M*r^2 + 3*mw*r^2 + 3*J_m + J_M*(r^2/d^2)/2 - ...
    2*J_M^2*(r^2/d^2)/(M*r^2) + 3*mw*r^2 + 3*J_m + J_M*(r^2/d^2);

beta = 2*J_M^2*(r^4/d^4)/(M*r^2) + 3*mw*r^2 + 3*J_m + J_M*(r^2/d^2);

gama = 2*J_M*(r^2/d^2)/(M*r^2) + 3*mw*r^2 + 3*J_m + J_M*(r^2/d^2);

%% system matrix
A = [0     1        0        0     0          0;...
     0 -B_L/alpha -1/alpha   0 beta/alpha gama/alpha;...
     0     0        0        0     0          0;...
     0     0        0        0    1/alpha     0;...
     0 beta/alpha gama/alpha 0 -B_R/alpha -1/alpha;...
     0     0        0        0     0          0];
 
 B = [    0                 0;...
      K_tL/alpha 2*K_tL*gama/alpha;...
          0                 0;...
          0                 0;...
      2*K_tR*gama/alpha K_tR/alpha;...
          0                 0];
   
 C = [1 1 0 1 1 0];
 D = [0 0];
 
 %% system transfer matrix
 [num den] = ss2tf(A,B,C,D,2)
 pzmap(sys);
 
 %% check controllability
 ctrl_mat = ctrb(A,B);
 
 rk = rank(ctrl_mat);
 
 eig_value = eig(A);
 
 I = eye(6);
 
 for i=1:6
     rank([A-eig_value(i)*I B])
 end
 