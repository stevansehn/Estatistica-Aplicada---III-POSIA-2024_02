# Estrutura de decisão simples: if
numero <- 10
if (numero == 10)
  print(numero)
#else 
#  print("numero != 10")

# Estrutura de repetição: while
contador <- 1
while (contador <= 10) {
  print(contador)
  contador <- contador + 1
}

# Estrutura de repetição: for
for (i in 1:10)
  print(i)

# Vetores
numeros <- c(10, 20, 30, 40, 50)
numeros
numero[1] # em R, índice do primeiro elemento é 1!

# Datasets
data(mtcars) # carrega dataset
head(mtcars) # mostra o cabeçalho e os 6 primeiros itens (padrão)
head(mtcars, 2) # idem 2 primeiros itens
mtcars$mpg # mostra coluna mpg
mtcars$mpg[1] # mostra primeiro item da coluna mpg
mtcars$mpg[1:5] # mostra 5 primeiros itens da coluna mpg

# Mostrar hp se mpg < 20 
for (i in 1:32)
  if (mtcars$mpg[i] < 20)
    print(mtcars$hp[i])

# Fazer o mesmo de modo mais conciso com a função subset
print(subset(mtcars, mpg > 20)$hp)

# Idem com o pacote dplyr
# install.packages("dplyr")
library(dplyr)

mtcars %>%
  filter(mpg > 20) %>%
  select(hp) %>%
  print()
