# --------------
# David
# ------------

library(tidyverse)
library(janitor)
library(here)

db <- read_csv(here("data", "disease_burden.csv")) %>% 
  clean_names() %>% 
  rename(deaths_per_100k = death_rate_per_100_000)

view(db)

