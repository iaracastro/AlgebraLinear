function X=Resolve_com_LU(C, B, P)
B = P*B;
m = size(B,2); //colunas de B
n = size(C,1); //linhas
L = tril(C, -1); //Matriz L (triangular inferior)


U = triu(C); //Matriz U (triagular superior)
X = zeros(n,m);

for k = 1:m
    b_i = B(1:n, k); //vetores b_i
    y_i = resolveL(L,b_i); //vetores y_i
    x_i = resolveU(U,y_i); //x_i = U\y_i
    X(1:n, k) = x_i; //x_i em X
end
endfunction

//Ly = b
function y = resolveL(L,b)
    n = size(L,1);
    m = size(b,1);
    y = zeros(m,1);
    y(1) = b(1)/L(1,1);
    for i=2:n
        y(i) = (b(i) - L(i,1:i-1)*y(1:i-1))/L(i,i);
    end
endfunction

//Ux = y
function x = resolveU(U,y)
    n = size(U,1);
    x = zeros(n,1);
    x(n) = y(n)/U(n,n);
    for i=n-1:-1:1
        x(i) = (y(i) - U(i,1:i-1)*x(1:i-1))/U(i,i);
    end
endfunction
