%% author: Mrinmoy Sarkar
% email: msarkar@aggies.ncat.edu

clear all;
close all;

data = load('simulationData.mat');
t = data.ans.signal1.Time;

x_d = data.ans.signal2.Data;
y_d = data.ans.signal1.Data;

y = data.ans.y.Data;
x = data.ans.x.Data;

%% error calculation
error = sum(abs(sqrt(x_d.^2+y_d.^2)-sqrt(x.^2+y.^2)))/length(x_d);
n=[0 0.05 0.1 0.15 0.2 0.25 0.3];
pid = [0.0943 0.1062 0.1450 0.1790 0.1917 0.2147 0.2434];
fpid = [0.1188 0.1287 0.1353 0.1393 0.1587 0.1788 0.1994];

plot(n,pid);
hold on;
plot(n,fpid);
legend('pid error','fuzzy pid error')