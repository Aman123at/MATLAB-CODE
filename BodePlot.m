num = [2];
denum = [1 1];
G = tf(num,denum);
bode(G)
grid on;
