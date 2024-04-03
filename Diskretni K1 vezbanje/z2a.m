b=[3 2];
a=[1 -2.53];
n=0:299;
delta_impuls=[1 zeros(1, 299)];

i=filter(b,a,delta_impuls);

figure
subplot(2,1,1),stem(n,i),title('Jedinicni odziv racunat po definicijij');
