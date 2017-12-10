# run_all.sh
# Usage: bash run_all.sh
Rscript import_data.R

Rscript linear_model.R

Rscript boxplot.R

Rscript -e 'ezknitr::ezknit("~/desktop/Milestone2/src/report.Rmd", out_dir = "~/desktop/Milestone2/results")'
