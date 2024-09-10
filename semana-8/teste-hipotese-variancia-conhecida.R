
# Teste de hipótese para a média com variância conhecida

# Certificação de parafusos de segurança com base
# na largura dos parafusos

# 1º passo: descrição dos dados
# Média populacional: 10 mm
# Desvio-padrão populacional: 2 mm
# Lote amostral de tamanho: 15 parafusos
# Média amostral: 15 mm
# Desvio-padrão amostral: 8,5 mm
# Nível de confiança adotado: 95%
# Nível de significância: 5%
# Pressuposto: distribuição normal

# Algoritmo do teste de hipótese
# 2º passo: determinação do parâmetro de interesse
# Parâmetro: largura média dos parafusos

# 3º passo: definição da hipótese a ser testada (H0)
# H0 = 10 mm

# 4º passo: definição da hipótese alternativa (H1)
# H1 <> 10 mm

# 5º passo: seleção da estatística de teste
# Zcalc = (média amostral - média populacional) / 
# (desvio padrão populacional / raiz quadrada do tamanho da amostra )

# 6º passo: delimitação da região de rejeição
# Tabela
# [-1.96, 1.96]

# 7º passo: aplicação da estatística de teste
x <- 15
mu <- 10
sigma <- 2
n <- 15
Zcalc <- (x - mu) / (sigma / sqrt(n))
Zcalc

# 8º passo: aceitação ou rejeição de H0
# Rejeitar H0

# 9º passo: conclusão, para certificação ou não do lote
# Conclusão: não certificar o lote de parafusos