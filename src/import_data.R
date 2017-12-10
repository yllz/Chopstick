#! /usr/bin/env Rscript
# created by Linsey Yao on Dec 9, 2017
# import_data.R
# This script import the dataset from the URL. This script takes no arguments.
#
# Usage: Rscript import_data.R

dat <- read.csv("http://blog.yhat.com/static/misc/data/chopstick-effectiveness.csv", 
                header=TRUE, sep=",")

write.csv(dat, file = "~/desktop/Milestone2/data/chopstick.csv", row.names=FALSE)
