## Datos en R: filtrado de datos + relaciones entre variables

## paper http://www.christianbentz.de/Papers/Bentz%20et%20al.%20(2016)%20Morphological%20complexity%20measures.pdf
## usamos la función básica de R read.csv
datos1 <- read.csv('C:/Users/u_humanidades/Documents/R/datos/datos_bentz.csv')
head(datos1, 5)

## nombres de las columnas
columnas <- names(datos1)
columnas

## accedemos a una columna: usamos $, y obtenemos un vector
TTR <- datos1$C_TTR
TTR

## filtremos por algunos datos
familia <- datos1$family

## removemos los repetidos
familia <- unique(familia)
familia

## filtramos por una familia
datos_que <- datos1[datos1$family=='Quechuan',]
datos_que

## EJERCICIO! Calcule el promedio de TTR para la familia Quechua

## Definamos dataframes!
animal <- c("gato", "perro", "liebre", "huemul")
edad <- c(12, 15, 5, 3)

df <- data.frame(animal, edad)
df

## EJERCICIO! Defina un dataframe con el valor promedio de TTR para 4 familias lingüísticas
## EJERCICIO! (para la casa) Defina un dataframe con el valor promedio de TTR para todas las familias lingüísticas

## Analicemos WALS_NumChap
WALS_num <- datos1$WALS_NumChap
hist(WALS_num) ## ¿Qué nos dice esto?

## EJERCICIO! Filtre datos1 para lenguas que tengan al menos 27 rasgos en WALS (relacionados a la complejidad morfológica)

## Definamos un nuevo dataframe
# R base - Select columns from list
datos_filtrados <- datos1[,c("C_WALS","C_TTR")]
datos_filtrados

## dos histogramas
hist(datos_filtrados$C_WALS)

## descripción de todos los datos
summary(datos_filtrados)

## ¿Cuál es la relación entre las variables?
plot(x=datos_filtrados$C_TTR, y=datos_filtrados$C_WALS,
     cex=1, 
     col="red",
     xlab="TTR", ylab="C_WALS",
     main="Título")

## ¿Cómo cuantificamos las relaciones entre variables? Correlaciones!
#### Comparación entre una hipótesis nula (no hay correlación) y una hipótesis alternativa (con p-value menor a 0.05)
res <- cor.test(datos_filtrados$C_TTR, datos_filtrados$C_WALS, method = "pearson")
res

## EJERCICIO! Calcule la correlación entre otras dos variables del dataframe datos1
## EJERCICIO! Calcule la correlación entre TTR y todas las otras variables. Use la versión filtrada para lenguas que tengan al menos 27 rasgos en WALS
## EJERCICIO! vER https://r-graph-gallery.com/index.html