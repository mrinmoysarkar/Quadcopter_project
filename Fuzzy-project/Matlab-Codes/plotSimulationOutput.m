%% author: Mrinmoy Sarkar
% email: msarkar@aggies.ncat.edu

clear all;
close all;

%% noise free conventional PID
data = load('simulationData_noisefree_PID.mat');
t = data.ans.signal1.Time;
temp = find(t>1.5);
th = temp(1);


x_d = data.ans.signal2.Data;
y_d = data.ans.signal1.Data;
z_d = data.ans.signal4.Data;
psi_d = data.ans.signal3.Data;


phi = data.ans.phi.Data;
theta = data.ans.theta.Data;
psi = data.ans.psi.Data;

z = data.ans.z.Data;
y = data.ans.y.Data;
x = data.ans.x.Data;

%% noise free fuzzy PID
data = load('simulationData_noisefree_fuzzy_PID.mat');

z_fz = data.ans.z.Data;
y_fz = data.ans.y.Data;
x_fz = data.ans.x.Data;


%% plot trajectory in xy-plane
figure;
plot(x_d,y_d,'b','linewidth',2);hold on;
plot(x,y,'r--','linewidth',2);
plot(x_fz,y_fz,'k.','linewidth',1);
axis([-1.5 1.5 -1.5 1.5]);
legend('Reference','Output response PID', 'Output response Fuzzy-PID');
xlabel('x in meter');
ylabel('y in meter');
title('Noise free simulation');

%% plot trajectory in xyz-co-ordinate
figure;
plot3(x_d,y_d,z_d,'b','linewidth',2);hold on;
plot3(x,y,z,'r--','linewidth',2);
plot3(x_fz,y_fz,z_fz, 'k.','linewidth',1);
axis([-1.5 1.5 -1.5 1.5 -.1 3]);
legend('Reference','Output response PID', 'Output response Fuzzy-PID');
xlabel('x in meter');
ylabel('y in meter');
zlabel('z in meter');
title('Noise free simulation');

%% noisy conventional PID
data = load('simulationData_noisy_PID.mat');

z = data.ans.z.Data;
y = data.ans.y.Data;
x = data.ans.x.Data;

%% noisy fuzzy PID
data = load('simulationData_noisy_fuzzy_PID.mat');

z_fz = data.ans.z.Data;
y_fz = data.ans.y.Data;
x_fz = data.ans.x.Data;


%% plot trajectory in xy-plane
figure;
plot(x_d,y_d,'b','linewidth',2);hold on;
plot(x,y,'r--','linewidth',2);
plot(x_fz,y_fz,'k.','linewidth',1);
axis([-1.5 1.5 -1.5 1.5]);
legend('Reference','Output response PID', 'Output response Fuzzy-PID');
xlabel('x in meter');
ylabel('y in meter');
title('Noisy simulation');

%% plot trajectory in xyz-co-ordinate
figure;
plot3(x_d,y_d,z_d,'b','linewidth',2);hold on;
plot3(x,y,z,'r--','linewidth',2);
plot3(x_fz,y_fz,z_fz, 'k.','linewidth',1);
axis([-1.5 1.5 -1.5 1.5 -.1 3]);
legend('Reference','Output response PID', 'Output response Fuzzy-PID');
xlabel('x in meter');
ylabel('y in meter');
zlabel('z in meter');
title('Noisy simulation');





