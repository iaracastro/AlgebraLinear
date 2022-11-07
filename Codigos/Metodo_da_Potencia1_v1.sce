function [lambda, x1, k, n_erro]=Metodo_da_Potencia1_v1(A, x0, eps, M)
   tic();
   realtimeinit(1);
   
   k = 0;
   [n, m]=size(A)
   
   if  n <> m then //verifica se as dimensões de A são iguais
        msg = gettext("%s: A não é uma matriz quadrada. \n")
        error(msprintf(msg, "Error", 1))
    end
    
    if x0 == 'x0' then //se x0 não foi definido, gera uma matriz de zeros
        //cujo primeiro termo é 1
        x0 = zeros(n,1)
        x0(1,1) = 1
    end
    
    if x0 == zeros(n,1) then
        msg = gettext("%s: x0 não pode ser um vetor nulo. \n")
        error(msprintf(msg, "Error", 1))
    end
    
    if  size(x0,1) <> n then //verifica se o tamanho de x0 é compatível com A
        msg = gettext("%s: O tamanho de x0 não é compatível com A. \n")
        error(msprintf(msg, "Error", 1))
    end
    
    if eps < 0 then //se eps for negativo, torna-o positivo para diminuir int
        eps = -eps
    end

   [val0,ind0]= max(abs(x0)); //maior valor de x0 em módulo de x0 e coordenada
   x0 = x0/x0(ind0);
   x1 = A*x0;
   n_erro = eps + 1;
   while k <= M & n_erro >= eps //critério de parada
        [val,ind]= max(abs(x1));
        lambda = x1(ind);
        x1 = x1/lambda;
        n_erro = norm(x1 - x0, 'inf');
        x0 = x1;
        x1 = A*x0;
        k = k + 1;
   end
   
   x1 = x1/norm(x1,'inf');
   
   
   disp(toc());
endfunction
