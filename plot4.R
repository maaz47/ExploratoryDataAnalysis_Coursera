setwd('E:\\R\\Exploratory Data Analysis Week 1')

if(is.null(nrow(data))){
  source('LoadData.R')
}

png("plot4.png", width=480, height=480)


par(mfrow = c(2,2),mar = c(4,4,2,2),oma = c(0,0,2,0))

#source('plot2.R')
plot(data$Global_active_power~data$dateTime , type = "l" ,xlab = "", ylab = "Global Active Power (kilowatts)")


plot(data$Voltage~data$dateTime,type="l",ylab = "Voltage",xlab = "datetime")

#source('plot3.R')
plot(data$Sub_metering_1~data$dateTime,type = "l",ylab ="Energy Sub Metering",xlab = "")
lines(data$Sub_metering_2~data$dateTime,col = "red")
lines(data$Sub_metering_3~data$dateTime,col = "blue")
legend("topright",lwd = c(2,2,2),col = c("black","red","blue"),c("SubMetering 1","SubMetering 2","SubMetering 3"))

plot(data$Global_reactive_power~data$dateTime,type="l",ylab = "Global reactive Power",xlab = "datetime")


dev.off()