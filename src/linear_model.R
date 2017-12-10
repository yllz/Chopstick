#! /usr/bin/env Rscript
# linear_model.R
# This script creates a new tidy datset and export the summary of a linear model. 
# This script takes no arguments.
# Usage: Rscript linear_model.R

chopstick <- read.csv("~/desktop/Milestone2/data/chopstick.csv", header=TRUE, sep=",")

library(tidyverse)

tidy_chopstick <- chopstick %>%
  select(Food.Pinching.Effeciency, Chopstick.Length) %>%
  group_by(Chopstick.Length)

write.csv(tidy_chopstick, file = "~/desktop/Milestone2/data/tidy_chopstick.csv", row.names=FALSE)

model <- lm(Food.Pinching.Effeciency ~ as.factor(Chopstick.Length), tidy_chopstick)

library(broom)

write.csv(tidy(model), "~/desktop/Milestone2/results/model.csv" )