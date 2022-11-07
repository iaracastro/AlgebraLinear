function [lambda, x1, k, n_erro]=Potencia_deslocada_inversa(A, x0, eps, alfa, M)
   k = 0;
   [n, m]=size(A)
   
   if  n <> m then
        msg = gettext("%s: A não é uma matriz quadrada. \n")
        error(msprintf(msg, "Error", 1))
    end
    
    if x0 == 'x0' then
        x0 = zeros(n,1)
        x0(1,1) = 1
    end
    
    if x0 == zeros(n,1) then
        msg = gettext("%s: x0 não pode ser um vetor nulo. \n")
        error(msprintf(msg, "Error", 1))
    end

    if  size(x0,1) <> n then
        msg = gettext("%s: O tamanho de x0 não é compatível com A. \n")
        error(msprintf(msg, "Error", 1))
    end
    
    if eps < 0 then //se eps for negativo, torna-o positivo para diminuir int
        eps = -eps
    end
    
    I = eye(n,n);
    x0 = x0/norm(x0,2);
    n_erro = eps + 1;
    
    //Resolver o sistema (A – alfa*I)*x1 = x0 na primeira interação
    //usando a função Gaussian_Elimination_4
    [x0, C, P] = Gaussian_Elimination_4((A - alfa * I), x0);
    
    //AP = LU
    
    while k <= M & n_erro >= eps
        x1 =Resolve_com_LU(C, x0, P);
        x1 = x1/norm(x1,2);
        lambda = x1' * A * x1;
        if x1' * x0 < 0 
            x1 = -x1;
        end
        n_erro = norm(x1 - x0, 2);
        x0 = x1;
        k = k + 1;
    end
    
endfunction
