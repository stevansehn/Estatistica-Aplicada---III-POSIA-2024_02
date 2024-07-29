# Fator
vetor <- c(10, 20, 10, 30, 40)
summary(vetor)

is.numeric(vetor)

vetor <- as.factor(vetor)

is.numeric(vetor)

# Filtro
vogais <- c("a", "e", "i", "o", "u")
vogais[-3]

vogais[vogais == "o"]
vogais[vogais = "g"]

# Funções
fatorial <- function(numero) {
  i <- 1
  multiplicacao <- 1
  while(i <= numero) {
    multiplicacao <- multiplicacao * i
    i <- i + 1
  }
  return(multiplicacao)
}

fatorial(5)
multiplicacao

nome <- c("Joao", "Maria", "Jose", "Rafael")
idade <- c(30, 20, 25, 31)

df <- data.frame(nome, idade)
summary(df)

df$nome[1]
df$idade[1]
df$nome[df$idade <= 30]
df
df[1,]
df[,1]
df[1:3,]

df$nova <- NA
df$nova <- NULL

df <- read.csv("Clima.csv")
