# Instalar a biblioteca ggplot2 se necessário
# install.packages("ggplot2")
library(ggplot2)

# Carregar o dataset
data(iris)

# Filtrar por Iris-setosa
iris_setosa <- subset(iris, Species == "setosa")

# Calcular as estatísticas relevantes
boxplot_stats <- boxplot(iris_setosa$Sepal.Length, plot = FALSE)
stats <- boxplot_stats$stats

# Criar o gráfico do boxplot sobre o violin plot
ggplot(iris_setosa, aes(x = Species, y = Sepal.Length, fill = Species)) + 
  geom_violin(trim = FALSE, alpha = 0.5) +  # Violin plot (density)
  geom_boxplot(width = 0.2, fill = "red", alpha = 0.7) +  # Boxplot
  geom_hline(yintercept = stats[1], linetype = "dashed", color = "blue") +
  geom_hline(yintercept = stats[2], linetype = "dashed", color = "blue") +
  geom_hline(yintercept = stats[3], linetype = "dashed", color = "blue") +
  geom_hline(yintercept = stats[4], linetype = "dashed", color = "blue") +
  geom_hline(yintercept = stats[5], linetype = "dashed", color = "blue") +
  annotate("text", x = 1.2, y = stats[1] + 0.05, label = "Lower Extreme", color = "blue", hjust = 0) +
  annotate("text", x = 1.2, y = stats[2] + 0.05, label = "Lower Fourth", color = "blue", hjust = 0) +
  annotate("text", x = 1.2, y = stats[3] + 0.05, label = "Median", color = "blue", hjust = 0) +
  annotate("text", x = 1.2, y = stats[4] + 0.05, label = "Upper Fourth", color = "blue", hjust = 0) +
  annotate("text", x = 1.2, y = stats[5] + 0.05, label = "Upper Extreme", color = "blue", hjust = 0) +
  xlab("Species") + 
  ylab("Sepal Length") +
  ggtitle("Sepal Lengths of Iris setosa") +
  theme_minimal() + 
  theme(legend.position = "none", 
        plot.title = element_text(hjust = 0.5))

