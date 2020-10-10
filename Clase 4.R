genere <- c(1,1,1,1,1, 2,2,2,2,2)
notas <- c(3,7,6,4,10,0,5,2,0,4)
df <- data.frame(cbind(genere, notas))
df
plot(df, main="Miguel", sub="Notas de clase", 
     xlab="sexo", ylab="notas", ylim=c(0,10), 
     col="blue", col.main='green', col.sub='red', 
     col.lab='cyan')


