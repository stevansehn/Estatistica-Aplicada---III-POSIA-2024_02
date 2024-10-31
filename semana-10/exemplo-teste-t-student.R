#1ª solução

#Aplicação do teste t de Student
#para verificar se há diferença significativa
#entre as notas das duas turmas (A e B)
#Dataset: DisciplinaLogicaProgramação.csv
#Nível de significância: 5%
#Nível de confiança: 95%

#1º passo: acessar o dataset e criar o data frame
setwd("/Users/stevansehn/GitHub/Estatistica-Aplicada---III-POSIA-2024_02/semana-10")
dados <- read.csv("DisciplinaLogicaProgramacao.csv")
str(dados)

#2º passo: cálculo das médias
mediaTurma <- by(dados$Nota,list(dados$Turma),mean)
mediaTurma

#3º passo: cálculo das variâncias
N1 <- 7
N2 <- 7
variancia1 <- 0
variancia2 <- 0
for (i in 1:7){
  variancia1 <- variancia1 + (dados$Nota[i] - mediaTurma[1])^2
}
for (i in 8:14){
  variancia2 <- variancia2 + (dados$Nota[i] - mediaTurma[2])^2
}
variancia1 <- variancia1/N1
variancia1
variancia2 <- variancia2/N2
variancia2

#4º passo: cálculo da variância combinada
varianciaCombinada <- ((N1 * variancia1) + (N2 * variancia2))/(N1 + N2 - 2)
varianciaCombinada <- varianciaCombinada * ((N1 + N2)/(N1 * N2))
varianciaCombinada <- sqrt(varianciaCombinada)
varianciaCombinada

#5º passo: aplicação da estatística t
t <- (mediaTurma[1] - mediaTurma[2])/varianciaCombinada
t

#6º passo: consulta a tabela de distribuição t Student
#Graus de liberdade (gl)
#Nível de significância: 5%
gl <- N1 + N2 - 2
gl
#tcrítico: 2.179

#7º passo: conclusão: não há diferença significativa estatiscamente falando


#2ª solução

#Aplicação do teste t de Student
#para verificar se há diferença significativa
#entre as notas das duas turmas (A e B)
#Dataset: DisciplinaLogicaProgramação.csv
#Nível de significância: 5%
#Nível de confiança: 95%

#1º passo: acessar o dataset e criar o data frame
setwd("/Users/stevansehn/GitHub/Estatistica-Aplicada---III-POSIA-2024_02/semana-10")
dados <- read.csv("DisciplinaLogicaProgramacao.csv")
str(dados)

#2º passo: aplicação do teste t de Student
t.test(dados$Nota ~ dados$Turma, conf.level = 0.95)

#3º passo: conclusão: o t-test padrão do R dá hipótese alternativa

#3ª solução: https://www.youtube.com/watch?v=gzrmHpA54Sc

#Aplicação do teste t de Student
#para verificar se há diferença significativa
#entre as notas das duas turmas (A e B)
#Dataset: DisciplinaLogicaProgramação.csv
#Nível de significância: 5%
#Nível de confiança: 95%

#1º passo: acessar o dataset e criar o data frame
setwd("/Users/stevansehn/GitHub/Estatistica-Aplicada---III-POSIA-2024_02/semana-10")
dados <- read.csv("DisciplinaLogicaProgramacao.csv")
str(dados)

#2º passo: cálculo das médias
mediaTurma <- by(dados$Nota,list(dados$Turma),mean)
mediaTurma

#3º passo: cálculo das variâncias
N1 <- 7
N2 <- 7
variancia1 <- 0
variancia2 <- 0
for (i in 1:7){
  variancia1 <- variancia1 + (dados$Nota[i] - mediaTurma[1])^2
}
for (i in 8:14){
  variancia2 <- variancia2 + (dados$Nota[i] - mediaTurma[2])^2
}
variancia1 <- variancia1/N1
variancia1
variancia2 <- variancia2/N2
variancia2

#4º passo: cálculo do erro padrão de cada amostra
erroPadrao <- variancia1/N1 + variancia2/N2
erroPadrao <- sqrt(erroPadrao)
erroPadrao

#5º passo: cálculo do graus de liberdade (df)
df <- (variancia1/N1 + variancia2/N2) ^ 2
df <- df / ((1/(N1 - 1)*(variancia1/N1)^2) + (1/(N2 - 1)*(variancia2/N2)^2))
df

#6º passo: consulta a tabela de distribuição t Student para o t crítico
t_c <- 2.179

#7º passo: cálculo do intervalo de confiança
# IC = X1 - X2 +- t_c * erroPadrao

IC_sub = mediaTurma[1] - mediaTurma[2] - t_c * erroPadrao
IC_sub

IC_sum = mediaTurma[1] - mediaTurma[2] + t_c * erroPadrao
IC_sum

#8º passo: conclusão: não há diferença significativa estatiscamente falando
t.test(dados$Nota ~ dados$Turma, conf.level = 0.95)
