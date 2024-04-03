fk=[1000 2000 3000];
Tmax=0.02;

tk=0:0.00001:Tmax;
Sk=7*cos(2*pi*fk(1)*tk)+5*cos(2*pi*fk(2)*tk)+4*cos(2*pi*fk(3)*tk);
fk_srednje=mean(fk);
fs=3*fk_srednje;
Ts=1/fs;
td=0:Ts:Tmax;
Sd=7*cos(2*pi*fk(1)*td)+5*cos(2*pi*fk(2)*td)+4*cos(2*pi*fk(3)*td);

subplot(2,1,1),plot(tk,Sk,'k');
title('kontinualni signal');
xlabel('vreme');
subplot(2,1,2),stem(0:length(td)-1,Sd);
title('Diskretni signal');
xlabel('Odbirci');