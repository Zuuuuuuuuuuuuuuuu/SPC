clear all;
close all;

[t]=sim("czestotl");

figure(1);
hold on;
grid on;
subplot(1,3,1);
plot(t.w1, 'go');
hold on;
plot(t.sin1, 'rx');   %zmienic kolory
% xlabel('t [s]');
% ylabel('y(t)');
title('w=0.1');

subplot(1,3,2);
plot(t.w2);
hold on;
plot(t.sin2, 'rx');
% xlabel('t [s]');
% ylabel('y(t)');
title('w2=1');

subplot(1,3,3);
plot(t.w3);
hold on;
plot(t.sin3, 'rx');
% xlabel('t [s]');
% ylabel('y(t)');
title('w3=10');


%bode([1], [1 0.1 1]);