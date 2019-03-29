##### Vermont Beer Analysis ######
###try to set up quadrant for Vermont beer scores

library(rio)
library(reshape2) #uneccessary for this task

# established a working directory on my hard drive

setwd("C:/Users/andyv/Documents/R Working Scripts")
getwd() #confirmed that I set up wd correctly

# upload data

beerscores <-import("UntappdScores.xlsx")
summary(beerscores)

# This gave me some dimensions for setting up the quadrants
# used Median Rating Count for X intercept

# need to install tidyverse package for this outsourced code to work

install.packages("tidyverse")

# run that ggplot2 library

library(ggplot2)

quadview <-ggplot(beerscores, aes(x='Rating Count', 'Average Rating')) +
  geom_point() +
  lims(x=c(300,100000),y=c(3,5)) +
  theme_minimal() +
  coord_fixed() +  
  geom_vline(xintercept = 13000) + geom_hline(yintercept = 4) 

## this kicked out a data set wtf
