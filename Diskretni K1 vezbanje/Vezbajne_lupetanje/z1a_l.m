fk=[1100 2350 3350];
Tmax=0.02;

tk=0:0.00001:Tmax;
Sk=6*cos(2*pi*fk(1)*tk)+3*cos(2*pi*fk(2)*tk)+8*cos(2*pi*fk(3)*tk);
fk_minimum=min(fk);
%cetri puta veca od minimane vrednosti
fs=4*fk_minimum;
Ts=1/fs;
td=0:Ts:Tmax;

Sd=6*cos(2*pi*fk(1)*td)+3*cos(2*pi*fk(2)*td)+8*cos(2*pi*fk(3)*td);


subplot(2,1,1),plot(tk,Sk,'k');
title('Kontiualni signal');
xlabel('vreme');
subplot(2,1,2),stem(0:length(td)-1,Sd);
title('Diskretni signal');
xlabel('Odbirci');

