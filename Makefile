

# Declare phony target
.PHONY: all eda regression

# all	
all: data eda regression






# Download Advertising.csv
data : 
	cd code/data; curl http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv >> Advertising.csv



# Perform exploratory data analysis
eda : 
	cd code/scripts; Rscript -e 'source("eda-script.R")'

# Perform regression analyses
regression :
	cd code/scripts; Rscript -e 'source("regression-script.R")'

