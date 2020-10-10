#TAREA PARA MIERCOLES  ORDENAR LOS DATAFRAMES Y COMO SE TRABAJA CON ATTACH Y DETACH.
df<-data.frame(x1 = c(9, 8, 3, 4, 8),         # Create example data
               x2 = c(5, 4, 7, 1, 1),
               x3 = c(1, 2, 3, 4, 5))


df
x1
attach(df)
x1
x2
x3
detach(df)
x1
