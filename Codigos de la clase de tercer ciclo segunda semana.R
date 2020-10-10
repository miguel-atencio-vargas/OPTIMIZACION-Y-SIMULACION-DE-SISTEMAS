
## clase del jueves 21 de mayo

#generar 20 numeros aleatorios(entre 1 y 20) sin repeticion
numeros <- sample(1:20)# aqui por defecto replace esta en FALSE
# generar numeros aleatorios con repeticion
numeros <- sample(1:20, 25, replace = TRUE)
numeros



#para numeros decimales -> runif 

n<-10000
# runif nos da los datos en una distribucion uniforme de entre -1 y 1
x<- runif(n, min = -1 ,max = 1) 
x
# otra forma es generar los numeros a traves de una distribucion de probabilidad en este caso sera rnorm
x <- rnorm(1000, mean=0, sd=1)
x

# Ejemplo de un ejercicio de examen:
# sea el par ordenado (x,y) cada uno como un vector aleatorio con una distribucion uniforme
#que debe ir en un rango en el eje [-1,1]x [-1,1] de area 4 
# a) Aproximar mediante simulacion P(x+y <= 0) comparar con la probabilidad teorica
# a traves de la place (el area total que tenemos sobre el area posible que podria tomar )
#definimos la semilla
set.seed(1)
n<-10000
x<-runif(n, -1, 1)
y<-runif(n, -1, 1)
# ya que nos dieron una probabilidad
indice <- (x+y<0)
promedio = sum(indice)/n
promedio = mean(indice)
promedio # con ambos sale el mismo valor

#desviacion_estandar <- sd() 
# b) Ahora tendremos una distribucion para calcular el valor aproximado de pi 
#que tenga la probabilidad de que x² + y² <= 1 con esta funcion hacemos la aproximacion de pi
set.seed(1)
n<-1000000
x<-runif(n, -1, 1)
y<-runif(n, -1, 1)
hist(x)
hist(y)
indice <- (x^2+y^2<1) # apesar que teoricamente nos indican MENOR o IGUAL la ingeniera angela santos supone poner solo MENOR
indice
promedio = mean(indice)
aproximado_de_pi = 4*promedio
aproximado_de_pi


# clase lunes 25 de mayo
#graficando con la inge
color = ifelse(indice, 'black', 'red')
simbolo= ifelse(indice, 1,4)
plot(x,y,pch=simbolo,col=color,xlim = c(-1,1), ylim = c(-1,1), xlab = 'x', ylab = 'y', asp = 1)
symbols(0,0,circle=1, inches = FALSE, add = TRUE)
symbols(0,0,squares = 2, inches = FALSE, add = TRUE)
#Con menos puntos
set.seed(1)
n<-100
x<-runif(n, -1, 1)
y<-runif(n, -1, 1)
indice <- (x^2+y^2<1) # apesar que teoricamente nos indican MENOR o IGUAL la ingeniera angela santos supone poner solo MENOR
promedio = mean(indice)
aproximado_de_pi = 4*promedio
color = ifelse(indice, 'black', 'red')
simbolo= ifelse(indice, 1,4)
plot(x,y,pch=simbolo,col=color,xlim = c(-1,1), 
     ylim = c(-1,1), xlab = 'x', ylab = 'y', asp = 1)
symbols(0,0,circle=1, inches = FALSE, add = TRUE)
symbols(0,0,squares = 2, inches = FALSE, add = TRUE)



