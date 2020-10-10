nombre <- c('Luis', 'Jorge', 'Miguel')
dias <- c('lunes', 'miercoles', 'sabado')
horas_semanales <- c(9,3,12)
#estado <- c(TRUE, FALSE, TRUE, FALSE)


df <- data.frame(nombre, dias, horas_semanales)
df
names(df) <- c('NOMBRE', 'NOTA', 'ESTADO')
df

df[['NOMBRE']][3]
df[['NOTA']][3]

df[c(3,2),c(1,2)]

df[2,]
df[,'NOTA']
df$ESTADO
