A = [1 2; 3 4]
B = [1; 2]
C = [0 1]
D = [0]

tf(ss(A,B,C,D))
rlocus(tf(ss(A,B,C,D)))
hold on
figure
nyquistplot(tf(ss(A,B,C,D)))
