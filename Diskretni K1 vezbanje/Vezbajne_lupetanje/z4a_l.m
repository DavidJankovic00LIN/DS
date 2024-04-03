M=24;
Fs=11520;
fn=4000;
hami=hamming(M);
N=M-1;
b=fir(N,fn/(fs/2),hami);
N_fft=1024;
B=fft(b,N_fft);

Ba=abs(B(1:N_fft/2));
F=angle(B(1:N_fft/2));

n=0:N_fft/2-1;
f=n*(fs/2)/(N_fft/2-1);

subplot(2,1,1),plot(f,Ba),title('VF filtar');

subplot(2,1,2),plot(f,F),title('Fazna karakteristika');

n=0:1023;
x=cos(2*pi*(1000/11200)*n)+cos(2*pi*(3000/11200)*n)+cos(2*pi*(5000/11200)*n);

figure;
subplot(2,1,1)plot(n,x),title('Pobuda x');
X=fft(x,N_fft);
y=ifft(X.*B);
subplot(2,1,2),plot(1:numel(y),y),title('Odziv na LP');