# Algebra-Linear
Repositório pessoal pra matéria de álgebra linear (numérica).
Se alguém achou isso por acaso, espero que te ajude :)

# Códigos
### ConfusionMatrixMeasures.sce
- Calcula as medidas que provém da confusão de matriz: acurácia, precisão, recall, falso alarme a falsa omissão. <br/>
input: VP (verdadeiro-positivo), VN (verdadeiro-negativo), FN (falso-negativo) e FP (falso-positivo)

### ConfusionMatrixValues.sce
- Calcula os valores da matriz de confusão, como verdadeiro-positivo, verdadeiro-negativo, falso-negativo e falso-positivo. <br/>
input: prev_tt (previsão do arquivo de teste), y_tt (resultados reais)

### Discos_de_Gershgorin.sce
- Encontra o vetor de centros e o vetor de raios a partir de uma matriz A. (é usado para estimar autovalores) <br/>
input: A (matriz quadrada)

### Gauss_Seidel_v1
- Resolve um sistema linear (Ax = b) usando o algoritmo iterativo de Gauss-Seidel. <br/>
input: A (matriz quadrada), b (vetor), x_0 (aproximação inicial), M (número máximo de iterações), E (tolerância), p (tipo de norma: "1,"2","inf")

### Gauss_Seidel_v2
- Resolve um sistema linear (Ax = b) usando o algoritmo iterativo de Gauss-Seidel. (mais rápido) <br/>
input: A (matriz quadrada), b (vetor), x_0 (aproximação inicial), M (número máximo de iterações), E (tolerância), p (tipo de norma: "1,"2","inf")

### GaussianElimination.sce
- Faz a eliminação gaussiana para resolver um sistema linear Ax = b. Também encontra a matriz C (Ux = C) e a matriz de permutação (P). <br/>
input: A (matriz quadrada), b (vetor)

### HouseHolder.sce
- Faz a decomposição Q, U pelo método de Householder. Também encontra a matriz R. <br/>
input: A (matriz quadrada)

### Jacobi.sce
- Resolve um sistema linear (Ax = b) usando o algoritmo iterativo de Jacobi. <br/>
input: A (matriz quadrada), b (vetor), x_0 (aproximação inicial), M (número máximo de iterações), E (tolerância), p (tipo de norma: "1,"2","inf")

### LU_Decomposition.sce
- Faz a decomposição LU. <br/>
input: A (matriz quadrada)

### Metodo_da_Potencia1_v1.sce
- Encontra o autovalor dominante de uma matriz A, o seu autovetor unitário correspondente e o número de iterações necessário para convergência. <br/>
input: A (matriz quadrada diagonalizável), x_0 (vetor não-nulo), epsilon (tolerância), M (número máximo de iterações)

### Metodo_da_Potencia1_v2.sce
- Encontra o autovalor dominante de uma matriz A, o seu autovetor unitário correspondente e o número de iterações necessário para convergência. (mais rápido) <br/>
input: A (matriz quadrada diagonalizável), x_0 (vetor não-nulo), epsilon (tolerância), M (número máximo de iterações)

### PLK_MinQuadraticSolver.sce
- Resolve o método dos mínimos quadrados para uma matriz no formato P (produção total), L (quantidade de trabalho), K (capital investido). Parte de uma função para modelar produção desenvolvido por Charles Cobb e Paul Douglas. <br/>
input: A (matriz com 3 colunas PLK) 

### PotenciaDeslocadaInversa.sce
- Encontra o autovalor de uma matriz A mais próximo de um valor alfa. <br/>
input: A (matriz quadrada diagonalizável), x_0 (vetor não-nulo), alfa (valor do qual se deseja achar o autovalor mais próximo), M (número máximo de iterações)

### RandomMatrix.sce
- Gera uma matriz aleatória de ordem n. <br/>
input: n (ordem da matriz)

### SuccessTrainTest.sce
- Calcula o número de acertos do arquivo de treino e de testes. <br/>
input: x_tr (x da tabela de treino), x_tt (x da tabela de teste), alpha_tr (h_tr = alpha_tr * x_tr) 

### SymmetriRandomcMatrix 
- Gera uma matriz simétrica aleatória de ordem n. <br/>
input: n (ordem da matriz)

### compression-svd.sce
- Faz a compressão de uma imagem através da decomposição SVD. <br/>
input: A (matriz da imagem), k (pixels)

### qr_GramS.sce
- Faz a decomposição QR pelo método de Gram-Schmidt. <br/>
input: A (matriz quadrada)

### qr_GramSmodified.sce
- Faz a decomposição QR pelo método modificado de Gram-Schmidt (mais estável). <br/>
input: A (matriz quadrada)

### qr_espectro.sce
- Encontra os autovalores de uma matriz simétrica usando o algoritmo QR. <br/>
input: A (matriz quadrada), tol (tolerância)

# Listas

- [LinearAlgebra](https://github.com/iaracastro/AlgebraLinear/tree/main/Listas/LinearAlgebra): Listas da matéria ministrada por Yuri Saporito.
- [NumericLinearAlgebra](https://github.com/iaracastro/AlgebraLinear/tree/main/Listas/NumericLinearAlgebra): Listas práticas da matéria ministrada por Branco. (aplicação computacioal)

# Materiais

Materiais diversos como pdfs, livros, códigos e imagens.

# Resumos

- Espaços Vetoriais e os 4 Subespaços Fundamentais
- Autovalores e Autovetores
- Base e Dimensão
- Decomposição SVD
- Determinantes
- Diagonalização
- Eliminação Gaussiana
- Fatoração LU
- Gram-Schmidt
- Matrizes Similares e Forma de Jordan
- Mínimos Quadrados
- Mínimos e Máximos
- Projeções
- Regra de Cramer
- Sistemas Lineares (Ax = 0)
- Sistemas Lineares (Ax = b)
- Transformação Linear 
- Vetores Ortogonais
