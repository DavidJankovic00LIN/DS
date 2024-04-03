N=128;
n=0:N-1;
e=1100*cos(2*pi*(34.5/128)*n)+40*cos(2*pi*(40/128)*n);

%hannov,trougaoni i blakman prozor
w=triang(N)';'%
e1=e.*w;
E1=2*abs(fft(e1))/N;
E1=20*log10(E1);
subpot(3,1,1),stem(n,E1),title('Trougaoni prozor');

w=hanning(N);
e2=e.*w;
E2=2*abs(fft(e2))/N;
E4=20*log10(E2);
subpot(3,1,2),stem(n,E2),title('Hanov prozor');

w=blackman(N)';'
e3=e.*w;
E3=2*abs(fft(e3))/N;
E4=20*log10(E3);
subplot(3,1,3),stem(n,E3),title('Blakmanov prozor');
