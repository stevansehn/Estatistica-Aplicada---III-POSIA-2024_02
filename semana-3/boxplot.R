# Inicializar dados
corrosao <- c(115, 90, 92, 40, 52, 55, 85, 125, 98,
              125, 94, 60, 94, 70, 75, 85, 95, 90, 100)
# Criar boxplot
boxplot(corrosao)
# Idem com ggplot2
# Carregar biblioteca
library(ggplot2)
# Colocar dados num dataframe
df <- data.frame(corrosao)
# Plotar
ggplot(df, aes(x = "", y = corrosao)) + 
  geom_boxplot() +
  xlab("Corrosao") + 
  ylab("Valores") +
  ggtitle("Boxplot de Corrosao")

