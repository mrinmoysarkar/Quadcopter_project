clear all;

close all;

s = tf('s');

sys = 26.1628/(s^2+14.6211*s);
kp = 355.056;
ki = 499.993;
kd = 24.935;

controller = kp + ki/s + kd * s; 
step(feedback(sys*controller,1),5);