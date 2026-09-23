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

#7.a.
largest_delegation_1992 <- Olympics %>%
  filter(year == 1992) %>% select(country, athletes)

print(largest_delegation_1992)

#Largest delegation was the United states with 147 athletes, the second largest
#delegation was the Unified Team (Former Soviet).

#7.b.
five_countries <- c("United States", "France", "Germany", "Russia", "China")

Gold_Medals <- Olympics %>%
  filter(country %in% five_countries) %>%
  ggplot(aes(x = year, y = gold, color = country, group = country)) +
  geom_line(linewidth = 1) +
  geom_point(size = 1) +
  labs(
    title = "Gold Medals Earned Over Time",
    subtitle = "*By United States, France, Germany, Russia, and China*",
    x = "Year",
    y = "Gold Medals Won",
    color = "Country"
  ) +
  theme_minimal()

print(Gold_Medals)

