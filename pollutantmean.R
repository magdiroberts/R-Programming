pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)


  ##  directory<-"c:/R/specdata" - i unzipped the files in this directory on my local drive
  
  
  setwd(directory)
  
  ##  pollutant<-"nitrate"
  
  ## read all the filenames from specdata directory into filenames vector
  filenames<-list.files()

  ##initialize a vector with NA 
  f<-rep(NA, 4)
  
  for 
    (i in id[1]:id[length(id)])
    {
         x<-read.csv(paste(paste(directory,'/',sep=""),filenames[i],sep=""), header=TRUE)   
       f<-rbind(f,x)
    }

  mean(f[,match(pollutant, names(f))],na.rm=TRUE)
}



##pollutantmean("c:/R/specdata","sulfate",13:30)
##[1] 1.6401
##
## pollutantmean("c:/R/specdata","sulfate",1:332)
##[1] 3.189369