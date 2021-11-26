%Matlab code for section 4, kinematic analysis of 3 pendulums. 
%Simple, simple rigid body, and compound. Here are the 3 governing DEs
%Simple Pendulum: Q0*cos((g^(1/2)*t)/L^(1/2))   
%Simple Rigid Body Pendulum: Q0*cos((6^(1/2)*g^(1/2)*t)/(2*L^(1/2)))
%Compound Pendulum: Q0*cos((6^(1/2)*g^(1/2)*t*(m_arm + 2*m_bob)^(1/2)*(m_arm + 3*m_bob)^(1/2))/(L^(1/2)*(2*m_arm + 6*m_bob)))

startTime = 0;
endTime = 60;
dT = 0.1;

g = 9.81; %gravity
Q0 = 15; %Initial theta
L = 1; %Length of pendulum

t=[startTime:dT:endTime]';

theta = Q0*cos((g^(1/2)*t)/L^(1/2));
omega = diff(theta);
alpha = diff(diff(theta));

figure(1); %Simple Pendulum
plot(t,theta(1:end))
hold on
title("Simple Pendulum")
legend('Location', 'Southwest')
xlabel('time [t]'); ylabel('theta [\theta]');

figure(2); %Simple Pendulum Omega
plot(t(2:end),omega) %Must re-index time to accomodate for index lost during differentiation.
hold on
title("Simple Pendulum \omega")
legend('Location', 'Southwest')
xlabel('time [t]'); ylabel('angular velocity [\omega]');


figure(3); %Simple Pendulum Alpha
plot(t(3:end),alpha) %Must re-index time to accomodate for index lost during differentiation.
hold on
title("Simple Pendulum \alpha")
legend('Location', 'Southwest')
xlabel('time [t]'); ylabel('angular accelerationi [\alpha]');