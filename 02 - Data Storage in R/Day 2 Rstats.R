swirl()
library(swirl)
ls()
rm(list=ls())
swirl()

## Setting the working directory
setwd("~/OneDrive/Documents/R Workshop/Rstats/02 - Data Storage in R")

getwd()

#Importing data
data <- read.csv("HWA_Data.csv")
head(data)
rm(data)

Day <- data$Day
Day

#Learning about vectors
point <- seq(1, 12)
point <- 1:12
point

#Character Vectors
site <- c("A", "B", "C",
          "A", "B", "C",
          "A", "B", "C", 
          "A", "B", "C")
site
Site <- rep(c("A", "B", "C"), 4)
Site

Location <- rep(c("Edge", "Interior"), each=3, length=12)
Location

Duration <- rep(c("5", "10"), each=6, length=12)
Duration

#numeric vectors
species_count <- c(12, 10, 13, 11, 13, 12, 19, 10, 12, 11, 21, 12)
species_count
length(species_count)

#Logical vector, T/F
logic <- species_count > 20
logic
species_count[which(species_count > 20)]

