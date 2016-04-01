# read in the SeePhase data (as a list) (PMD)

source(".First.R")
library(ggplot2)

pathPrep()

seePhase <- read.csv("C:/Users/pdicarmine/Documents/GitHub/SeePhase Script Test Folder/prc02_19_2016___05_57_41PM.csv")

plotId <- paste("SeePhase Time Series")
plot <- ggplot(seePhase, aes_string("X", "Ph1")) +
  geom_line() +
  geom_line(aes_string("X", "Analog"))
  ggtitle(plotId)
print(plot)

T1.data <- subset(seePhase, Analog >= 2 & Analog <= 6)
head(T1.data)

T2.data <- subset(seePhase, Analog >= 7 & Analog <= 10)
head(T2.data)


# Use this code to convert to elapsed time, in minutes
TimeMin <- (T1.data[1] - T1.data[1,1])*24*60
colnames(TimeMin) <- paste("ElapsedMin")
T1.data2 <- cbind(T1.data, TimeMin)

TimeMin <- (T2.data[1] - T2.data[1,1])*24*60
colnames(TimeMin) <- paste("ElapsedMin")
T2.data2 <- cbind(T2.data, TimeMin)

head(T1.data2)
head(T2.data2)

colours <- c("red", "blue", "green")

plotId <- paste("T1 name")
plot <- ggplot(NULL, aes_string("ElapsedMin", "Ph1")) +
  geom_line(data = T1.data2, colour = colours[1]) +
  geom_line(data = T2.data2, colour = colours[2])
  ggtitle(plotId)
print(plot)

plotId <- paste("T2 name")
plot <- ggplot(T2.data2, aes_string("ElapsedMin", "Ph1")) +
  geom_line() + 
  ggtitle(plotId)
print(plot)


temperature.ranges <- c(T1)
# create a for loop that subsets the data, calculates elapsed time for the subset, and plots the data

numbers <- c(1, 2, 3)
for (i in numbers){
  seePhase <- lapply
  variable <- assign(paste("seePhase", i, sep = ""),numbers[[i]])
  print(assign(paste("seePhase", i, sep = ""),numbers[[i]]))
  
  print(variable)
  
}

