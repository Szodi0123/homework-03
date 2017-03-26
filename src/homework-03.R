# I. feladat

##Házi feladat 3
##Programozás I.
##2016/17. II. félév
##Szilágyi Ádám
##2017.03.26


##II.feladat
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

  #II.3 feladat: Listahossz (apply), végeredmény: lista

vec_len_app_l <- (sapply(my_vectors, length, simplify = F))

  #II.4 feladat: Listahossz (apply), végeredmény: vektor

vec_len_app_v <- (sapply(my_vectors, length, simplify = T))

class(vec_len_app_v)
class(vec_len_app_l)


#III.feladat
  #III.1 feladat: dataset behívása

data("chickwts")
head(chickwts)

  #III.2 feladat: dataset behívása
chic_w_b_f<- (aggregate(chickwts$weight, list(chickwts$feed),
                        FUN = mean, simplify = T))


#III.3 feladat: csökkenő sorrend (a plyr csomagot használtam: átláthatóbb)
require(plyr)
arrange(chic_w_b_f, -chic_w_b_f$x)

#IV. feladat
    #IV.1 feladat 50*10-es mátrix + normálelo. +szóráskritérium
probamatrix <- matrix(1:50, 50,11)
probamatrix[,1:10] <- (matrix(rnorm(500, mean = 0, sd =
                                      probamatrix[,11]),50,10))
probamatrix <- probamatrix[,-11]

persp(probamatrix,expand=0.2) #Ezt csak itt hagytam, elég jól néz ki :D

    #IV.2 feladat sorok szórásának kiszámolása for ciklussal. Eredmény: vektor.
for_sd <- vector("numeric")

for (i in 1:nrow(probamatrix)) {
for_sd[i] <- sd(probamatrix[i,])  
 }

#IV.3 feladat: sorok szórásának kiszámolása az apply-al. Eredmény: vektor.
app_sd <- c()
app_sd <- apply(probamatrix,1,sd)

#IV.4 feladat: Normalizálás + átlagszámítás

normal_matrix <- apply(probamatrix,1,be_normal_pls)
summary(normal_matrix) #ellenőrzök

apply(normal_matrix,1,mean)


## V. feladat
  #V.1 feladat: Package + dataset behívása




