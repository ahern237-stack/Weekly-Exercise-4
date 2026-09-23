library(gert)

default_branch <- git_branch()
print(default_branch)

#Default branch is "main"

#7.a.
largest_delegation_1992 <- Olympics %>%
  filter(year == 1992) %>% select(country, athletes)

print(largest_delegation_1992)

#Largest delegation was the United states with 147 athletes, the second largest
#delegation was the Unified Team (Former Soviet).