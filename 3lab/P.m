clear all;
close all;

k1a = 1;
k1 = [0.5, 2, 5, 7.5];




c = ['k', 'b', 'g', 'r'];

figure(1);
hold on;
grid on;
for i = 1:length(k1)
    k1a = k1(i);
    [t] = sim('P');
    plot(t.tout, t.w, c(i))
end
legend("k1 = " +num2str(k1(1)), "k1 = " +num2str(k1(2)), "k1 = " +num2str(k1(3)) , "k1 = " +num2str(k1(4)));