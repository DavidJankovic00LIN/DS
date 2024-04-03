b=[3 5];
a=[2 0.7 -0.33];

delta_impuls[1 zeros(1,299)];

n=0:299;

i=filter(b,a,delta_impuls);
subplot(2,1,1),stem(n,i),title('Jedinicni odziv racunat po definiciji');

