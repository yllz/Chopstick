##! /usr/bin/env Rscript
# plot.R
# Linsey Yao, Dec 2017
#
# generates figures to be included in report.
#
# Usage: Rscript plot.R <path>

library(tidyverse)
library(ggplot2)
library(readr)

# command line args
args <- commandArgs(trailingOnly = TRUE)
file <- args[1]

main <- function() {
  
  chopstick <- read_csv(file)
  
  # plot the relationship between effeciency and individual
  eff_individual <- chopstick %>%
    ggplot(aes(as.factor(Individual), Food.Pinching.Effeciency)) + 
    geom_boxplot() +
    labs(title = "Relationship between effeciency and individual", x = "Individual", y ="Effeciency")
  
  ggsave("results/figure/eff_individual.png", plot = eff_individual, dpi = 100, width=6, height=4.5)
  
  # plot the relationship between effeciency and chopstick length
  eff_length <- chopstick %>%
    ggplot(aes(x = as.factor(Chopstick.Length), y = Food.Pinching.Effeciency)) + 
    geom_boxplot() +
    labs(title = "Relationship between effeciency and chopstick length", x = "Chopstick length", y ="Effeciency")
  
  ggsave("results/figure/eff_length.png", plot = eff_length, dpi = 100, width=6, height=4.5)
  
}

main()
