# Implementar um script em linguagem R para calcular a
# média de hp dos carros com 8 cilindros baseado no
# dataset mtcars. Utilizar o conhecimento adquirido até o
# momento. Por exemplo, evitar funções de filtro e média. 

# Carrega o dataset mtcars
data(mtcars)

# Inicializa uma variável para guardar a soma dos valores de hp
soma_hp <- 0

# Itera sobre a coluna hp do dataset e somar os valores 
for (i in 1:32)
    soma_hp <- soma_hp + mtcars$hp[i]

# Divide a soma pelo número de elementos para obter a média
media_hp <- soma_hp / 32
print(media_hp)

# Faz o mesmo usando a função mean
print(mean(mtcars$hp))
