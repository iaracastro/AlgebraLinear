function [S] = espectro(A, tol)
erro = 1;
while erro > tol
    [Q, U, R] = Householder(A);
    A1 = R*Q;
    [Q1, U1, R1] = Householder(A1);
    A = R1*Q1;
    
    //definir erro baseado nas diagonais convergindo para os autovalores
    erro = abs(norm(diag(A), 'inf') - norm(diag(A1),'inf'));
end
S = diag(A1);
endfunction
        
