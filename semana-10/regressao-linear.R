
#Exemplo de regressão linear

#Dados de peso e altura
peso <- c(45,50,60,55,58,56,48,53)
altura <- c(1.54,1.56,1.65,1.60,1.65,1.63,1.58,1.59)

#Variável independente (X): peso
#Variável dependente (Y): altura
#Modelo
lm(altura ~ peso)

#Gráfico
plot(peso,altura)

#Linha do modelo de regressão
abline(1.200575,0.007519)

#Predição das alturas considerando os pesos
predict(lm(altura ~ peso))

#Gráficos
library(ggplot2)
ggplot(mapping = aes(peso,altura)) + geom_point() +
  geom_smooth(method = "lm")

#Gráfico traçando a linha da média da altura
retas <- ggplot(mapping = aes(peso,altura)) + geom_point() +
  geom_smooth(se = FALSE, method = "lm") +
  geom_hline(yintercept = mean(altura))
retas

#Gráfico com as linhas em vermelho 
#das diferenças entre os dados e a média
retas + geom_segment(aes(x = peso,y = altura,
                         xend = peso, yend = mean(altura)), 
                     color = "red")

#Gráfico com as linhas em vermelho para
#representar os resíduos
retas + geom_segment(aes(x = peso, y = altura,
                         xend = peso, yend = predict(lm(altura ~ peso))),
                     color = "red")

#Cálculo do coeficiente de determinação (R2)
#Esse coeficiente é a medida estatística
#empregada para avaliar a qualidade da
#descrição do modelo de regressão
SQ <- sum((mean(altura) - altura)**2)
SR <- sum((predict(lm(altura ~ peso)) - altura)**2)
R2 <- (SQ - SR) / SQ
R2

