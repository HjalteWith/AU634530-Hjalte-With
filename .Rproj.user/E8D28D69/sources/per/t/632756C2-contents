fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5 / 9)) + 273.15
  return(kelvin)
}

fahr_to_kelvin(32)

fahr_to_kelvin_defensive <- function(temp) {
  if (!is.numeric(temp)){
    stop("temp must be numeric vector.")
  }
  kelvin <- ((temp - 32) * (5 / 9)) + 273.15
  return(kelvin)
}
fahr_to_kelvin_defensive("Simon")

kelvin_to_celsius <- function(temp){
  celsius <- temp - 273.15
  return(celsius)
}

kelvin_to_celsius(500)

fahr_to_celsius <- function(temp) {
  celsius <- (temp - 32) * (5 / 9)
  return(celsius)
}

fahr_to_celsius(50)


fahr_to_celsius_2 <- function(temp) {
  temp_k <- fahr_to_kelvin(temp)
  result <- kelvin_to_celsius(temp_k)
  return(result)
}

fahr_to_celsius_2(50)

#mean of my vec

my_vec <- c(1,2,4,5,6,NA)
strange_vec <- c(1,2,3,"dog","cat")

as.numeric(strange_vec)

my_mean <- function(x){
  x1 <- as.numeric(x)
  x2 <- na.omit(x1)
  result <- sum(x2)/length(x2)
  return(result)
}

my_mean(my_vec)

my_mean(strange_vec)

#control flow
x = 3

if(x>4){
  print("x is bigger than 4")
} else if(x == 4){
  print("x equals 4")
} else {
  print("x is smaller than 4")
}
  
