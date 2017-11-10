clear all;
close all;

data = load('simulationData.mat');
t = data.ans.signal1.Time;


x_d = data.ans.signal2.Data;
y_d = data.ans.signal1.Data;
z_d = data.ans.signal4.Data;
psi_d = data.ans.signal3.Data;


phi = data.ans.signal5.Data;
theta = data.ans.signal6.Data;
psi = data.ans.signal7.Data;

z = data.ans.z.Data;
y = data.ans.y.Data;
x = data.ans.x.Data;


% plot trajectory in xy-plane
figure;
plot(x_d,y_d,'b','linewidth',5);hold on;
plot(x,y,'ro','linewidth',1);
axis([-1.5 1.5 -1.5 1.5]);
legend('Reference','Output response');
xlabel('x in meter');
ylabel('y in meter')

%plot trajectory in xyz-co-ordinate
figure;
plot3(x_d,y_d,z_d,'b','linewidth',5);hold on;
plot3(x,y,z,'ro','linewidth',1);
axis([-1.5 1.5 -1.5 1.5 -.1 3]);
legend('Reference','Output response');
xlabel('x in meter');
ylabel('y in meter');
zlabel('z in meter');