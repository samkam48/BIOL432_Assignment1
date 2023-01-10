# R Script #1

## 1. A vector with a set of 100 species names, randomly selected from a vector of 5 species names of your choosing.

Organism <- sample(c("Dog", "Cat", "Fox", "Wolf", "Raccoon"), #randomly sample 5 species
                  100, replace = TRUE) #100 values
print(Organism)

## 2. A vector of 100 values for Limb_width, randomly selected using a distribution of your choice that makes sense for the width of limbs

Limb_width <- abs(rnorm(100, mean = 3, sd = 2)) #random sample to create 100 values
print(Limb_width)

## 3. A vector of 100 values for Limb_length, again randomly selected from a distribution of your choosing, but the numbers must make sense.

Limb_length <- abs(rnorm(100, mean = 10, sd = 2)) #random sample to create 100 values
print(Limb_length)

## 4. A vector of 100 values for Observer, randomly selected from a vector of 3 names (you can use any names you like).

Observer <- sample(c("Sam", "Ali", "Rachel"), #randomly sample 3 observers
                   100, replace = TRUE) #100 values
print(Observer)

## 5. Combine all of the vectors into a data.frame or tibble object and export to a CSV file called measurements.csv

Measurements <- data.frame(Organism, Limb_width, Limb_length, Observer) #combine all vectors
print(Measurements)

getwd() #already in the folder I want

write.csv(Measurements, "measurements.csv", row.names = F) #export data frame to csv file
  ## how to use relative path if you're already in the folder u want???
