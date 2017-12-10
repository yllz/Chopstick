# Milestone2

My Milestone2 page is [here](https://github.com/yllz/Milestone2).

The dataset is drawn from [here](http://blog.yhat.com/static/misc/data/chopstick-effectiveness.csv).

This project is related to whether the chopstick length affects the food pinching effeciency. 

I propose a null hypothesis that the population means of food pinching effeciency are the same for different chopstick lengths. The corresponding alternative hypothesis is that not all the population means of food pinching effeciency are the same among different chopstick lengths.

I would firstly create a linear model summary to check the null hypothesis. Then I would create a boxplot for different chopstick length groups to visualize the comparison.

I would run the scripts in the following order:

1. Rscript import_data.R
	
	This would import the dataset as a chopstick.csv file in the `data` folder.

2. Rscript linear_model.R

	This would create a new tidy dataset as a tidy_chopstick.csv file in the `data` folder and export the linear model summary as a model.csv file in the `results` folder.

3. Rscript boxplot.R

	This would export the boxplot as a boxplot.png file to the `figure` folder inside the `results` folder.

4. Rscript -e 'ezknitr::ezknit("~/desktop/Milestone2/src/report.Rmd", out_dir = "~/desktop/Milestone2/results")'

	This would create a report.md and report.html file in the `results` folder.
