%use minreal function to perform pole/zero cancelletion
clear 
clc
close all

%TF in polynomial format
num1 = [1 3 2];
den1 = [1 2 -11 -12];

G1 = tf(num1,den1);

roots(num1)
roots(den1)

figure 
pzmap(G1)

G1minimal = minreal(G1)
figure
pzmap(G1minimal)

%use zpk to make a dynamic system

z2 = [-2 -1];
p2 = [3 -4 -1];
k2 = [1];
G2 = zpk(z2,p2,k2);

figure 
pzmap(G2)

G2minimal = minreal(G2)
figure 
pzmap(G2minimal)

%composing TFs in series

z3 = [-1];
p3 = [-2 -3];
k3 = [1];
G3 = zpk(z3,p3,k3);

z4 = [-2];
p4 = [-1 -3];
k4 = [1];
G4 = zpk(z4,p4,k4);

T1 = G4*G3;
T1minimal = minreal(T1)

%composing TFs in feedback
T2 = G3/(1+G3);
T2miminal = minreal(T2)

%numerical roundoff

num5 = [1 3.003 2.006];
den5 = [1 8.001 19.007 12.012];
G5 = tf(num5,den5)

figure
pzmap(G5)

tol = 0.001

G5minimal = minreal(G5,tol)

