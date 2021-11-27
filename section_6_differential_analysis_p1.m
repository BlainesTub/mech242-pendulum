%Pendulum Bob Differential Analysis


% Compound Rigid Body Differential Analysis--------------------------

clear all;%Clears all variables that may be stored in the 'workspace'
close all;%Closes all plots that may be open
clc;%Clears command window

syms Q(t) Q0 m_arm m_bob L g b %NEW TERMS----
DQ = diff(Q);
ode = (((1/3)*m_arm*L^2) + (m_bob*L^2))*diff(Q,t,2) + b*L*diff(Q,t,1) +(((1/2)*m_arm) + (m_bob))*g*L*Q; %REWRITE EQUATION---
cond1 = Q(0) == Q0;
cond2 = DQ(0) == 0;
conds = [cond1 cond2];
QSol(t) = dsolve(ode, conds);
QSol = simplify(QSol)

%Answer: (Q0*exp(-(t*(3*b - 3^(1/2)*(3*b^2 - 2*L*g*m_arm^2 - 10*L*g*m_arm*m_bob - 12*L*g*m_bob^2)^(1/2)))/(2*L*(m_arm + 3*m_bob)))*((3*3^(1/2)*b)/(3*b^2 - 2*L*g*m_arm^2 - 10*L*g*m_arm*m_bob - 12*L*g*m_bob^2)^(1/2) + 3))/6 - (Q0*exp(-(t*(3*b + 3^(1/2)*(3*b^2 - 2*L*g*m_arm^2 - 10*L*g*m_arm*m_bob - 12*L*g*m_bob^2)^(1/2)))/(2*L*(m_arm + 3*m_bob)))*(3^(1/2)*b - (3*b^2 - 2*L*g*m_arm^2 - 10*L*g*m_arm*m_bob - 12*L*g*m_bob^2)^(1/2)))/(2*(3*b^2 - 2*L*g*m_arm^2 - 10*L*g*m_arm*m_bob - 12*L*g*m_bob^2)^(1/2))



