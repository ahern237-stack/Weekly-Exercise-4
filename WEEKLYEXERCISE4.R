library(gert)

default_branch <- git_branch()
print(default_branch)

#Default branch is "main"

library(readr)
library(dplyr)
library(tidyverse)
library(ggplot2)

Olympics <- read_csv("Olympics.csv")

#a
Olympics <- Olympics %>%
  mutate(total.medals = gold + silver + bronze)

#b
gold_each_country_won <- Olympics %>%
  group_by(country) %>%
  summarise(total_gold = sum(gold, na.rm = TRUE)) 

print(gold_each_country_won)

#c
medals_given_out_by_year <- Olympics %>%
  group_by(year) %>%
  summarise(medals_awarded = sum(total.medals, na.rm = TRUE)) %>%
  arrange(year)

print(medals_given_out_by_year)




