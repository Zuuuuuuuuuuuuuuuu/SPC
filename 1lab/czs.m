clear all;
close all;
[t] = sim ("czasowe");

figure(1);
grid on;
hold on;
plot(t.ru);
hold on;
xlabel('t [s]');
ylabel('y(t)');
title('bieguny rzeczywiste, ujemne');
h1 = legend('$K(s) = \frac{1}{s^2+5s+6}$');
set(h1 ,'Interpreter','latex');

figure(2);
grid on;
hold on;
plot(t.rp);
xlabel('t [s]');
ylabel('y(t)');
title('bieguny rzeczywiste o przeciwnych znakach');
h2 = legend('$K(s) = \frac{1}{s^2-s-2}$');
set(h2 ,'Interpreter','latex');

figure(3);
grid on;
hold on;
plot(t.zu);
hold on;

x=[16,27,38,49,60]';
y=[1.83457,1.62035,1.45525,1.32852,1.23308].';
g = fittype('a-b*exp(-c*x)');
f0 = fit(x,y,g,'StartPoint',[[ones(size(x)), -exp(-x)]\y; 1]);
xx = linspace(1,8,50);
plot(x,y,'o',xx,f0(xx),'r-');

xlabel('t [s]');
ylabel('y(t)');
title('bieguny zespolone, ujemna czesc rzeczywista');
h3 = legend('$K(s) = \frac{1}{s^2+0,1s+1}$');
set(h3 ,'Interpreter','latex');

figure(4);
grid on;
hold on;
plot(t.zd);
xlabel('t [s]');
ylabel('y(t)');
title('bieguny zespolone, dodatnia czesc rzeczywista');
h4 = legend('$K(s) = \frac{1}{s^2-0,1s+1}$');
set(h4 ,'Interpreter','latex');