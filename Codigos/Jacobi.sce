function [x, k, normadif, normaresid, Mj, Cj] = Jacobi(A, b, x_old, M, E, p)
    
//x_old: uma aproximação inicial x0 da solução do sistema
//E: Tolerância
//M: Número máximo de iterações 
//p: Tipo de norma: 1, 2, "inf"

L = tril(A, -1); //matriz L: Triangular Inferior de A, sem a digaonal
D = diag(diag(A)); //matriz D: Matriz Diagonal de A
U = triu(A,1); //matriz U: Triangular Superior de A, sem a diagonal

InvD = diag(1./diag(A)); //matriz inversa de D

Mj = -InvD * (L + U); //Matriz de Jacobi
Cj = InvD * b;

//x_old = zeros(1,size(A,1));

normadif = norm((A*x_old - b),p); //norma da diferença entre as duas últimas aprox.
N = size(A,1);
//itr = 0;

x(:,1) = x_old;

for k = 1:M //critério de parada 1: Número máximo de iterações M
    x = Mj*x_old + Cj; //Jacobi Formula
    normadif = norm((x - x_old),p);
    normaresid = norm((b - A*x),p);
    
    //itr = itr+1;

    if normadif < E //critério de parada 2: 
        //Norma da diferença entre as duas últimas aproximações
        break
    end
    x_old = x;
end

endfunction
