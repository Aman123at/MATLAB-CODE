clear,clc
syms s w

G = 1/((s+2)*(s+4)*(s+6));

G_w = subs(G,s,j*w);

W = [-100: .01:100];

Nyq = eval(subs(G_w,w,W));

x = real(Nyq);
y = imag(Nyq);

plot(x,y);
grid

