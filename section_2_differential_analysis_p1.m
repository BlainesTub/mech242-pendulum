%Pendulum Bob Differential Analysis
%{
clear all;%Clears all variables that may be stored in the 'workspace'
close all;%Closes all plots that may be open
clc;%Clears command window

syms Q(t) Q0 m L g
DQ = diff(Q);
ode = m*L^2*diff(Q,t,2)+m*g*L*Q;
cond1 = Q(0) == Q0;
cond2 = DQ(0) == 0;
conds = [cond1 cond2];
QSol(t) = dsolve(ode, conds);
QSol = simplify(QSol);
%}

%Simple Rigid Body Differential Analysis
%{
clear all;%Clears all variables that may be stored in the 'workspace'
close all;%Closes all plots that may be open
clc;%Clears command window

syms Q(t) Q0 m L g
DQ = diff(Q);
ode = (1/3)*m*L^2*diff(Q,t,2)+m*g*L*(1/2)*Q;
cond1 = Q(0) == Q0;
cond2 = DQ(0) == 0;
conds = [cond1 cond2];
QSol(t) = dsolve(ode, conds)
QSol = simplify(QSol)
%}

%Compound Rigid Body Differential Analysis

clear all;%Clears all variables that may be stored in the 'workspace'
close all;%Closes all plots that may be open
clc;%Clears command window

syms Q(t) Q0 m_arm m_bob L g
DQ = diff(Q);
ode = (((1/3)*m_arm*L^2) + (m_bob*L^2))*diff(Q,t,2)+(((1/2)*m_arm) + (m_bob))*g*L*Q;
cond1 = Q(0) == Q0;
cond2 = DQ(0) == 0;
conds = [cond1 cond2];
QSol(t) = dsolve(ode, conds);
QSol = simplify(QSol);

