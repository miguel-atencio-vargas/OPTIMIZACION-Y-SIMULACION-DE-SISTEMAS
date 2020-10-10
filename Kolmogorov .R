v = c(0	,
      0.02	,
      0.03	,
      0.04	,
      0.05	,
      0.08	,
      0.09	,
      0.1	,
      0.12	,
      0.13	,
      0.19	,
      0.23	,
      0.24	,
      0.31	,
      0.32	,
      0.34	,
      0.35	,
      0.36	,
      0.37	,
      0.38	,
      0.42	,
      0.45	,
      0.63	,
      0.64	,
      0.65	,
      0.66	,
      0.68	,
      0.7	,
      0.73	,
      0.74	,
      0.76	,
      0.77	,
      0.8	,
      0.82	,
      0.85	,
      0.9	,
      0.99	)


x = rnorm(37, mean=0.5, sd=0.19)
x

hist(x)
hist(v)
ks.test(v,x)
   
# desviacion estandar y su media
media = mean(v)
desv = sd(v)
#otros metodos
ks.test(v, "pnorm", mean(v), sd(v))
#anderson darling
hist(rnorm(100, mean = 5, sd = 3))
ad.test(rnorm(100, mean = 5, sd = 3))
ad.test(runif(100, min = 2, max = 4))

# graficos para ver sus cuartiles
# https://www.youtube.com/watch?v=Gc07ErVWXTQ 
#En este video tiene bastantes pruebas de normalidad
qqnorm(v)
qqline(v, col=2)
