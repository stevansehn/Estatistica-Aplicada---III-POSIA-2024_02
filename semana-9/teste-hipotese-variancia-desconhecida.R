# Teste de hipótese para a média com variância desconhecida

# Tempo de realização de processo industrial por trabalhadores

# 1º passo: descrição dos dados
# Trabalhador  Tempo pré-treinamento   Tempo pós-treinamento  Diferença
# 01                   80                      75                -5
# 02                   72                      70                -2
# 03                   65                      60                -5
# 04                   78                      72                -6
# 05                   85                      78                -7

# Nível de confiança: 90%
# Tamanho da amostra (n): 5
# Treinamento foi efetivo?

# 2º passo: determinação do parâmetro de interesse
# Média das diferenças de tempo

# 3º passo: definição da hipótese a ser testada (H0)
# H0 = 0

# 4º passo: definição da hipótese alternativa (H1)
# H1 < 0

# 5º passo: seleção da estatística de teste
# tcalc = (média amostral - média populacional) / (desvio padrão amostral 
# / raiz quadrada do tamanho da amostra)

# 6º passo: delimitação da região de rejeição
# Graus de liberdade: n - 1 = 4
# Nível de significância = 0,10
# tc = -1,533

# 7º passo: cálculo da estatística de teste
n <- 5
mu <- 0
amostra <- c(-5, -2, -5, -6, -7)
x <- mean(amostra)
x
s <- sd(amostra)
s
tcalc <- (x - mu) / (s / sqrt(n))
tcalc

# 8º passo: aceitação ou rejeição da hipótese H0
# Rejeição de H0

# 9º passo: conclusão
# Treinamento foi efetivo