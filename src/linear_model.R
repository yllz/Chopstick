##! /usr/bin/env Rscript
# linear_model.R
# Linsey Yao, Dec 2017
#
# generates the summary of the linear regression model
#
# Usage: Rscript linear_model.R <path>

library(readr)
library(broom)

# command arguments
args <- commandArgs(trailingOnly = TRUE)
file <- args[1]
# location to write summarised file
path <- args[2]

# define main function
main <- function() {
  
  chopstick <- read_csv(file)
  
  model <- lm(Food.Pinching.Effeciency ~ as.factor(Individual) + as.factor(Chopstick.Length), data = chopstick)
  
  # write it out to provided location
  write_csv(tidy(model), path)
  
}

main()
