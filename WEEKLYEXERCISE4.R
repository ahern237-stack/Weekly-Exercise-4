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

