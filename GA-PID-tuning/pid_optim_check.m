clear all;

close all;

s = tf('s');

sys = 26.1628/(s^2+14.6211*s);
kp = 2.231;
ki = 2.9996;
kd = 0.5;

controller = kp + ki/s + kd * s; 
step(feedback(sys*controller,1),5);