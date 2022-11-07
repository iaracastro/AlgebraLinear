function [A,b,v] = matriz_converg_aleat(n)
    
    //para gerar um número aleatório entre [a,b]
    //  r = a + (b-a)*rand();
    
    //matriz A com números aleatórios entre [1 e n^2]
    A = floor(1 + ((n*n-1)*rand(n,n,'uniform')))
    
    //soma de cada linha de A
    soma_linhas = sum(A,2);
    
    for i = 1:n
        //soma da linha i de A
        soma_linha = soma_linhas(i);
        //diagonal de A com números maiores que a soma de cada linha de A.
        A(i,i) = soma_linha + floor(1 + ((n-1)*rand(1,1,'uniform')));
    end
    
    b = floor(1 + ((n-1)*rand(n,1,'uniform')))
    v = zeros(n,1);
endfunction
