setwd('E:\\R\\Exploratory Data Analysis Week 1')

if(is.null(nrow(data))){
  source('LoadData.R')
}
png("plot1.png", width=480, height=480)

hist(data$Global_active_power, 
     main="Global Active Power", 
     xlab = "Global Active Power (kilowatts)", 
     col="red")

dev.off()