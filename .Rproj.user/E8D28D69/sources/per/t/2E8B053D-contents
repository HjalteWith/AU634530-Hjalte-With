area_hectares <- 1.0
area_hectares
area_hectares*2.57

area_acres <- area_hectares*2.47

sqrt(4)
help(sqrt)

round(3.14159)
round(3.14159,2)
round(2, 3.14159)
round(digits = 2, x = 3.14159)
help(round)
?round()

hh_members <- c(3,7,8,10,6)
animals <-c("cat", "dog", "mouse")

length(animals)
class(animals)
str(animals)

animals <- c(animals, "horse", "bird")
animals <- c("chicken", animals)
animals <- c(animals, animals, animals)
animals

logical <- hh_members>7

num_char <- c(1,2,3,"a")
num_logical <- c(1,2,3, TRUE)
char_logical <- c("a","b","c", TRUE)
tricky <- c(1,2,3,"4")
# Streng overruler alt

combined_logical <- c(num_logical, char_logical)

hh_members[3:4]
hh_members[c(1,1,2,2,3,3,4,4,5,5)]
# Index starter fra 1

animals[10]
animals[5:10]

animals[-c(7:18)]

original_animals <- animals[c(7:18)]
original_animals

hh_members[hh_members>7 | hh_members == 7]
# | = OR
# & = AND

# Missing Data:

rooms <- c(2,1,1,NA,4)
# NA er ignoreret 

rooms2 <- c(2,1,1,"NotAvailable",4)
# Alt bliver til streng 

max(rooms)
# Den kan ikke ligge det sammen grundet den manglende værdi (NA)

max(rooms, na.rm = TRUE)
# na.rm fjerner de manglende værdier (gør at vi kan ligge det sammen)

is.na(rooms)
# Kan finde NA's

rooms[!is.na(rooms)]
# ! foran is.na gør at vi finder alle de værdier der IKKE er NA.

na.omit(rooms)

complete.cases(rooms)
# Hvilke værdier findes (er ikke NA) 

rooms[complete.cases(rooms)]
# Tager også fat i alle de værdier der ikke er NA

