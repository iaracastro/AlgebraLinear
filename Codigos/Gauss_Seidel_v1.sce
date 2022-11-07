function [x, k, normadif, normaresid, Mg, Cg] = Gauss_Seidel_1(A, b, x_old, M, E, p)
    
//x_old: uma aproximação inicial x0 da solução do sistema
//E: Tolerância
//n: Número máximo de iterações M 

L = tril(A, -1); //matriz L
D = diag(diag(A)); //matriz D
U = triu(A,1); //matriz U

InvLD = inv(L+D); //matriz inversa de L + D

Mg = -InvLD*U;
Cg = InvLD*b;

//x_old = zeros(1,size(A,1));

//N = size(A,1);
//itr = 0;

x = x_old;
normadif = %inf; //norma da diferença entre as duas últimas aprox.
normaresid = %inf;

for k = 1:M //critério de parada 1: Número máximo de iterações M
    
    x = Mg*x_old + Cg; // Gauss-Seidel formula
    normadif = norm((x - x_old),p); // finding error
    normaresid = norm((b - A*x),p);
    
    if normadif < E //critério de parada 2: 
        //Norma da diferença entre as duas últimas aproximações
        break
    end
    x_old = x;
end

endfunction


