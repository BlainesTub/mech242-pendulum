%Matlab code for section 4.3, kinematic analysis of 3 pendulums. LINEAR
%Simple, simple rigid body, and compound. Here are the 3 governing DEs
%Simple Pendulum: Q0*cos((g^(1/2)*t)/L^(1/2))   
%Simple Rigid Body Pendulum: Q0*cos((6^(1/2)*g^(1/2)*t)/(2*L^(1/2)))
%Compound Pendulum: Q0*cos((6^(1/2)*g^(1/2)*t*(m_arm + 2*m_bob)^(1/2)*(m_arm + 3*m_bob)^(1/2))/(L^(1/2)*(2*m_arm + 6*m_bob)))

clear all;%Clears all variables that may be stored in the 'workspace'
close all;%Closes all plots that may be open
clc;%Clears command window

startTime = 0;
endTime = 60;
dT = 0.1;

g = 9.81; %gravity
Q0 = 15; %Initial theta
L = 1 + 0.0762/2; %Length of pendulum + length of bob/2 (length to COM)
m_arm = 0.307;
m_bob = 0.210;

t=[startTime:dT:endTime]';

%4.3 Linear Displacement, Velocity, and Acceleration
% Simple Pendulum
pos_s = [L*sind(Q0*cos((g^(1/2).*t)/L^(1/2))), -L*cosd(Q0*cos((g^(1/2).*t)/L^(1/2)))];
vel_s = diff(pos_s);
accel_s = diff(diff(pos_s));

% Simple Pendulum Rigid Body
pos_rb = [L*sind(Q0*cos((6^(1/2)*g^(1/2)*t)/(2*L^(1/2)))), -L*cosd(Q0*cos((6^(1/2)*g^(1/2)*t)/(2*L^(1/2))))];
vel_rb = diff(pos_s);
accel_rb = diff(diff(pos_s));

% Compound Rigid-Body Pendulum
pos_crb = [L*sind(Q0*cos((6^(1/2)*g^(1/2)*t*(m_arm + 2*m_bob)^(1/2)*(m_arm + 3*m_bob)^(1/2))/(L^(1/2)*(2*m_arm + 6*m_bob)))), -L*cosd(Q0*cos((6^(1/2)*g^(1/2)*t*(m_arm + 2*m_bob)^(1/2)*(m_arm + 3*m_bob)^(1/2))/(L^(1/2)*(2*m_arm + 6*m_bob))))];
vel_crb = diff(pos_s);
accel_crb = diff(diff(pos_s));

% Cartesian Analysis
figure(4);
tiledlayout(3,1)
nexttile
plot(t,pos_s)
title("Simple Pendulum Linear Displacement") %Simple Pendulum, Linear Displacement
hold on
xlabel('time [t]'); ylabel('position [m]');
legend('x-position', 'y-position', 'Location', 'East')

nexttile
plot(t(2:end),vel_s)
title("Simple Pendulum Linear Velocity") % Simple pendulum, linear velocity
hold on
xlabel('time [t]'); ylabel('velocity [m/s]');
legend('x-velocity', 'y-velocity', 'Location', 'East')

nexttile
plot(t(3:end),accel_s)
title("Simple Pendulum Linear Acceleration") % Simple pendulum, linear Acceleration
hold on
xlabel('time [t]'); ylabel('acceleration [m/s^2]');
legend('x-velocity', 'y-acceleration', 'Location', 'East')

% Simple Pendulum, Rigid body
figure(5);
tiledlayout(3,1)
nexttile
plot(t,pos_rb)
title("Rigid-Body Simple Pendulum Linear Displacement") %Rigid-Body Simple Pendulum, Linear Displacement
hold on
xlabel('time [t]'); ylabel('position [m]');
legend('x-position', 'y-position', 'Location', 'East')
nexttile
plot(t(2:end),vel_rb)
title("Rigid-Body Simple Pendulum Linear Velocity") % Rigid-Body Simple pendulum, linear velocity
hold on
xlabel('time [t]'); ylabel('velocity [m/s]');
legend('x-velocity', 'y-velocity', 'Location', 'East')
nexttile
plot(t(3:end),accel_rb)
title("Rigid-Body Simple Pendulum Linear Acceleration") % Rigid-Body Simple pendulum, linear Acceleration
hold on
xlabel('time [t]'); ylabel('acceleration [m/s^2]');
legend('x-velocity', 'y-acceleration', 'Location', 'East')

% Simple Pendulum, Compound-Rigid body
figure(6);
tiledlayout(3,1)
nexttile
plot(t,pos_crb)
title("Compound-Rigid-Body Pendulum Linear Displacement") %Compound-Rigid-Body Pendulum, Linear Displacement
hold on
xlabel('time [t]'); ylabel('position [m]');
legend('x-position', 'y-position', 'Location', 'East')
nexttile
plot(t(2:end),vel_crb)
title("Compound-Rigid-Body Pendulum Velocity") % Compound-Rigid-Body Pendulum pendulum, linear velocity
hold on
xlabel('time [t]'); ylabel('velocity [m/s]');
legend('x-velocity', 'y-velocity', 'Location', 'East')
nexttile
plot(t(3:end),accel_crb)
title("Compound-Rigid-Body Pendulum Linear Acceleration") % Compound-Rigid-Body Pendulum, linear Acceleration
hold on
xlabel('time [t]'); ylabel('acceleration [m/s^2]');
legend('x-velocity', 'y-acceleration', 'Location', 'East')