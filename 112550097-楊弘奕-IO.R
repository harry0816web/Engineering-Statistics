# nov 1. exercise 3

library(rio)
weather_csv <- import("weatherdata.csv")

# (a)
rainfall <- weather_csv$Rain
(maxRainfall <- max(rainfall))
(maxRainfallDate <- weather_csv$Date[rainfall == maxRainfall])
length(maxRainfallDate)


#(b)
cat("The data number:\t",length(maxRainfallDate),"\n") 
cat("The maximum rainfall per 5 min.:\t",maxRainfall," mm\n")
cat("The date and time:\t",maxRainfallDate)


