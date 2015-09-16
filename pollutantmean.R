directory <- "/home/luis/R/specdata/"
pollutant <- "sulfate" 
#pollutant <- "nitrate"
#id = 1:332
#id = 1:2
id = 1

pollutantmean <- function(directory, pollutant, id) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'pollutant' is a character vector of length 1 indicating
        ## the name of the pollutant for which we will calculate the
        ## mean; either "sulfate" or "nitrate".

        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used

        ## Return the mean of the pollutant across all monitors list
        ## in the 'id' vector (ignoring NA values)
        ## NOTE: Do not round the result!
	filename <- paste(directory,sprintf("%03d",id),'.csv',sep='')
	print(filename)
	data <- read.table(filename, sep = ",")
}

pollutantmean(directory,pollutant,id)
