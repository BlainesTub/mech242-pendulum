%Matlab code for section 4, kinematic analysis of 3 pendulums. 
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
L = 0.711; %Length of pendulum + length of bob/2 (length to COM)
m_arm = 0.307;
m_bob = 0.210;
b = 0.0076;

t=[startTime:dT:endTime]';

% Compound Rigid Body
theta_crb = (Q0*exp(-(t*(3*b - 3^(1/2)*(3*b^2 - 2*L*g*m_arm^2 - 10*L*g*m_arm*m_bob - 12*L*g*m_bob^2)^(1/2)))/(2*L*(m_arm + 3*m_bob)))*((3*3^(1/2)*b)/(3*b^2 - 2*L*g*m_arm^2 - 10*L*g*m_arm*m_bob - 12*L*g*m_bob^2)^(1/2) + 3))/6 - (Q0*exp(-(t*(3*b + 3^(1/2)*(3*b^2 - 2*L*g*m_arm^2 - 10*L*g*m_arm*m_bob - 12*L*g*m_bob^2)^(1/2)))/(2*L*(m_arm + 3*m_bob)))*(3^(1/2)*b - (3*b^2 - 2*L*g*m_arm^2 - 10*L*g*m_arm*m_bob - 12*L*g*m_bob^2)^(1/2)))/(2*(3*b^2 - 2*L*g*m_arm^2 - 10*L*g*m_arm*m_bob - 12*L*g*m_bob^2)^(1/2));
omega_crb = diff(theta_crb)/dT;
alpha_crb = diff(diff(theta_crb)/dT)/dT;

%Generate Compound-Rigid-Body Pendulum Graphs. theta, omega, alpha
figure(3);

tiledlayout(3,1)
nexttile %Theta
plot(t,theta_crb(1:end))     
hold on
title("Compound-Rigid-Body Pendulum \theta")
xlabel('time [t]'); ylabel('theta [\theta]');

x=[0.34
0.39
2.19
3.20
4.06
5.05
5.91
6.93
7.79
8.78
9.63
10.62
11.51
12.51
13.36
14.34
15.22
16.22
17.10
18.08
18.94
19.95
20.81
21.81
22.66
23.68
24.51
25.53
26.40
27.39
28.23
29.25
30.11
31.11
31.96
32.97
33.84
34.82
35.68
36.69
37.52
38.55
39.40
40.39
41.24
42.25
43.10
44.11
44.96
45.97
46.80
47.84
48.67
49.70
50.53
51.56
52.41
53.42
54.28
55.30
56.09
57.15
57.97
58.98
59.81
60.85
61.67
62.72
63.52
64.56
65.39
66.43
];
     y=[
5
-5
-5
5
5
-5
-5
5
5
-5
-5
5
5
-5
-5
5
5
-5
-5
5
5
-5
-5
5
5
-5
-5
5
5
-5
-5
5
5
-5
-5
5
5
-5
-5
5
5
-5
-5
5
5
-5
-5
5
5
-5
-5
5
5
-5
-5
5
5
-5
-5
5
5
-5
-5
5
5
-5
-5
5
5
-5
-5
5
 ];

     plot(x,y,'om'); 
     axis([0 60 -10 10])
