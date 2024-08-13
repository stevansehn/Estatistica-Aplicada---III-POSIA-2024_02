# Criação do baralho
naipes <- c("Copas", "Paus", "Espadas", "Ouros")
numeros <- c("Ás", "Dois", "Três", "Quatro", "Cinco", "Seis", "Sete", "Oito", "Nove", "Dez", "Valete", "Dama", "Rei")

# Dataframe
dfbaralho <- expand.grid(numero = numeros, naipe = naipes)
dfbaralho

# Continuando a criação do baralho
baralho <- paste(dfbaralho$numero, dfbaralho$naipe)
baralho

# Probabilidade de se retirar um Rei considerando que foi retirada uma carta vermelha

# Evento A: retirar um Rei
# P(A) = ?
cartasRei <- c("Rei Espadas", "Rei Ouros", "Rei Copas", "Rei Paus")
cartasRei

probA <- mean(baralho %in% cartasRei)
probA
# P(A) = 4/52

# Evento B: retirar uma carta vermelha
# P(B) = ?
cartasOuros <- paste(numeros, "Ouros")
cartasCopas <- paste(numeros, "Copas")
cartasCorVermelha <- c(cartasOuros, cartasCopas)
cartasCorVermelha

probB <- mean(baralho %in% cartasCorVermelha)
# P(B) = 26/52

# P(C = A intersecção B)
cartasReiVermelho <- c("Rei Copas", "Rei Ouros")
probC = mean(baralho %in% cartasReiVermelho)
probC

# P(D = (A intersecção B) / B)
probD = probC / probB
probD
# P (A|B) = (2/52) / (1/2)

# matriz apra o entendimento da situação das 
# linhas de montagem de uma fábrica em um dia
montagem <- matrix(1:4, nrow = 2)
montagem

montagem[1,1] <- 2 # linha 1, com defeito
montagem[1,2] <- 6 # linha 1, sem defeito
montagem[2,1] <- 1 # linha 2, com defeito
montagem[2,2] <- 9 # linha 2, sem defeito
montagem
# outra maneira:
# matrix(c(2,6,1,9), nrow = 2)

# P(componente linha 1) = 8/18
# P(omponente linha 1 | componente é defeituoso) = ?
# A: componente linha 1
# B: componente defeituoso
# P(A|C) = P(intersecção de A e B) / P(C)
# P(A|C) = (2/18) / (3/18) = 2/3