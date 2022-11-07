# Algebra-Linear
Repositório pessoal pra matéria de álgebra linear (e numérica).
Se alguém achou isso por acaso, espero que te ajude :)

# Códigos
### ConfusionMatrixMeasures.sce
- Calcula as medidas que provém da confusão de matriz, como acurácia, precisão, recall, falso alarme a falsa omissão. <br/>
input: VP (verdadeiro-positivo), VN (verdadeiro-negativo), FN (falso-negativo) e FP (falso-positivo)

### ConfusionMatrixValues.sce
- Calcula os valores da matriz de confusão, como verdadeiro-positivo, verdadeiro-negativo, falso-negativo e falso-positivo.
input: prev_tt (previsão do arquivo de teste), y_tt (resultados reais)

### GaussianElimination.sce
- Faz a eliminação gaussiana para resolver um sistema linear Ax = b. Também encontra a matriz C (Ux = C) e a matriz de permutação (P). <br/>
input: A (matriz quadrada), b (vetor)

### HouseHolder.sce
- Faz a decomposição Q, U pelo método de Householder. Também encontra a matriz R. <br/>
input: A (matriz quadrada)

### LU_Decomposition.sce
- Faz a decomposição LU. <br/>
input: A (matriz quadrada)

### PLK_MinQuadraticSolver.sce
- Resolve o método dos mínimos quadrados para uma matriz no formato P (produção total), L (quantidade de trabalho), K (capital investido). Parte de uma função para modelar produção desenvolvido por Charles Cobb e Paul Douglas. <br/>
input: A (matriz com 3 colunas PLK) 

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

- [LinearAlgebra](https://github.com/iaracastro/AlgebraLinear/tree/main/Listas/NumericLinearAlgebra): Listas da matéria ministrada por Yuri Saporito.
- [NumericLinearAlgebra](https://github.com/iaracastro/AlgebraLinear/tree/main/Listas/NumericLinearAlgebra): Listas práticas da matéria ministrada por Branco. (aplicação computacioal)

# Materiais

Materiais diversos como pdfs, livros, códigos e imagens.

# Resumos

- 4 Subespaços Fundamentais
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
