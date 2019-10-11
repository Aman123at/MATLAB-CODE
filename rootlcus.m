figure
hold on
%pause(3)
for k=0.1:0.1:2
    Delta = [1 2 k];
    poles = roots(Delta);
    
    plot(real(poles), imag(poles),'rx');
    title(['k= ',num2str(k)])
    axis([-2 0 -1 1])
    grid on
   % pause(0.5)
    
end


G1_num = [1];
G1_den = [1 2 0];

G1 = tf(G1_num,G1_den)

figure
rlocus(G1)

%Example
G6_num = [1 3];
G6_den = [1 8 1 -138 -232];
%roots(G6_den);
G6 = tf(G6_num,G6_den)

figure 
rlocus(G6)

%Example 
%use zpk to create the object

z7 = [-2];
p7 = [0 -5-3*i -5+3*i];
k7 = 1;

G7 = zpk(z7,p7,k7);

figure 
rlocus(G7)





