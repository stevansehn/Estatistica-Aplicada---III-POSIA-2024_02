
#Correlação

#mtcars
str(mtcars)

#Calcular a correlação
r1 <- cor(mtcars$mpg,mtcars$cyl)
r1

#Calcular a correlação explicitando o método 
r2 <- cor(mtcars$mpg,mtcars$cyl,method = "pearson")
r2

#Calcular as correlações entre todas as variáveis
r3 <- cor(mtcars)
r3
round(r3,2)

#Gráfico das correlações do mtcars
#install.packages("corrplot")
library(corrplot)
corrplot(cor(mtcars),method = "number")

# -------------------------------------------------------------------------



#Aplicação do teste Shapiro-Wilk para verificar
#se a distribuição dos dados é normal
#Para a distribuição ser normal, o p-valor tem
#que ser maior do que 0,05
shapiro.test(mtcars$mpg)
