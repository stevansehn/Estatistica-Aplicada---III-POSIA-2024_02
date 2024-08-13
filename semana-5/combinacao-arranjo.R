# Instalar as bibliotecas se necessário
# install.packages("tidyverse")
# install.packages("gtools")
# Carregar as bibliotecas
library(tidyverse)
library(gtools)
# Combinações: quando a ordem dos elementos é irrelevante
# Ex. 1: Combinações de 3 em 3 de alunos numerados de 1 a 10
combinations(10, 3)
# Quantidade de combinações
gruposAlunos <- combinations(10, 3)
combinacao <- nrow(gruposAlunos)
combinacao
# Arranjos: quando a ordem dos elementos é relevante
# Ex. 2: Eleição de cargos em um prédio
eleicaoPredio <- permutations(10, 3)
eleicaoPredio
permutacao <- nrow(eleicaoPredio)
permutacao
