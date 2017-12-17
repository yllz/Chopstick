##! /usr/bin/env Rscript
# download_data.R
# Linsey Yao, Dec 2017
#
# Script takes a URL pointing to data and loads it as a data frame
# Then saves it to specified path (e.g. data/chopstick.csv)
# Usage: Rscript download_data.R <URL> <path>

library(readr)

args <- commandArgs(trailingOnly = TRUE)
url <- args[1]
output_file <- args[2]


# define main function
main <- function() {
  
  # read in dataset from provided url
  data <- read_csv(url)
  # write datset to folder provided
  write_csv(data, output_file)
  
}

# call main function
main()
