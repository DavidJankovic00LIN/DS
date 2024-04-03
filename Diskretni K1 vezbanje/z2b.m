b=[2 4];
a=[1 -0.5 0.25];

delta_impuls[1 zeros(1,299)];

n=0:299;

i=filter(b,a,delta_impuls);
subplot(2,1,1),stem(n,i),title('Jedinicni odziv racunat po definiciji');