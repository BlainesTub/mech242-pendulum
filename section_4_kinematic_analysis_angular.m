%Matlab code for section 4, kinematic analysis of 3 pendulums. 
%Simple, simple rigid body, and compound. Here are the 3 governing DEs
%Simple Pendulum: Q0*cos((g^(1/2)*t)/L^(1/2))   
%Simple Rigid Body Pendulum: Q0*cos((6^(1/2)*g^(1/2)*t)/(2*L^(1/2)))
%Compound Pendulum: Q0*cos((6^(1/2)*g^(1/2)*t*(m_arm + 2*m_bob)^(1/2)*(m_arm + 3*m_bob)^(1/2))/(L^(1/2)*(2*m_arm + 6*m_bob)))

clear all;%Clears all variables that may be stored in the 'workspace'
close all;%Closes all plots that may be open
clc;%Clears command window

g = 9.81; %gravity
Q0 = 15; %Initial theta
L = 1 + 0.0762/2; %Length of pendulum + length of bob/2 (length to COM)
m_arm = 0.307;
m_bob = 0.210;

startTime = 0;
endTime = 60;
dT = 0.1;
t=[startTime:dT:endTime]';




% 4.2 Angular Displacement, Velocity, and Acceleration
% Simple pendulum
theta_s = Q0*cos((g^(1/2)*t)/L^(1/2));
omega_s = diff(theta_s)/dT;
alpha_s = diff(diff(theta_s))/dT;
% Rigid Body
theta_rb = Q0*cos((6^(1/2)*g^(1/2)*t)/(2*L^(1/2)));
omega_rb = diff(theta_rb)/dT;
alpha_rb = diff(diff(theta_rb))/dT;
% Compound Rigid Body
theta_crb = Q0*cos((6^(1/2)*g^(1/2)*t*(m_arm + 2*m_bob)^(1/2)*(m_arm + 3*m_bob)^(1/2))/(L^(1/2)*(2*m_arm + 6*m_bob)));
omega_crb = diff(theta_crb)/dT;
alpha_crb = diff(diff(theta_crb))/dT;

%Generate Simple Pendulum Graphs. theta, omega, alpha
figure(1);
tiledlayout(3,1)
nexttile %Theta
plot(t,theta_s(1:end))
hold on
title("Simple Pendulum \theta")
xlabel('time [t]'); ylabel('theta [\theta]');

nexttile %Omega
plot(t(2:end),omega_s) %Must re-index time to accomodate for index lost during differentiation.
hold on
title("Simple Pendulum \omega")
xlabel('time [t]'); ylabel('angular velocity [\omega]');

nexttile
%Alpha
plot(t(3:end),alpha_s) %Must re-index time to accomodate for index lost during differentiation.
hold on
title("Simple Pendulum \alpha")
xlabel('time [t]'); ylabel('angular accelerationi [\alpha]');
saveas(gcf, '4.2-simple-pendulum.png')


%Generate Rigid-Body Pendulum Graphs. theta, omega, alpha
figure(2);
tiledlayout(3,1)
nexttile %Theta
plot(t,theta_rb(1:end))
hold on
title("Rigid-Body Pendulum \theta")
xlabel('time [t]'); ylabel('theta [\theta]');

nexttile %Omega
plot(t(2:end),omega_rb) %Must re-index time to accomodate for index lost during differentiation.
hold on
title("Rigid-Body Pendulum \omega")
xlabel('time [t]'); ylabel('angular velocity [\omega]');

nexttile
%Alpha
plot(t(3:end),alpha_rb) %Must re-index time to accomodate for index lost during differentiation.
hold on
title("Rigid-Body Pendulum \alpha")
xlabel('time [t]'); ylabel('angular accelerationi [\alpha]');
saveas(gcf, '4.2-rigid-pendulum.png')

%Generate Compound-Rigid-Body Pendulum Graphs. theta, omega, alpha
figure(3);
tiledlayout(3,1)
nexttile %Theta
plot(t,theta_crb(1:end))
hold on
title("Compound-Rigid-Body Pendulum \theta")
xlabel('time [t]'); ylabel('theta [\theta]');

nexttile %Omega
plot(t(2:end),omega_crb) %Must re-index time to accomodate for index lost during differentiation.
hold on
title("Compound-Rigid-Body Pendulum \omega")
xlabel('time [t]'); ylabel('angular velocity [\omega]');

nexttile
%Alpha
plot(t(3:end),alpha_crb) %Must re-index time to accomodate for index lost during differentiation.
hold on
title("Compound-Rigid-Body Pendulum \alpha")
xlabel('time [t]'); ylabel('angular accelerationi [\alpha]');
saveas(gcf, '4.2-compound-.png')