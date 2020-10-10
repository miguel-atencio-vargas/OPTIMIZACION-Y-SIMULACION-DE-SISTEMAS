pi
b <- c(1,2,310)
a <- c(8.5)
a+b
10:50
mi.vector <- c('varon', 'mujer', 'mujer', 'varon', 'varon')
summary(mi.vector)
mi.factor <- factor(mi.vector)
mi.factor
summary(mi.factor)

#matrices
m <- matrix(1:6, nrow = 2)
m
m <- matrix(1:6, nrow=2, byrow = T)
m
x <- array(c(45,46,65,55,170,167,48,49,68,56,169,165), c(2,3,2))
dimnames(x) <- list(c('varones', 'mujeres'), c('edad', 'peso', 'altura'), c('villarriba', 'villabajo'))
x
x['mujeres',,] # datos de las mujeres
x[,'altura',] # todas las altura
x[,,'villabajo'] #datos de la poblacion villabajo



# list()
x <- list('a'=2.5, 'b'=TRUE, 'c'=1:3)
x
str(x)
y <- list(c(1:10), list('bol'=7, 'p'=88.5), 35)
str(y)
# append()
vec <- c(1:10)
append(vec, 70:75, after=5)
w <- c('o','t','o','r','r','i','n','o','l','o','g','o')
append(w, c('l','a','r','i','n','g','o'), after=8)

#append()
grep("[a-z]", letters)

pattern <- 'como'
grep('hola como estas', pattern = pattern )

