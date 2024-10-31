
#Árvore de decisão
# install.packages("rpart")
# install.packages("rpart.plot")
library("rpart")
library("rpart.plot")

#Dataset iris
str(iris)

#Divisão do dataset para treinamento e teste
amostraTreinamento <- sample(1:nrow(iris),120)
amostraTreinamento
irisTreinamento <- iris[amostraTreinamento, ]
irisTreinamento
irisTeste <- iris[-amostraTreinamento, ]
irisTeste

#Criação da árvore de decisão com os dados de treinamento
arvore <- rpart(Species ~ ., data = irisTreinamento, method = "class")
rpart.plot(arvore)

#Realização do teste com a árvore de decisão
resposta <- predict(arvore,irisTeste)
resposta