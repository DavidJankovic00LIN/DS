N=128;
n=0:N-1;

e=10000*cos(2*pi*(35.5/128)*n)+100*cos(2*pi*(40/128)*n)+100*cos(2*pi*(60/128)*n);

% triugaoni balkmanov kajzerov

w=triang(N);
et=e.*w;
Et=2*abs(fft(et))/N;
Et=20*log10(Et);
subplot(3,1,1),stem(n,Et),title('Trougaoni prozor');

w=blackman(N);
eb=e.*w;
Eb=2*abs(fft(eb))/N;
Eb=20*log10(Eb);
subplot(3,1,2),stem(n,Et),title('blackmanov prozor');

w=kaiser(N);
ek=e.*w;
Ek=2*abs(fft(ek))/N;
Ek=20*log10(Ek);
subplot(3,1,3),stem(n,Ek),title('Kajzerob prozor');

%pravougaoni prozor ??

Ep=2*abs(fft(e))/N;
Ep=20*log10(Ep);
figure;
stem(n,Ep),title('pravougaoni prozor');

