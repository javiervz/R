## Datos en R

## paper http://www.christianbentz.de/Papers/Bentz%20et%20al.%20(2016)%20Morphological%20complexity%20measures.pdf
## forma 1: usamos la función básica de R read.csv
datos1 <- read.csv('C:/Users/u_humanidades/Documents/R/datos/datos_bentz.csv')
head(datos1, 5)

## forma 2: librería
library(readr)
datos2 <- read_csv('C:/Users/u_humanidades/Documents/R/datos/datos_bentz.csv', show_col_types = FALSE)
head(datos2, 5)

## nombres de las columnas
columnas <- names(datos1)
columnas

## accedemos a una columna: usamos $, y obtenemos un vector
TTR <- datos1$C_TTR
TTR

## ¿Cuál es TTR promedio?
M_ttr <- mean(TTR)
M_ttr

## Visualicemos un histograma de valores de TTR
hist(TTR)

## agreguemos el promedio
abline(v = M_ttr, col='red', lwd = 3)

## EJERCICIO! ¿Cuántas lenguas están bajo el promedio, y cuántas sobre el promedio?
