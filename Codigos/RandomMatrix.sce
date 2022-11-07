function [A] = matriz_aleat(n) //quadrada
    //para gerar um número aleatório entre [a,b]
    //  r = a + (b-a)*rand();
    
    //matriz A(m,n)) com números aleatórios entre [1 e n^3]
    A = floor(-n^2 + ((n^2 - (-n^2))*rand(n,n,'uniform')))
endfunction

function [A] = matriz_aleat2(n,m) 
    //para gerar um número aleatório entre [a,b]
    //  r = a + (b-a)*rand();
    
    //matriz A(m,n)) com números aleatórios entre [1 e n^3]
    A = floor(1 + ((n^3 - 1)*rand(n,m,'uniform')))
endfunction
