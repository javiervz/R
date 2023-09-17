# Estadística para lingüistas en R (una introducción)

# Operaciones con listas de números

## un vector de números
lista_num <- c(16, 12, 21, 3, 5, 8, 13, 21, 34)
print(lista_num)

## accedemos a un índice
n <- lista_num[1]
print(n)

# EJERCICIO! Accede al último elemento de lista_num

## ¿Cómo agregamos un número?
lista_num <- append(lista_num, 10)
print(lista_num)

## ¿Cómo borramos?
# valor específico
lista_num <- lista_num[!lista_num == 3]
print(lista_num)

# por índice
lista_num <- lista_num[-c(1,2,5)]
print(lista_num)

## ¿Cómo recorremos la lista de números?
for (x in lista_num) {
  print(x)
}

## otra forma
for (x in 1:length(lista_num)) {
  print(lista_num[x])
} 

# EJERCICIO! Sume los elementos de lista_num. No use sum.

# EJERCICIO! Agregue el string "*" a cada palabra de lista_strings (clase 1)

## ¿Cómo agregamos una condición? ¿Qué pasa si queremos agregar el string "*" a los strings 
## que tienen largo menor a 4?

## lista de números
for (x in 1:length(lista_num)){
  if (x < 4) {
  print(lista_num[x])
  }
}

## preguntar si un elemento está en un vector
b <- is.element(3, lista_num)
print(b)

# EJERCICIO! Defina una variable booleana que consulte si un elemento está en lista_num. Si no está, agréguelo.

# EJERCICIO! Defina un vector nulo con c(). Recorra con un ciclo for el vector lista_strings. En cada paso,
# guarde la palabra en el vector c.

# EJERCICIO! Defina un vector nulo con c(). Recorra con un ciclo for el vector lista_strings. En cada paso,
# guarde la palabra en el vector c solo si NO está. ¿Qué obtiene?

# EJERCICIO! Defina una lista de números. Calcule el promedio de la lista de números. Defina un vector nulo con c(). 
# Para cada número, eleve al cuadrado la resta entre el número y el promedio. Ese pequeño resultado guárdelo en c. 
# Finalmente, calcule el promedio del nuevo vector.