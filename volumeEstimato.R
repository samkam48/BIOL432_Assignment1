# R Script #2

library(dplyr) #load dplyr package

## 1. Read measurements.csv file and estimate limb volume from the two limb measurements

Measurements <- read.csv("measurements.csv", header = T) #load dataset

#check dataset
names(Measurements) 
head(Measurements) 
tail(Measurements) 
dim(Measurements) 
nrow(Measurements) 
ncol(Measurements)
str(Measurements)

## 2. Add a new column of data called Volume. Apply an equation to estimate the volume of an organism's leg

Measurements <- Measurements %>% 
  mutate(Limb_volume = Limb_width*Limb_length*pi) #create new column and use equation to determine volume

Measurements #print new dataset

#check dataset
names(Measurements) 
head(Measurements) 
tail(Measurements) 
dim(Measurements) 
nrow(Measurements) 
ncol(Measurements)
str(Measurements)

## 3. Over-write original measurements.csv file to contain a Volume column

getwd()

setwd("./")

write.csv(Measurements, "measurements.csv", row.names = F) #export updated data frame to csv file
