M=25;
fs=11520;
fn=[2000 4000];
hami=hamming(M);
N=M-1;
b=fir1(N,fn/(fs/2),hami);
N_fft=1024;
B=fft(b,N_fft);

Ba=abs(B(1:N_fft/2));
F=angle(B(1:N_fft/2));
n=0:N_fft/2-1;
f=n*(fs/2)/(N_fft/2-1);

subplot(3,1,1),plot(f,Ba),title('PO filtar Hemingov prozor');
subplot(3,1,2),plot(f,20*log10(Ba)),title('PO filtar - amplituda u decibelima');
subplot(3,1,3),plot(f,F),title('Fazna karakteristika');

n=0:1023;
x=9*cos(2*pi*1300/fs*n)+3*cos(2*pi*3000/fs*n)+2*cos(2*pi*5000/fs*n);
figure
subplot(2,1,1),plot(n,x),title('Pobuda x');

X=fft(x,N_fft);
y=ifft(X.*B);
subplot(2,1,2),plot(1:numel(y),y),title('Odziv na Lp');