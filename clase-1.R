# Estadística para lingüistas en R (una introducción)
## https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0129031
# 
# ¿Qué es R?
# Lenguaje de programación especializado en estadística

# Tareas
# instalar R y RStudio
# https://posit.co/download/rstudio-desktop/
# leer capítulo 1 del LIBRO

# Números y strings: objetos básicos de R
## podemos usar R como una calculadora
2 + 3
3*(5 - 1)

# Variables 
## R puede almacenar objetos a través de un nombre: usamos el símbolo <- (a la derecha el objeto; a la izquierda el nombre)
## 1. números

a <- 3
b <- 5
## operaciones básicas entre números!
## EJERCICIO: Sume 1 a la variable a. 
## EJERCICIO: Defina una variable c que sea el resultado del uso de varias operaciones entre a y b. 

## 2. strings: cadenas de caracteres (se escriben entre "")

# variable 
s <- "gato"
# operación de concatenar
t <- paste(s,s,sep='-')
## EJERCICIO: Concatene su nombre y su apellido. Use como separador el signo "+" 
# contar caracteres
n <- nchar(s)
## EJERCICIO: Cree una variable con su nombre y otra con su apellido. Calcule el número de caracteres de su nombre completo (nombre + apellido)

## 3. booleanos: valores de verdad
a = T
b = F
c = 2 < 3
# combinación de valores de verdad: and y or
d = 2 < 3 & 3 < 4
e = 2 < 3 | 3 < 4
## EJERCICIO: Determine si una palabra termina en vocal. Use endsWith('**', '*')

## 4. vectores: listas de números
## lista de números del 1 al 10
vnum <- 1:10
## otra forma de definir listas de números
lista_num <- c(16, 12, 21, 3, 5, 8, 13, 21, 34)
## con length obtenemos el largo de un vector
n <- length(lista_num)
## EJERCICIO: Calcule el promedio de los números de lista_num
