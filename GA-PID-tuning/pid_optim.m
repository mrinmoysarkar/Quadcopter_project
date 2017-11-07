function [J] = pid_optim(x)

dt = 0.01;
t = 0:dt:10;
s = tf('s');

sys = 26.1628/(s^2+14.6211*s);
kp = x(1);
ki = x(2);
kd = x(3);



controller = kp + ki/s + kd * s; 
%step(feedback(sys*controller,1));

e = 1 - step(feedback(sys*controller,1),t);

J = sum(t'.*abs(e)*dt);

end