'''
 el metodo montecarlo es aplicable a problemas estocasticos y deterministicos
 pero no dinamicos
 la importancia de utilizar este metodo es:
 La mayoria de los problemas a los que nos enfrentamos se no presentan 
 bajo cierta incertidumbre ya que la realidad es tiene esa caracteristica de 
 no saber con exactitud que es lo que va a pasar 
'''
  help("rnorm")
  semillas = round(rnorm(100, mean = 0.5, sd = 0.2), 4)
  hist(semillas)
  for (i in semillas){
    print(i)
  }
  
  help("ks.test")
  ks.test(semillas, "rnorm", mean(semillas), sd(semillas))
# -------------------Clase del viernes----------------------
aleatorios = round(rnorm(50, mean = 0.5, sd = 0.2), 2)
hist(aleatorios)
for (i in aleatorios){
  print(i)
}
ks.test(aleatorios, "rnorm", mean(aleatorios), sd(aleatorios))




