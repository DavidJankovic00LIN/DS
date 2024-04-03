%a
L=16;
h_fun1=[zeros(1 6) ones(1 10)];
h_fun2=[zeros(1 2) ones(1 14)];
h_fun_a=h_fun1-h_fun2;
n= -5:10;
stem(n,h_fun_a),title('Diskretna hevisajdova funkcija');
figure;


%b
n_b=0:49;
x_b=5*sin(2*pi*0.02*n);
stem(n,x_b),title('doziv funkcije x_b');


%c 

n_c=-4:10;

dir_f=[zeros(1 5) 1.5 zeros(1 9)];
h_fun3=[onse(1 6) zeros(1 8)];

h_fun_c=h_fun3+dir_f;
stem(n,h_fun_c),title('Funkcija c');
