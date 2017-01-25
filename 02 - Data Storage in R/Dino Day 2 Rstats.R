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

#Factors
SiteFactor <- factor(Site, levels = c("A", "B", "C"))
SiteFactor
LocationFactor <- factor(Location, levels = c("Edge", "Interior"))
DurationFactor <- factor(Duration, levels = c("5", "10"))
DurationFactor

#Creating a Table
bird.table2 <- cbind(point, Site, Location, Duration, species_count)
bird.table2
as.data.frame(bird.table2)

write.csv(bird.table2, "bird.table2.csv")

#Exporting a data frame
Birds <- data.frame(point, Site, Location, Duration, species_count)
write.csv(Birds, "Jaleigh.Birds.csv")

#rbinding, adding new row
last.row <- c(13, "A", "Edge", "10", 39)
is.numeric(last.row)
is.character(last.row)

birds2 <- rbind(bird.table2, last.row)
birds2
