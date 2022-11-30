% rysowanie zależności Q od Td

clear all;
close all;

k1 = 1;
k2 = .5;

Td = 0.1:0.3:1.8;
%Td = [0.05, 0.1, 0.3, 0.5, 0.8, 1];
c = ['k', 'b', 'r', 'g', 'c', 'm', 'o'];

sys = tf([k1, k2], [1, 0]);

figure(1);
hold on;
grid on;
for i = Td
     Tda = i;
     sysd = c2d(sys, Tda);
     ab = cell2mat(sysd.Numerator);
     a = ab(1);
     b = ab(2);
     [t] = sim('second_2');
     txt = ['Td = ', num2str(i)];
     plot(t.tout, t.w1, 'DisplayName', txt);
end
legend show;