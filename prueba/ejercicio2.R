###2. Give R expressions that return the following matrices and vectors
## (a). (1, 2, 3, 4, 5, 6, 7, 8, 7, 6, 5, 4, 3, 2, 1)
p1 <- c(1:7)
p <- c(p1, 8, rev(p1))
p
## (b). (1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5)
v <- c()
for(i in 1:5){
  v <- c(v, integer(i)+i)  
}
v
## matriz c)
v <- c(integer(9)+1)
dim(v) <- c(3,3)
v[1,1] <- 0; v[2,2] <- 0; v[3,3] <- 0
v
## matriz d)
is.prime <- function(num) {
  if (num == 2) {
    num
  } else if (any(num %% 2:(num-1) == 0)) {
    return(0)
  } else { 
    num
  }
}
m <- matrix(1:9,3,3, byrow=T)
primos <- apply(m, c(1,2), is.prime)
primos
## 3. de un punto obtener su coordenada polar:
r = scan()
x <- r[1]; y <- r[2]
distancia <- sqrt(x**2 + y**2)
angulo_rad <- atan2(y,x)
angulo_grad <- angulo_rad*(180/pi)
cat(distancia, ',', angulo_grad, '°')
## 4. not divisible by 2, 3, or 7.
is.div <- function(num) {
  if(num %% 2 == 0 || num %% 3 == 0 || num %% 7 == 0) {
    FALSE
  }else{
    TRUE
  }
}
v <- c()
for(i in 1:100){
  if(is.div(i)){
    v <- c(v, i)
  }
}
v
# 5. cola del super. Suponiendo que se debe hacer una simulacion de ese escenario tiempo: denotara el tiempo en el que se encuentra
queue <- c('Steve', 'Russell', 'Alison', 'Liam')
for (i in 1:6){
  cat('Tiempo: ', i, '\n')
  if(i == 2){
    queue <- c(queue, 'Barry')
  }
  if(i == 3){
    queue <- queue[-c(1)]
  }
  if(i==4){
    queue <- c('Pam', queue)
  }
  if(i==5){
    queue <- queue[-c(5)]
  }
  if(i==6){
    j <- which(queue == 'Alison')
    queue <- queue[-c(j)]
  }
  cat(queue, '\n')
}
cat('La posicion de Russell es de: ', which(queue=='Russell'))
#6. Which of the following assignments will be successful? 
#What will the vectors x, y, and z look like at each stage?
rm(list = ls())
x <- 1 # asigna 1 a la variable x
x[3] <- 3 # convierte x en una lista y añade 3 a la posicion 3 dejando la posicion 2
y <- c() # crea un vector vacio en y
y[2] <- 2 # añade 2 a la posicion 2 del vector
y[3] <- y[1] # setea el valor de y en la posicion 1 a la posicion 3 su valor es NaN
y[2] <- y[4] # setea el valor de y en la posicion 4(que es NaN por que no se ha creado)
z[1] <- 0 # esta asignacion no se ejecuta ya que no esta instanciado z

#7. matriz identidad de dos formas

#Primera forma
iden <- diag(10)
iden
iden <- diag(5,10)
iden
#Segunda forma
iden <- diag(10)
iden
for(i in 1:10){
  roww <- iden[i,]
  for(j in 1:10){
    ele <- roww[j]
    if(ele!=0){
      iden[i,j] <- 5;
    }
  }
}
iden
  
