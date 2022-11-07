//retorna o autovalor dominante de A lambda, o número de interações k 
//retorna a norma de erro e autovetor x1 correspondente
function [lambda, x1, k, n_erro]=Metodo_da_Potencia1_v2(A, x0, eps, M)
   tic();
   realtimeinit(1);
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
    
   x0 = x0/norm(x0,2);
   x1 = A*x0;
   n_erro = eps + 1;
   while k <= M & n_erro >= eps //critério de parada
        lambda = x1' * x0;
        if lambda < 0 then
           x1 = -x1;A
        end
        x1 = x1/norm(x1,2);
        n_erro = norm(x1 - x0, 2);
        x0 = x1;
        x1 = A*x0;
        k = k + 1;
   end

   x1 = x1/norm(x1,2);
   disp(toc());
endfunction
