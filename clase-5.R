## Datos en R: regresión lineal

## datos desde http://wordbank.stanford.edu/

## usamos la función básica de R read.csv
datos <- read.csv('C:/Users/u_humanidades/Documents/R/datos/wordbank_vocab_data.csv')
head(datos, 5)

## nombres de las columnas
columnas <- names(datos)
columnas

## podemos columnas
datos <- datos[, c("age", "vocab")]
head(datos, 5)

## EJERCICIO! Describa las dos columnas a través de dos histogramas
## EJERCICIO! Calcule el promedio de "vocab" para los diferentes valores de "age". Guarde sus resultados en un dataframe

## ¿Cuál es la relación entre las variables?
plot(x=datos$age, y=datos$vocab,
     cex=1, 
     col="red",
     xlab="edad (meses)", ylab="vocabulario",
     main="Evolución del vocabulario")

## ¿Cómo describimos la variabilidad a través de las diferentes edades? Boxplots!
boxplot(vocab ~ age, data = datos)

## ¿Cómo comparamos entre las muestras por edad? ¿Son diferentes los promedios?
t.test(datos[datos$age == 14,]$vocab, datos[datos$age == 15,]$vocab)

## EJERCICIO! Use un ciclo for para comparar la edad == 15 con todas las otras edades

## Regresión lineal!
## ¿Es posible predecir el tamaño del vocabulario a partir de la edad? En términos simples, necesitamos encontrar
## una recta que minimice los errores, es decir, la distancia entre cada punto y la propia recta. 
model <- lm(vocab ~ age, data=datos)

## resume
summary(model)

## ploteamos los datos
plot(x=datos$age, y=datos$vocab,
cex=1, 
col="red",
xlab="edad (meses)", ylab="vocabulario",
main="Evolución del vocabulario")

## linea de ajuste
abline(model)
