% clear all;
% close all;
% [t] = sim ("czasowe2");
% 
% figure(1);
% grid on;
% hold on;
% plot(t.ru);
% hold on;
% xlabel('t [s]');
% ylabel('y(t)');
% title('bieguny rzeczywiste, ujemne');
% h1 = legend('$K(s) = \frac{1}{s^2+5s+6}$');
% set(h1 ,'Interpreter','latex');
% 
% figure(2);
% grid on;
% hold on;
% plot(t.rp);
% xlabel('t [s]');
% ylabel('y(t)');
% title('bieguny rzeczywiste o przeciwnych znakach');
% h2 = legend('$K(s) = \frac{1}{s^2-s-2}$');
% set(h2 ,'Interpreter','latex');


clear all;
close all;
[t] = sim ("czasowe2");

figure(3);
grid on;
hold on;
plot(t.zu);
hold on;

x=[11,18,24,30,36,41,46,51,55,59];
y=[1.85404,1.60622,1.45355,1.33074,1.22172,1.17674,1.12868,1.08109,1.06927,1.04934];

plot(t.tout, 1.509*exp(-0.04563*t.tout)+0.9424);

% x=[16,27,38,49,60]';
% y=[1.83457,1.62035,1.45525,1.32852,1.23308].';
% g = fittype('a-b*exp(-c*x)');
% f0 = fit(x,y,g,'StartPoint',[[ones(size(x)), -exp(-x)]\y; 1]);
% xx = linspace(1,8,50);
% plot(x,y,'o',xx,f0(xx),'r-');

xlabel('t [s]');
ylabel('y(t)');
title('bieguny zespolone, ujemna czesc rzeczywista');
h3 = legend('$K(s) = \frac{1}{s^2+0,1s+1}$');
set(h3 ,'Interpreter','latex');


% figure(4);
% grid on;
% hold on;
% plot(t.zd);
% xlabel('t [s]');
% ylabel('y(t)');
% title('bieguny zespolone, dodatnia czesc rzeczywista');
% h4 = legend('$K(s) = \frac{1}{s^2-0,1s+1}$');
% set(h4 ,'Interpreter','latex');