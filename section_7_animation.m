clear all;%Clears all variables that may be stored in the 'workspace'
close all;%Closes all plots that may be open
clc;%Clears command window

startTime = 0;
endTime = 60;
dT = 0.1;
t=[startTime:dT:endTime]';

g = 9.81; %gravity
Q0 = 15; %Initial theta
L = 1 + 0.0762/2; %Length of pendulum + length of bob/2 (length to COM)
m_arm = 0.307;
m_bob = 0.210;
w = 0.02;
w_b = 0.1;
h_b = 0.1;
% Compound Rigid-Body Pendulum
theta_crb = Q0*cos((6^(1/2)*g^(1/2)*t*(m_arm + 2*m_bob)^(1/2)*(m_arm + 3*m_bob)^(1/2))/(L^(1/2)*(2*m_arm + 6*m_bob)));
pos_crb = [L*sind(theta_crb), -L*cosd(theta_crb)];
vel_crb = diff(pos_crb)/dT;
accel_crb = diff(diff(pos_crb))/dT;
%Defining vertex positions
V1i = [w;0];
V2i = [-w;0];
V3i = [-w;-L];
V4i = [w;-L];
V5i = [w_b; -L];
V6i = [-w_b; -L];
V7i = [w_b; -L-h_b];
V8i = [-w_b;-L-h_b];
%Animating
for i=1:1:600
    [i, theta_crb(i)]
    R = [cosd(theta_crb(i)) -sind(theta_crb(i)); sind(theta_crb(i)) cosd(theta_crb(i))];
    V1 = R*V1i; V2 = R*V2i; V3 = R*V3i; V4 = R*V4i; V5 = R*V5i; V6 = R*V6i; V7 = R*V7i; V8 = R*V8i;
    P = [V1,V2,V3, V5, V7, V8, V6, V4,V1]; 
    Pendulum=fill(P(1,:),P(2,:),'r');
    axis equal; axis([-.5 .5 -1.5 0.2]);
    pause(0.1)
    set(Pendulum,'visible','off')
end