# I. feladat

##Házi feladat 3
##Programozás I.
##2016/17. II. félév
##Szilágyi Ádám
##2017.03.26


#II.1 feladat: Készíts 5 vektort a megadott feltételekkel.

  #A feladatot egy vektorgeneráló függvénnyel végeztem el.
source("src/homework-03-functions.R")

  #Létrehozom az üres listát, majd feltöltöm:
my_vectors <- list()[1:5]
my_vectors <- sapply(my_vectors,vector_pls)

#II.2 feladat: Listahossz (for), végeredmény: vektor
vec_len_for <- c()

for (i in 1:length(my_vectors)) {
vec_len_for[i] <- lengths(my_vectors[i])
}

#II.2 feladat: Listahossz (apply), végeredmény: lista

vec_len_app_l <- (sapply(my_vectors, length, simplify = F))

#II.3 feladat: Listahossz (apply), végeredmény: vektor

vec_len_app_v <- (sapply(my_vectors, length, simplify = T))

class(vec_len_app_v)
class(vec_len_app_l)



