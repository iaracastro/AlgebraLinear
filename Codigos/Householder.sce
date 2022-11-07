function [Q, U, R] = Householder(A)
    [m,n] = size(A); 
    k = min(m-1, n);
    for j = 1:k
        x = A(j:m, j); //Coluna j da linha j até a final
        if x(1) > 0 then
            x(1) = x(1) + norm(x, 2);
        else
            x(1) = x(1) - norm(x,2);
        end
      
        u = x/norm(x,2);
        U(j:m, j) = u; //Guarda o vetor u em U
       
        //AI = eye(m - j + 1);
        //H = I - 2*u*u';
        A(j:m, j:n) = A(j:m, j:n) - 2*u*u'*A(j:m, j:n);
    end
    
    R = triu(A) // R é a matriz A alterana após várias iterações
    //limpa os zeros
    Q = constroi_Q(U);
endfunction

function Q = constroi_Q(U)
    [m,k] = size(U);
    Q = eye(m,m);
    for j = 1:k
        u = U(1:m, j)
        //Q = Q(I - 2uu^T)
        Q = Q - 2*(Q*u)*u'; 
    end
endfunction
