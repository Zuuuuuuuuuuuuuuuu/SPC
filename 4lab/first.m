clear all;
close all;

phi = [3;2;1];

for N = 100:500:10000

    for r = 1:1:10 %5 estymatorow dla kazdej liczby probek
       
        i = N;
        
        % GENEROWANIE DANYCH
        uk = zeros(i, 1);
        yk = zeros(i, 1);
        m = zeros(i, 2);

        for j = 3:1:i
            uka = randn();
            uk(j) = uka;
            zk = rand() - 0.5;
            yka = 3*uk(j) + 2*uk(j-1) + uk(j-2) + zk;
            yk(j) = yka;
            m(j, 1) = uka;
            m(j, 2) = yka;
        end

        % IDENTYFIKACJA
        xn = zeros(i, 3);
        yn = zeros(i, 1);
        
        for j = 3:1:i
            yn(j-2) = m(j,2);
            xn(j-2, 1) = m(j,1);
            xn(j-2, 2) = m(j-1, 1);
            xn(j-2, 3) = m(j-2, 1);
        end

        estymator = inv(xn' * xn) * xn' *yn;
        estymator_r(1, r) = estymator(1);
        estymator_r(2, r) = estymator(2);
        estymator_r(3, r) = estymator(3);

        norma_roznicy(1, r) = norm(estymator_r - phi);
    end
        e = 1/r *sum(norma_roznicy);
        hold on;
        plot(N, e, 'b*','MarkerSize',12);
        hold on;
        grid on;
end


