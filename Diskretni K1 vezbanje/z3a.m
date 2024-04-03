N=128;
n=0:N-1;

e=1200*cos(2*pi*(34.5/128)*n)+50*cos(2*pi*(40/128)*n);


%trougaoni prozor
w=triang(N)';
e3=e.*w;
E3=2*abs(fft(e3))/N;
E3=20*log10(E3);
subplot(3,1,1),stem(n,E3);
title('Trougaoni prozor');

%hanov prozor
w=hanning(N)';
e4=e.*w;
E4=2*abs(fft(e4))/N;
E4=20*log10(E4);
subplot(3,1,2),stem(n,E4);
title('Hanov prozor');

%hamingov prozor
w=hamming(N)';
e5=e.*w;
E5=2*abs(fft(e5))/N;
E4=20*log10(E5);
subplot(3,1,3),stem(n,E5);
title('Hamingov prozor');

