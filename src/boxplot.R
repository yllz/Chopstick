#! /usr/bin/env Rscript
# created by Linsey Yao on Dec 9, 2017
# boxplot.R
# This script exports the boxplot for different groups of chopstick lengths. 
# This script takes no arguments.
# Usage: Rscript boxplot.R

dat <- read.csv("~/desktop/Milestone2/data/tidy_chopstick.csv", header=TRUE, sep=",")

library(ggplot2)

png(filename="~/desktop/Milestone2/results/figure/boxplot.png")

ggplot(dat, aes(as.factor(Chopstick.Length), Food.Pinching.Effeciency)) + geom_boxplot()

dev.off()
