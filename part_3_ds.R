# --------------
# David
# ------------

library(tidyverse)
library(janitor)
library(here)

db <- read_csv(here("data", "disease_burden.csv")) %>% 
  clean_names() %>% 
  rename(deaths_per_100k = death_rate_per_100_000)


# subset
db_subset <- db %>% 
  filter(country_name %in% c("United States", "Japan",
                             "Afghanistan", "Somalia")) %>% 
  filter(age_group == "0-6 days", sex == "Both")

# create basic line graph
ggplot(db_subset, aes(x = year, y = deaths_per_100k)) +
  geom_line(aes(color = country_name))

