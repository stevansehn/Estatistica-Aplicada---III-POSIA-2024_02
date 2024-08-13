# Criação do baralho
naipes <- c("Copas", "Paus", "Espadas", "Ouros")
numeros <- c("Ás", "Dois", "Três", "Quatro", "Cinco", "Seis", "Sete", "Oito", "Nove", "Dez", "Valete", "Dama", "Rei")

# Dataframe
dfbaralho <- expand.grid(numero = numeros, naipe = naipes)
dfbaralho

# Continuando a criação do baralho
baralho <- paste(dfbaralho$numero, dfbaralho$naipe)
baralho

# Evento A: carta de espadas
# P(A) = ?
espadas <- paste(numeros, "Espadas")
espadas

baralho %in% espadas

mean(baralho %in% espadas)
# R: P(A) = 13/52

# Evento B: carta contém uma figura
# P(B) = ?
figurasValete <- paste("Valete", naipes)
figurasDama <- paste("Dama", naipes)
figurasRei <- paste("Rei", naipes)
figuras <- c(figurasValete, figurasDama, figurasRei)
figuras

baralho %in% figuras

mean(baralho %in% figuras)
# R: P(B) = 12/52

# Evento C: carta de espadas e contém figura
# P(C) = ?
figurasEspadas <- c("Valete Espadas", "Dama Espadas", "Rei Espadas")
figurasEspadas

baralho %in% figurasEspadas

mean(baralho %in% figurasEspadas)
# R: P(C) = 3/52

# Evento D: carta de espadas ou contém figura
# P(D) = ?
probA <- mean(baralho %in% espadas)
probB <- mean(baralho %in% figuras)
probC <- mean(baralho %in% figurasEspadas)

probD <- probA + probB - probC
probD
# R: P(C) = 13/52 + 12/52 - 3/52