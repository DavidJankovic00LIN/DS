
%deo pod a
% duzina sekvence interval je od -5 do 5
L=11; 

h_fun1=[ones(1,4)zeros(1,7)];
h_fun2=[zeros (1,6) ones(1,4)];
h_fun=h_fun1+h_fun2;
%osa za crtanje signala 
n= -5:5;
stem(n,h_fun),title('Dikretna hevisajdova funkcija');

%kraj dela pod a

%deo pod b

n_b=-50:50;

x=((3/4).^n_b)*sin(2*pi*0.1*n_b);
figure;
stem(n_b,x),title('Funkcija xb');

%kraj dela pod b

%deo pod c

n_c=-7:5;
f_fun_c=[ones(1,7), zeros(1,6)];
delta1_c=[zeros(1,6), 1, zeros(1,6)];
delta2_c=[zeros(1,10), 1, zeros(1,2)];
x_c=delta1_c+delta2_c+f_fun_c;
figure;
stem(n_c,x_c),title('Odizv funckije pod C');