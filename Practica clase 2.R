# factores

# Objetivo: estudiar qué son factores en R.
# --------------------------------------------
# En este ejercicio vamos a:
# 1. Crear factores en R
# 2. Recodificar niveles de un factor
# 3. Ordenar niveles de un factor


#####################################
# correr esto antes de empezar...   #
#####################################

# crear vector de ventas
tallas <- c('m', 'g', 'S', 'S','m', 'M')

# intentar graficar
plot(tallas)

###################################
# práctica 1: crear factores en R #
###################################

# crear factor de un vector
factor_tallas <- factor(tallas)

# graficar factor
plot(factor_tallas)

# mirar niveles de factor
levels(factor_tallas)

######################################
# práctica 2: recodificando factores #
######################################

# creando factor recodificado
tallas_recodificado <- factor(tallas, levels=c('g','m','M','S'), labels = c('G','M','M','S'))

# graficando ventas_recodificado
plot(tallas_recodificado)

#############################################
# práctica 3: ordenando niveles de factores #
#############################################

# ordenando niveles (copiar factor anterior)
tallas_recodificado <- factor(tallas, ordered=TRUE,levels=c('g','m','M','S'), labels = c('G','M','M','S'))

# viendo el orden en los niveles
levels(tallas_recodificado)

# graficando el factor ordenado
plot(tallas_recodificado)
#-----------------
#----- listas

# Objetivo: estudiar qué son las listas en R
# -------------------------------------------
# En este ejercicio vamos a:
# 1. Crear listas en R
# 2. Seleccionar elementos de una lista
# 3. Identificar listas en R


# Cargando datos de videos anteriores
# informacion peliculas shrek. 
nombre <- c("Shrek", "Shrek 2", "Shrek Tercero", "Shrek: Felices por siempre")
puntuacion <- c(7.9, 7.2, 6.1, 6.3)
posterior_2005 <- c(FALSE, FALSE, TRUE, TRUE)
# informacion estrenos de peliculas
warner <- c(20, 20, 16, 17, 17, 22, 17, 18, 19)
disney <- c(11, 13, 11, 8, 12, 11, 12, 8, 10)
fox <- c(18, 15, 15, 15, 16, 17, 15, 13, 11)

# crear diferentes estructuras de datos en R
vector_titulos <- nombre
matriz_peliculas <- matrix(c(warner, disney, fox),
                           nrow = 9,
                           ncol = 3)
peliculas_df <- data.frame(nombre,
                           puntuacion,
                           posterior_2005)

####################################
# práctica 1: crear una lista en R #
####################################

# crear lista en R
lista_curso <- list(vector_titulos, matriz_peliculas)


# mostrar lista
lista_curso

# cambiar nombre de dataframe
names(lista_curso) <- c('vector', 'matriz')

# mostrar lista
lista_curso

##################################################
# práctica 2: Seleccionar elementos de una lista #
##################################################

# Seleccionar vector de la lista
lista_curso[['vector']]

# Seleccionar el tercer elemento del vector de la lista
lista_curso[['vector']][3]

# Seleccionar fila 5 y columna 3 de la matriz de la lista
lista_curso[['matriz']][5,3]

######################################################
# práctica 3: agregar/eliminar elementos a una lista #
######################################################

# agregar dataframe a lista
lista_curso[['data_frame']] <- peliculas_df

# revisar que está el dataframe
lista_curso

# eliminar un elemento de lista
lista_curso[['vector']] <- NULL

# revisar que no está el vector
lista_curso

#------length-----
length(diag(4))  # = 16 (4 x 4)
length(options())  # 12 or more
length(y ~ x1 + x2 + x3)  # 3
length(expression(x, {y <- x^2; y+2}, x^y))  # 3

## from example(warpbreaks)
require(stats)

fm1 <- lm(breaks ~ wool * tension, data = warpbreaks)
length(fm1$call)      # 3, lm() and two arguments.
length(formula(fm1))  # 3, ~ lhs rhs

#-----diff----
diff(1:10, 2)
diff(1:10, 2, 2)
x <- cumsum(cumsum(1:10))
diff(x, lag = 2)
diff(x, differences = 2)

diff(.leap.seconds)
#---dataframes
# video 08 - dataframes

# Objetivo: estudiar qué son dataframes en R.
# --------------------------------------------
# En este ejercicio vamos a:
# 1. Crear dataframes en R
# 2. Ordenar dataframes por columnas
# 3. Seleccionar elementos de un dataframe

#####################################
# correr esto antes de empezar...   #
#####################################

# vectores sobre peliculas de Shrek
nombre <- c("Shrek", "Shrek 2", "Shrek Tercero", "Shrek: Felices por siempre")
puntuacion <- c(7.9, 7.2, 6.1, 6.3)
posterior_2005 <- c(FALSE, FALSE, TRUE, TRUE)

#######################################
# práctica 1: crear un dataframe en R #
#######################################

# crear dataframe de vectores




# mostrar dataframe


# cambiar nombre de dataframe




# mostrar dataframe (sí, otra vez)


#####################################################
# práctica 2: Seleccionar elementos de un dataframe #
#####################################################

# seleccionar un elemento del dataframe



# seleccionar más de un elemento del dataframe



# seleccionar una fila o renglón del dataframe


# seleccionar una columna del dataframe




#################################
# práctica 3: ordenar dataframe #
#################################

# mostrar el dataframe


# mostrar el indice de la columna de puntuacion con order


# funcion order (menor a mayor)



# mostrar el dataframe ordenado


# funcion order (mayor a menor)



# mostrar el dataframe ordenado


# guardar el dataframe ordenado