clear all;
close all;

[t]=sim("czestotl");


% figure(1);
% hold on;
% grid on;
% %subplot(1,3,1);
% plot(t.tout, t.w1, 'r');
% hold on;
% plot(t.tout, t.sin1, 'k');   %zmienic kolory
% legend('odpowiedz ukladu', 'pobudzenie sinusoidalne');
% % xlabel('t [s]');
% % ylabel('y(t)');
% %title('w=0.1');
% 
% figure(2);
% %subplot(1,3,2);
% plot(t.tout,t.w2, 'r');
% hold on;
% grid on;
% plot(t.tout,t.sin2, 'k');
% legend('odpowiedz ukladu', 'pobudzenie sinusoidalne');
% % xlabel('t [s]');
% % ylabel('y(t)');
% %title('w2=1');
% 
% figure(3);
% %subplot(1,3,3);
% plot(t.tout, t.w3, 'r');
% hold on;
% grid on;
% plot(t.tout, t.sin3, 'k');
% legend('odpowiedz ukladu', 'pobudzenie sinusoidalne');
% % xlabel('t [s]');
% % ylabel('y(t)');
% %title('w3=10');


bode([1], [1 0.1 1]);