clear all;
close all;


k2 = [0.5 1 1.5 2 ];




c = ['k', 'b', 'r', 'g', 'c'];

figure(1);
hold on;
grid on;
for i = 1:length(k2)
    k2a = k2(i);
    [t] = sim('PI_sim');
    plot(t.tout, t.w, c(i))
end
legend("k2 = " +num2str(k2(1)), "k2 = " +num2str(k2(2)), "k2 = " +num2str(k2(3)) , "k2 = " +num2str(k2(4)));