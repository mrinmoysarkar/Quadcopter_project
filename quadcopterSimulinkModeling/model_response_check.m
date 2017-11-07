clear all;
s = tf('s');

sys = 26.1628/(s^2+14.6211*s);
kp = 1.8668;
ki = 3.7237;
kd = 0.2340;

pid = kp + ki/s + kd*s;

tf = feedback(sys,pid);
step(sys,10)
