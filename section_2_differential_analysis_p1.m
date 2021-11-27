%Pendulum Bob Differential Analysis


% Compound Rigid Body Differential Analysis--------------------------

clear all;%Clears all variables that may be stored in the 'workspace'
close all;%Closes all plots that may be open
clc;%Clears command window

syms Q(t) Q0 m_arm m_bob L g %NEW TERMS----
DQ = diff(Q);
ode = (((1/3)*m_arm*L^2) + (m_bob*L^2))*diff(Q,t,2)+(((1/2)*m_arm) + (m_bob))*g*L*Q; %REWRITE EQUATION---
cond1 = Q(0) == Q0;
cond2 = DQ(0) == 0;
conds = [cond1 cond2];
QSol(t) = dsolve(ode, conds);
QSol = simplify(QSol)

%Answer:
%Q0*cos((6^(1/2)*g^(1/2)*t*(m_arm + 2*m_bob)^(1/2)*(m_arm + 3*m_bob)^(1/2))/(L^(1/2)*(2*m_arm + 6*m_bob)))



