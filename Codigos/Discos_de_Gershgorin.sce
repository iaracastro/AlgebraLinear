function [x]=Discos_de_Gershgorin(A)
    //c: vetor de centros,
    //r: vetor de raios
    n = size(A,1);
    c = diag(A);
    r = sum(abs(A),2) - abs(c);
    x = [c r]
endfunction
