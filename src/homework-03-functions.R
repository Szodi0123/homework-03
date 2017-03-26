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

##Normalizáló függvény a VI.2-höz.
be_normal_pls <- function(x){
  -1+2*(x-min(x))/
    (max(x)-min(x))
}

##Névkezelő függvény V.2-höz
citizen_mode <- function(x){
  sapply(strsplit(comic_characters$name, split = " (", fixed = T), "[",1)
}

##Get_gender függvény V.3-hoz
get_gender <- function(name) {
  if (is.na(comic_characters$gsm[comic_characters$name == name]) == TRUE) 
  {
    print(as.vector(substr(comic_characters$sex[comic_characters$name == name]
                  ,1,
                 nchar(comic_characters$sex[comic_characters$name == name])
                 - 11)))
  }else{
    print(as.vector(comic_characters$gsm[comic_characters$name == name]))}
 }





