# Week 1: Initial Data exploration
# Author: Austin Harrop
# Date : 30/01/26

# Load packages
library(tidyverse)
library(here)
library(naniar)
library(janitor)
library(skimr)

# Load data
mosquito_egg_raw <- read_csv(here("data", "mosquito_egg_data.csv"),
                             name_repair = janitor::make_clean_names)

# Overview
glimpse(mosquito_egg_raw)
summary(mosquito_egg_raw)
skim(mosquito_egg_raw)

# view table of data
view(mosquito_egg_raw)

# counts sites and treatment

mosquito_egg_raw |>
  group_by(site, treatment) |>
  summarise(n = n())

# observations
# - What biological system is this?
#   female mosquitoes are given a treatment of varying dosage and records of eggs laid vs hatches are taken for each 
# - What's being measured?
#   Relationship between dosage and egg success rate
# - How many observations?
#   205
# - Anything surprising?
#   
# - Any obvious problems?
# consistency of naming