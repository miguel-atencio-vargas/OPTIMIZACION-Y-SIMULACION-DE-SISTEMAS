#Ejercicio 1 genere la secuencia
#A)
rep(1:3,4)
#B)
seq(from =10, to=10.5, length.out = 10)
#C)
rep(c('1','2','3', 'banana'),2)
#ejercicio 2 
nombre <- c('Luis', 'Angel','Pablo','Ursula','Tatiana','Ariel')
dias <- c( 'Miercores','Lunes',  'Jueves', 'Viernes', 'Sabado','Martes')
h_semana <- c(3, 2.5 , 1 , 0.5, 5,2)
cronograma <- data.frame(nombre, dias, h_semana)
names(cronograma) <-c('Nombres', 'Dias','Horas a la semana')
cronograma
#ejercicio 3
#df <- read_csv(file.choose(),skip = 0,col_names = TRUE)
library('readr')
path <- file.choose()
path
df <- read_csv(path)
df
names(df) <- c('EDAD', 'GENERO', 'MATERIAS')
df
#ejercicio  4
tempacid <- data.frame(water=stackloss$Water.Temp, acid=stackloss$Acid.Conc)
tempacid

