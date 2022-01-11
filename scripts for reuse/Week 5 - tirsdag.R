library(tidyverse)
library(here)

interviews <- read_csv(
  here("raw data", "SAFI_clean.csv"), 
  na = "NULL")

dim(interviews) 
nrow(interviews)
ncol(interviews)
str(interviews)
glimpse(interviews)
summary(interviews) #needs tidyverse - above ones are basic R functions

interviews[1:10,6] #rows er først og collumns er næste. 1:10 betyder de første 10 rækker. 
#6 betyder den 6 collumn. Skriver man ingenting før eller efter komma får man dem alle.

interviews[-c(7:131),] #fjerner de angivne collumns
interviews["village"]

nrows <- nrow(interviews) #nrows bliver vores variabel som altid finder antallet af rækker
interviews[round(nrows/2),]  # function som runder tallet op til et helt tal og deler med 2, så vi finder den midterste række.

respondent_floor_type <- factor(c("earth", "cement", "cement", "earth"))
levels(respondent_floor_type)

# to select columns throughout the dataframe
select(interviews, village, no_membrs, months_lack_food)

# filters observations where village name is "Chirodzo" 
filter(interviews, village == "Chirodzo")
# filters observations where village name is "Chirodzo", rooms greater than one, no_meals greater than 2
filter(interviews, village == "Chirodzo", rooms > 1, no_meals > 2)

#Pipes - a way to enter a dataset and do multiple stuff at once (type cmd + shift + m to create pipe)

flere_ting_på_en_gang <- interviews %>%
  filter(village == "Chirodzo") %>% 
  select(village:respondent_wall_type)

interviews %>% 
  filter(memb_assoc == "yes") %>% 
  select(years_liv, no_membrs)

interviews %>% 
  filter(!is.na(memb_assoc)) %>% 
  mutate(people_per_room= no_membrs/rooms)

interviews %>% 
  filter(!is.na(memb_assoc)) %>% 
  group_by(village, memb_assoc) %>% 
  summarize(mean_no_membrs=mean(no_membrs))

interviews_plotting <- interviews %>%
  ## pivot wider by items_owned
  separate_rows(items_owned, sep = ";") %>%
  ## if there were no items listed, changing NA to no_listed_items
  replace_na(list(items_owned = "no_listed_items")) %>%
  mutate(items_owned_logical = TRUE) %>%
  pivot_wider(names_from = items_owned,
              values_from = items_owned_logical,
              values_fill = list(items_owned_logical = FALSE)) %>%
  ## pivot wider by months_lack_food
  separate_rows(months_lack_food, sep = ";") %>%
  mutate(months_lack_food_logical = TRUE) %>%
  pivot_wider(names_from = months_lack_food,
              values_from = months_lack_food_logical,
              values_fill = list(months_lack_food_logical = FALSE))

write_csv(interviews_plotting, "modified data/interviews_plotting.csv")

#Starting with Ggplot
interviews_plotting %>% 
    ggplot(aes(x= no_membrs, y = rooms)) +
    geom_jitter(alpha = 0.5, color = "salmon")

interviews_plotting %>% 
  ggplot(aes(x= no_membrs, y = rooms, color = village)) +
  geom_count()
  #geom_jitter(alpha = 0.8, aes(color = village))

interviews_plotting %>% 
  ggplot(aes(x= respondent_wall_type, y = rooms)) +
  geom_violin()+
  geom_jitter()

?ggplot()  

