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
     y=[5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
5
-5
 ];

     plot(x,y,'om'); 
     axis([0 70 -10 10])
     hold on; 
%     Define the parameters of your pendulum, mass, inertia,
%     mbob=0.210;
%     mrod=0.307;
%     lbob=1.0381;
%     lrod=1;
%     Irod=1/12*m*lbob^2;
%     Ibob=m*lrod;
% gravity, location of centre of gravity, and determine the 
% coefficients a and c.
% Assume a value for b (small, b<0.02)Theta=[]; T=[];
%  for i=0:0.1:64t=i; T=[T t];
% theta= %Write solution of your differential equation 
%  Theta=[Theta theta];
%  end
%  plot(T,Theta)