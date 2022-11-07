function A = Matriz_Simetrica_Aleat(n)
    // gera numeros aleatorios entre -n^2 e n^2  
    A = floor(-((n^2)*rand(n,n,'uniform')) + ((n^2)*rand(n,n,'uniform')))
    // define a simetria da matriz
    A = tril(A) + triu(A', 1)
endfunction
