
#1º passo: extração dos dados e do objetivo
#Calcular o intervalo de confiança com base:
#- média amostral;
#- variância populacional.
#Nível de confiança: 0,95
#Pressuposto: distribuição normal

#Desvio-padrão populacional: 5 horas
#Tamanho da amostra (n): 100 peças
#Média amostral: 500 horas

#2º passo: criação de variáveis e atribuição de valores
desvio_padrao <- 5
n <- 100
X <- 500

#3º passo: criação de variável e atribuição do valor
#do Z crítico
#Uso da tabela de distribuição, área de 0,475
Zcritico <- 1.96

#4º passo: aplicação da equação para cálculo do
#intervalo de confiança
#Intervalo de confiança - soma
ICSoma <- X + Zcritico * desvio_padrao/sqrt(n)

#Intervalo de confiança - subtração
ICSubtracao <- X - Zcritico * desvio_padrao/sqrt(n)

#5º passo: apresentação do resultado
ICSubtracao
ICSoma