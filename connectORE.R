#if(!"ORE" %in% installed.packages()){
#  install.packages("ORE")
#}

#load the library
library(ORE)

if(!ore.is.connected()){
  #connect to RQUSER schema 
  ore.connect("RQUSER","orcl","localhost","welcome1",all=TRUE)
  #or connect to moviedemo schema
  #ore.connect("moviedemo","orcl","localhost","welcome1",all=TRUE)
}
#display dataset
ore.ls()

#function to trim leading and trailing spaces
trim <- function(x) {
  gsub("(^[[:space:]]+|[[:space:]]+$)","",x)
}

#will use ONTIME_S Airline data


#display column names
names(ONTIME_S)

#display structure of data
#219932 obs with 26 variables
str(ONTIME_S)

#display same info #rows and #column 
dim(ONTIME_S)

#display dataQry slot
ONTIME_S@dataQry

#display desc
ONTIME_S@desc


rm(list=ls())
