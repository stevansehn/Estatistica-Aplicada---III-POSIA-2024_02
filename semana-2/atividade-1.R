# Implementar um script usando a linguagem R para calcular a moda em
# relação ao número de cilindros do mtcars

# Criar uma lista com a quantidade de cilíndros como chave
lista_cilindros <- list("4"=0, "6"=0, "8"=0)

# Iterar sobre o conjunto de dados e conta quantos possuem cada quantidade de cilíndros
for (i in 1:nrow(mtcars)) {
  if (mtcars$cyl[i] == 4) {
    lista_cilindros[["4"]] <- lista_cilindros[["4"]] + 1
  } else if (mtcars$cyl[i] == 6) {
    lista_cilindros[["6"]] <- lista_cilindros[["6"]] + 1
  } else if (mtcars$cyl[i] == 8) {
    lista_cilindros[["8"]] <- lista_cilindros[["8"]] + 1
  }
}

# Inicializar valor máximo e moda cilíndros
valor_max <- -Inf
moda_cilindros <- ""

# Iterar sobre o conjunto de dados para determinar o valor máximo e a moda
for (key in names(lista_cilindros)) {
  if (lista_cilindros[[key]] > valor_max) {
    valor_max <- lista_cilindros[[key]]
    moda_cilindros <- key
  }
}

# Imprimir o resultado
cat("Moda (cilíndros) em mtcars:", moda_cilindros, "\n")

# Idem usando métodos prontos

tabela_cilindros <- table(mtcars$cyl)

moda_cilindros <- as.numeric(names(tabela_cilindros)[which.max(tabela_cilindros)])

cat("Moda (cilíndros) em mtcars: ", moda_cilindros, "\n")

# Implementar um script usando a linguagem R para calcular por meio
# de uma função a variância populacional para o número de prisões por
# assaltos do USArrests

# Calcular a média
media_agressao <- mean(USArrests$Assault)

# Calcular o quadrado das diferenças da média
quadrado_diferencas <- (USArrests$Assault - media_agressao) ^ 2

# Somar
soma <- sum(quadrado_diferencas)

# Calcular a variância
variancia_agressao <- soma / (length(USArrests$Assault) - 1)

# Imprimir
cat("Variância (agressão) em USArrests: ", variancia_agressao, "\n")

# Idem usando métodos prontos
variancia_agressao <- var(USArrests$Assault)

cat("Variância (agressão) em USArrests: ", variancia_agressao, "\n")

# Implementar um script em linguagem R para calcular a média, a
# mediana, a variância e o desvio-padrão das populações das linhas
# pares do USArrests

# Selecionar as linhas pares do conjunto de dados
linhas_pares <- USArrests[seq(2, nrow(USArrests), by=2), ]

# Calcular a estatística para cada
medias <- apply(linhas_pares, 2, mean)
medianas <- apply(linhas_pares, 2, median)
variancias <- apply(linhas_pares, 2, var)
desvios_padrao <- apply(linhas_pares, 2, sd)

# Imprimir
cat("Médias:\n")
print(medias)
cat("\nMedianas:\n")
print(medianas)
cat("\nVariâncias:\n")
print(variancias)
cat("\nDesvios Padrão:\n")
print(desvios_padrao)
