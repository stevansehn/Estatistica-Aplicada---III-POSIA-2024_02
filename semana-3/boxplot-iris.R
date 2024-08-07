# Instalar a biblioteca ggplot2 se necessário
# install.packages("ggplot2")
library(ggplot2)

# Carregar o dataset
data(iris)

# Criar um boxplot da variável Sepal.Length de cada espécie
ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) + 
  geom_boxplot() +
  xlab("Species") + 
  ylab("Sepal Length") +
  ggtitle("Dataset Iris: Gráfico de Caixa") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))
