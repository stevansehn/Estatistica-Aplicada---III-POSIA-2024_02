#Funções em R para distribuições


#Densidade de probabilidade em um determinado ponto
#em uma distribuição normal
dnorm(-1)


#Exemplo 1: funções para distribuição normal
#N(média,desvio-padrão)
#Média: 100
#Variância: 64
#N(100,8)

x <- seq(70, 130, len = 100) 
fx <- dnorm(x, 100, 8)
fx
plot(x, fx, type = "l")
Fx <- pnorm(x, 100, 8)
Fx
plot(x, Fx, type = "l")


#Exemplo 2: funções para distribuição binomial
#n: 10
#p: 0.35

x <- 1:10
fx <- dbinom(x, 10, 0.35)
fx
plot(x, fx, type = "h")
Fx <- pbinom(x, 10, 0.35)
Fx
plot(x, Fx, type = "s")


#Exemplo 3: A duração de um processo em uma linha de montagem
#para fabricar um componente é em média de 230 
#minutos, com desvio-padrão de 15 minutos. Verificar
#a probabilidade de um componente ser produzido em
#menos de 240,5 minutos. 
#Observação: os dados de tempo possuem uma
#distribuição normal

#1º passo: levantamento dos dados da situação
#Valor: 240,5 minutos
#Média: 230 minutos
#Desvio-padrão: 15 minutos

#2º passo: atribuição dos dados para variáveis (implementação)
valor <- 240.5
media <- 230
desvio_padrao <- 15

#3º passo: cálculo utilizando a equação 
z <- (valor - media)/desvio_padrao
z

#4º passo: obtenção de valor da tabela da normal reduzida
#0,2580 considerando z = 0,70

#5º passo: cálculo da probabilidade P
#P(Tempo <= 240,5) = 0.5 (área da função calculada com valores antes da média) + 0.2580 (área calculada com valores após a média)
#P(Tempo <= 240,5) = 0,5 + 0,2580 = 0,7580