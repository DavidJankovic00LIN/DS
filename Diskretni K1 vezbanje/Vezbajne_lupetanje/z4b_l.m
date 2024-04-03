fs=4800;
fp=2400;
ap=1;
as=50;
fsr=11200;

%minimalni red IRR filtra

[n1,Wn1]=cheblord(fp/(fsr/2),fs/(fsr/2),ap,as);
[b1,a1]=cheby1(n1,ap,Wn1,'low');
freqz(b1,a1,1024,fsr);

n=0:1023;
x=3*cos(2*pi*(1300/fs)*n)+4*cos(2*pi*(2500/fs)*n)+2*cos(2*pi*(5000/fs)*n);

figure(2,1,1),plot(n,x),title('Pobuda x');
y=filter(b1,a1,x);
subplot(2,1,2),plot(1:numel(y),y),title('Odziv na NF IRR filtru ')