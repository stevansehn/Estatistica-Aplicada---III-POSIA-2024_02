# Fator
vetor <- c(10, 20, 10, 30, 40)
vetor
summary(vetor)

is.numeric(vetor)

# as.factor() converte um vetor em fator. Um fator é uma variável categórica,
# em que um número inteiro é atribuído a cada nível. Útil para se trabalhar
# com dados categóricos como rótulos, etc.
vetor <- as.factor(vetor) 
vetor

is.numeric(vetor) # não é mais númerico, mas categórico

# Filtro
vogais <- c("a", "e", "i", "o", "u")
vogais

vogais[-3] # vogais excluindo o elemento de índice 3
vogais[vogais == "o"] # vogais onde elemento == "o"
vogais[vogais = "g"] # vogais onde elemento == "g" (inexiste)

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

nome <- c("Joao", "Maria", "Jose", "Rafael")
idade <- c(30, 20, 25, 31)

df <- data.frame(nome, idade)
df
summary(df)

df$nome[1]
df$idade[1]
df$nome[df$idade <= 30]
df[1,]
df[,1]
df[1:3,]