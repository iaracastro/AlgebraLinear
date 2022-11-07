function [alfa, b]=calcular_alfa_b(A)
    
    P = A(:,2);
    L = A(:,3);
    K = A(:,4);
    
    P_ln = log(P);
    L_ln = log(L);
    K_ln = log(K);
    
    n = size(L,1);
    A = [ones(n,1) (L_ln - K_ln)];
    b = (P_ln - K_ln);
    
    x = Gaussian_Elimination_4(A' * A, A' * b);
    alfa = x(2);
    b = exp(x(1));
endfunction

function [P]=calcular_p(A, ano)
    
    L = A(:,3); //L na coluna 3
    K = A(:,4); //K na coluna 4
    
    n = size(K,1) 
    for i = 1:n
        if (A(i,1) == ano) //verifica a linha do ano selecionado
            x = A(i,:);
            L = x(3);
            K = x(4);
            //função utilizada para modelar a produção
            P = b * L^alfa * K^(1-alfa); 
        end
    end
endfunction
