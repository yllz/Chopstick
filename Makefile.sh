# Makefile to generate the chopstick data analysis project

# Linsey Yao, Dec 2017

# Usage: 
#           - make all # generates the entire project from start to finish
#           - make clean # removes all files generated during execution

# the final target - the report
all: doc/chopstick_analysis.md

# download raw data
data/chopstick.csv : src/download_data.R
	Rscript src/download_data.R "http://blog.yhat.com/static/misc/data/chopstick-effectiveness.csv" ./data/chopstick.csv

# generate the plots
results/figure/eff_individual.png : src/plot.R data/chopstick.csv
	Rscript src/plot.R data/chopstick.csv

results/figure/eff_length.png : src/plot.R data/chopstick.csv
	Rscript src/plot.R data/chopstick.csv

# generate the summary of the linear regression model
results/model.csv: src/linear_model.R data/chopstick.csv
	Rscript src/linear_model.R data/chopstick.csv results/model.csv

# generate the final report
doc/chopstick_analysis.md: results/figure/eff_individual.png results/figure/eff_length.png results/model.csv
	Rscript -e 'ezknitr::ezknit("src/chopstick_analysis.Rmd", out_dir = "doc")'

# clean target
clean:
	rm data/chopstick.csv
	rm results/model.csv
	rm results/figure/eff_individual.png
	rm results/figure/eff_length.png
	rm doc/chopstick_analysis*
