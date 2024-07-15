# Implementar um script em linguagem R baseado no conjunto de
# dados USArrests, que deve calcular as médias das prisões por
# assaltos, assassinatos e estupros para as 5 maiores e as 5
# menores populações urbanas. Utilizar o conhecimento adquirido
# até o momento. Por exemplo, evitar funções de filtro e média.
# Identificar manualmente a quantidade de registros ou
# observações do conjunto de dados e realizar os demais cálculos
# via script.

# Carrega o dataset USArrests
data(USArrests)

# Identifica manualmente a quantidade de observações
n <- 50 

# Declara um array com as populações urbanas e o põe em ordem crescente
pop_urbanas_ordenadas <- USArrests$UrbanPop

for (i in 1:(n-1)) {
  for (j in 1:(n-i)) {
    if (pop_urbanas_ordenadas[j] > pop_urbanas_ordenadas[j+1]) {
      temp <- pop_urbanas_ordenadas[j]
      pop_urbanas_ordenadas[j] <- pop_urbanas_ordenadas[j+1]
      pop_urbanas_ordenadas[j+1] <- temp
    }
  }
}

# Pega as 5 menores e 5 maiores populações
menores_pop <- pop_urbanas_ordenadas[1:5]
maiores_pop <- pop_urbanas_ordenadas[46:n]

# Inicializa variáveis com as somas
soma_assassinatos_menores_pop <- 0
soma_assassinatos_maiores_pop <- 0
soma_agressoes_menores_pop <- 0
soma_agressoes_maiores_pop <- 0
soma_estupros_menores_pop <- 0
soma_estupros_maiores_pop <- 0

# Itera sobre o array menores_pop e soma as prisões das 5 menores populações
# Problema: valor 44 se repete no array
# Solução: conferir manualmente ao invés de iterar sobre o array
for (j in 1:n) {
  if (USArrests$UrbanPop[j] == 32 | USArrests$UrbanPop[j] == 39 | USArrests$UrbanPop[j] == 44 | USArrests$UrbanPop[j] == 45) {
    soma_assassinatos_menores_pop <- soma_assassinatos_menores_pop + USArrests$Murder[j]
    soma_agressoes_menores_pop <- soma_agressoes_menores_pop + USArrests$Assault[j]
    soma_estupros_menores_pop <- soma_estupros_menores_pop + USArrests$Rape[j]
  } 
}

# Problema: dois Estados têm valor 45
# Solução: remover dados de South Dakota manualmente
soma_assassinatos_menores_pop <- soma_assassinatos_menores_pop - 3.8
soma_agressoes_menores_pop <- soma_agressoes_menores_pop - 86
soma_estupros_menores_pop <- soma_estupros_menores_pop - 12.8

# Itera sobre o array maiores_pop e soma as prisões das 5 maiores populações
for (i in 1:5) {
  for (j in 1:n) {
    if (USArrests$UrbanPop[j] == maiores_pop[i]) {
      soma_assassinatos_maiores_pop <- soma_assassinatos_maiores_pop + USArrests$Murder[j]
      soma_agressoes_maiores_pop <- soma_agressoes_maiores_pop + USArrests$Assault[j]
      soma_estupros_maiores_pop <- soma_estupros_maiores_pop + USArrests$Rape[j]
    }
  }
}

# Divide as somas pelo número de elementos para obter as médias
media_assassinatos_menores_pop <- soma_assassinatos_menores_pop / 5
media_assassinatos_maiores_pop <- soma_assassinatos_maiores_pop / 5
media_agressoes_menores_pop <- soma_agressoes_menores_pop / 5
media_agressoes_maiores_pop <- soma_agressoes_maiores_pop / 5
media_estupros_menores_pop <- soma_estupros_menores_pop / 5
media_estupros_maiores_pop <- soma_estupros_maiores_pop / 5

# Imprime valores no console
cat("Média de prisões por 100 mil habitantes das 5 cidades com menores populações urbanas")
cat("por assassinato:", media_assassinatos_menores_pop)
cat("por agressão (assault):", media_agressoes_menores_pop)
cat("por estupro:", media_estupros_menores_pop)
cat("Média de prisões por 100 mil habitantes das 5 cidades com maiores populações urbanas")
cat("por assassinato:", media_assassinatos_maiores_pop)
cat("por agressão (assault):", media_agressoes_maiores_pop)
cat("por estupro:", media_estupros_maiores_pop)
