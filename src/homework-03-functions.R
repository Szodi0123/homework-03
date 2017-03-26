##Házi feladat 3
##Programozás I.
##2016/17. II. félév
##Szilágyi Ádám
##2017.03.26

                                ##FUNCTIONS##

##Vektorgeneráló függvény a II.1-hez.
vector_pls <- function(x){
  (runif(vector(length = sample(10:20,1))))
}


be_normal_pls <- function(x){
  -1+2*(x-min(x))/
    (max(x)-min(x))
}