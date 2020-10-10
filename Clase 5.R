pii <- seq(-pi,pi,0.1)
plot(pii, sin(pii),
     main="Funcion",
     ylab="sin(pii)",
     type="l",
     col="blue")
x <- -10:10
y <- x**2
plot(x,y)
points(0,30)
y2 <- 0.5*x**2
plot(x,y2, type='p', col='green')
plot(x,y, pch=19, col='cyan')

points(x,y2, pch=10, col='red')

y3 <- 1:21
points(x, y3, pch="12", col='yellow')

plot(x,y, col=50, pch=17)
points(x,y, col=60, pch=17, type='l')
points(x,y2, col=70, pch=15, type='l')

# un grafico con dos funciones distintas
pii <- seq(-pi,pi,0.1)
plot(pii, sin(pii),
     type="l",
     col="blue")
points(pii, cos(pii), pch=19, col='blue')
points(pii,tan(pii), pch=18, col='cyan')
