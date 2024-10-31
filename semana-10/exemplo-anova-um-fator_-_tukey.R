#1ª solução

#Aplicação da ANOVA para verificar se há
#diferenças estatisticamente significativas
#entre as sementes
#Dataset: ProducaoSoja.csv
#Fator: semente
#Tratamentos: semente 1, semente 2, semente 3 e semente 4
#Tamanho de cada grupo: 4
#Quantidade de grupos: 4

#1º passo: acessar o dataset e criar um data frame
setwd("/Users/stevansehn/GitHub/Estatistica-Aplicada---III-POSIA-2024_02/semana-10")
df <- read.csv("ProducaoSoja.csv")
str(df)

#2º passo: cálculo das média
media <- mean(df$Sacas)
media

mediaSemente <- by(df$Sacas,list(df$Semente),mean)
mediaSemente

#3º passo: soma dos quadrados
tamanho <- 4
SQE <- ((media - mediaSemente[1])^2*tamanho + (media - mediaSemente[2])^2*tamanho + (media - mediaSemente[3])^2*tamanho + (media - mediaSemente[4])^2*tamanho)
SQE

quadrado1 <- 0
for (i in 1:4){
  quadrado1 <- quadrado1 + (df$Sacas[i] - mediaSemente[1])^2;
}
quadrado1
quadrado2 <- 0
for (i in 5:8){
  quadrado2 <- quadrado2 + (df$Sacas[i] - mediaSemente[2])^2
}
quadrado2
quadrado3 <- 0
for (i in 9:12){
  quadrado3 <- quadrado3 + (df$Sacas[i] - mediaSemente[3])^2
}
quadrado3
quadrado4 <- 0
for (i in 13:16){
  quadrado4 <- quadrado4 + (df$Sacas[i] - mediaSemente[4])^2
}
quadrado4

SQR <- (quadrado1 + quadrado2 + quadrado3 + quadrado4) 
SQR

totalQuadrados <- SQE + SQR
totalQuadrados

#4º passo: cálculo dos graus de liberdade
n <- 4
glE <- n -1
glE

glR <- (tamanho * n) - n
glR

#5º passo: cálculo dos quadrados médios
QME <- SQE/glE
QME

QMR <- SQR/glR
QMR

#6º passo: cálculo da estatística F
estatisticaF <- QME/QMR
estatisticaF

#7º passo: consulta a tabela de distribuição F
#F(3,12) = 3.49

#8º passo: conclusão: há diferença estatisticamente significativa

#Tabela ANOVA
####################################################
#Fonte de      # Soma dos # gl # Quadrados # F
#variabilidade #Quadrados #    # Médios    #
####################################################
#Entre        # 261.6875  # 3  #  87.2291  # 32.968
#Grupos       #           #    #           #
#           #    #           #
#Dentro       # 31.75     # 12 #  2.64583  #
#(resíduos)   #           #    #           #
#           #    #           #
#Totais       # 293.4375  #    #           #
####################################################


#2ª solução

#Aplicação da ANOVA para verificar se há
#diferenças estatisticamente significativas
#entre as sementes
#Dataset: ProducaoSoja.csv
#Fator: semente
#Tratamentos: semente 1, semente 2, semente 3 e semente 4
#Tamanho de cada grupo: 4
#Quantidade de grupos: 4

#1º passo: acessar o dataset e criar um data frame
setwd("/Users/stevansehn/GitHub/Estatistica-Aplicada---III-POSIA-2024_02/semana-10")
df <- read.csv("ProducaoSoja.csv")
str(df)

#2º passo: aplicação da ANOVA - um fator
anova <- aov(df$Sacas ~ df$Semente, data = df)
anova
summary(anova)

#3º passo: conclusão: há diferença estatisticamente significativa


#Aplicação do teste de Tukey
TukeyHSD(anova)