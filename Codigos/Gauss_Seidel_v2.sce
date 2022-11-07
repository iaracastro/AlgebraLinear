function [x, k, normadif, normaresid] = Gauss_Seidel_2(A, b, x_old, M, E, p)
    
//x_old: uma aproximação inicial x0 da solução do sistema
//E: Tolerância
//n: Número máximo de iterações M 
//p: tipo da norma (1, 2, 'inf')

L = tril(A, -1); //matriz L
D = diag(diag(A)); //matriz D
U = triu(A,1); //matriz U

LD = L + D;

//x_old = zeros(1,size(A,1));

N = size(A,1);
//itr = 0;

//(L+D)x = -Ux_k-1 + b
//Ax = b
x = x_old;
normadif = %inf;
normaresid = %inf;

for k = 1:M //critério de parada 1: Número máximo de iterações M
    B = -U*x_old + b;
    x = resolveL(LD,B)
    
    normadif = norm((x - x_old),p); //norma da diferença entre as duas últimas aprox.
    normaresid = norm((b - A*x),p); //norma residuo
    
    if normadif < E //critério de parada 2: 
        //Norma da diferença entre as duas últimas aproximações
        break
    end
    x_old = x;
end

endfunction


function x = resolveL(L,b)
    n = size(L,1);
    m = size(b,1);
    x = zeros(m,1);
    x(1) = b(1)/L(1,1);
    for i=2:n
        x(i) = (b(i) - L(i,1:i-1)*x(1:i-1))/L(i,i);
    end
endfunction
