rooms <- c(1, 2, 1, 3, 1, NA, 3, 1, 3, 2, 1, NA, 1, 8, 3, 1, 4, NA, 1, 3, 1, 2, 1, 7, 1, NA)

rooms[rooms>2]

over_two <- length(which(rooms>2))

over_two

class(rooms)

median(rooms)

download.file("https://ndownloader.figshare.com/files/11492171",
              "raw data/SAFI_clean.csv", mode = "wb")
library(tidyverse)
library(here)

interviews <- read_csv(
  here("raw data", "SAFI_clean.csv"), 
  na = "NULL")
