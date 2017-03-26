# I. feladat

##Házi feladat 3
##Programozás I.
##2016/17. II. félév
##Szilágyi Ádám
##2017.03.26


##II.feladat
#II.1 feladat: Készíts 5 vektort a megadott feltételekkel.
source("src/homework-03-functions.R")

  #Létrehozom az üres listát, majd feltöltöm:
my_vectors <- list()[1:5]
my_vectors <- sapply(my_vectors, vector_pls)
print(my_vectors)

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
chic_w_b_f <- (aggregate(
  chickwts$weight,
  list(chickwts$feed),
  FUN = mean,
  simplify = T
))


#III.3 feladat: csökkenő sorrend (a plyr csomagot használtam: átláthatóbb)
install.packages("plyr", repos = "http://cran.r-project.org")
require(plyr)
arrange(chic_w_b_f,-chic_w_b_f$x)

#IV. feladat
#IV.1 feladat 50*10-es mátrix + normálelo. +szóráskritérium
the_matrix <- matrix(1:50, 50, 11)
the_matrix[, 1:10] <- (matrix(rnorm(500, mean = 0, sd =
                                       the_matrix[, 11]), 50, 10))

the_matrix <- the_matrix[, -11]

persp(the_matrix, expand = 0.2) #Ezt csak itt hagytam, elég jól néz ki :D

#IV.2 feladat sorok szórásának kiszámolása for ciklussal. Eredmény: vektor.
for_sd <- vector("numeric")

for (i in 1:nrow(the_matrix)) {
  for_sd[i] <- sd(the_matrix[i, ])
}

#IV.3 feladat: sorok szórásának kiszámolása az apply-al. Eredmény: vektor.
app_sd <- c()
app_sd <- apply(the_matrix, 1, sd)

#IV.4 feladat: Normalizálás + átlagszámítás
normal_matrix <- apply(the_matrix, 1, be_normal_pls)
summary(normal_matrix) #Ellenőrzök

apply(normal_matrix, 1, mean)


## V. feladat
#V.1 feladat: Package + dataset behívása
if (!("fivethirtyeight" %in% installed.packages())){
install.packages("fivethirtyeight")}

require(fivethirtyeight)
data(comic_characters)

#V.2 feladat: Névkezelés forciklus nélkül.
comic_characters$name <- citizen_mode(comic_characters$name)

#V.3 feladat: Get_gender függvény írása
get_gender ("Loki Laufeyson") #Lokinál most kiadja az NA-kat is.
get_gender("Katherine Pryde") #Itt csak egyet, ad, de ő egyedül is van.
get_gender("Thor") #Thornál visszaad 4 male-t. Erre gondoltál?

#Innen néztem még párat.
rep_heros <- data.frame(table(comic_characters$name))
rep_heros <- rep_heros[rep_heros$Freq > 1, ]

get_gender("Adolf Hitler")
get_gender("Hercules")
get_gender("Adam")
