PROJECT := reproworkshop
WORKDIR := $(CURDIR)

# list below your targets and their recipies
all: inflation.html

data/raw/inflation.rds: R/download_inflation.R
	Rscript -e "source('$<')"

### Rmd's ###
publish/: inflation.html
include .repro/Makefile_publish
include .repro/Makefile_Rmds
