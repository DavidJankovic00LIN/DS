n=0:299;
a=[0.3 0.6 0.3];
b=[1 0.2 0.7 0.3];

delta_impuls=[1 zeros(1,299)];
i=filter(b,a,delta_impuls);
stem(n,i),title('Jedinicni odziv ranunat po definiciji');
