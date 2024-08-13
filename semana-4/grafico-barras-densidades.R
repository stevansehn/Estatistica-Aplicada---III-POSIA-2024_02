# Instalar biblioteca se necessário
# install.packages("ggplot2")
# Carregar biblioteca
library(ggplot2)
# Dataframe
df <- data.frame(tratamento = c("1", "2", "3"), espessura = c(2, 3.1, 4.2))
# Gráfico de barras
ggplot(df, aes(x = tratamento, y = espessura)) + geom_col(fill =  "red", col = "red") + ggtitle("Título")
# Carregar os dados
data(iris)
# Gráfico de densidade
ggplot(iris, aes(x = Sepal.Length)) + geom_density(fill = "red")
ggplot(iris, aes(x = Sepal.Length, fill = Species)) + geom_density(alpha = .5)
