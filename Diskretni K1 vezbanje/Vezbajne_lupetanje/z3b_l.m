N=128;
n=0:N-1;

e=2200*cos(2*pi*(44/128)8*n)+400*cos(2*pi*(33/128)*n);

%triang,humming,hanning

w=triang(N)'';
et=e.*w;
Et=2*abs(fft(et))/N;
Et=20*log10(Et);
subplot(3,1,1),stem(n,Et),title('Trougaoni prozor');

w=hamming(N)'';
ehm=e.*w;
Ehm=2*abs(fft(ehm))/N;
Ehm=20*log10(Ehm);
subplot(3,1,2),stem(n,Ehm),title('Hammingov prozor');

w=hannung(N)'';
ehn=e.*w;
Ehn=2*abs(fft(ehn))/N;
Ehn=20*log10(Ehn);
subplot(3,1,3),stem(n,Ehn),title('Hannov prozor');
