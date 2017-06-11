data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

data$Date <- as.Date(data$Date, "%d/%m/%Y")

data <- subset(data,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))

data <- data[complete.cases(data),]

## Combine Date and Time column
data$dateTime <- paste(data$Date, data$Time)
data$dateTime <- as.POSIXct(data$dateTime)

## Remove Date and Time column
data <- data[,c(10,3:9)]
