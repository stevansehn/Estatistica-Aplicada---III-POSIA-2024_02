# X = número de atendentes ocupados
# 6 atendentes
# Probabilidade de cada atendente estar ocupado: 0.6

library(gtools)

# P(X = 0)
# comb0 <- combinations(6, 0) # Error in combinations(6, 0) : bad value of r
# nrow(comb0)
P0 <- 1 * 0.6 ^ 0 * 0.4 ^ 6
P0

# n! / (p! * (n - p)!)
# 6! / (0! * (6 - 0)!) = 6! / 6! = 1

# P(X = 1)
comb1 <- combinations(6, 1)
nrow(comb1)
P1 <- nrow(comb1) * 0.6 ^ 1 * 0.4 ^ 5
P1

# P(X = 2)
comb2 <- combinations(6, 2)
nrow(comb2)
P2 <- nrow(comb2) * 0.6 ^ 2 * 0.4 ^ 4
P2

# P(X = 3)
comb3 <- combinations(6, 3)
nrow(comb3)
P3 <- nrow(comb3) * 0.6 ^ 3 * 0.4 ^ 3
P3

# P(X = 4)
comb4 <- combinations(6, 4)
nrow(comb4)
P4 <- nrow(comb4) * 0.6 ^ 4 * 0.4 ^ 2
P4

# P(X = 5)
comb5 <- combinations(6, 5)
nrow(comb5)
P5 <- nrow(comb5) * 0.6 ^ 4 * 0.4 ^ 1
P5

# P(X = 6)
comb6 <- combinations(6, 6)
nrow(comb6)
P6 <- nrow(comb6) * 0.6 ^ 5 * 0.4 ^ 0
P6

# Função de probabilidade
# P(X) = combinação(6, X) * 0.6 ^ X * 0.4 ^ (6 - X) | X > 0
# P(X) = 0.6 ^ X * 0.4 ^ (6 - X) | X == 0