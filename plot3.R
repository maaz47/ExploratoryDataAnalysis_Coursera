setwd('E:\\R\\Exploratory Data Analysis Week 1')

if(is.null(nrow(data))){
  source('LoadData.R')
}

png(filename = "plot3.png",width = 480,height = 480 ,units = "px")

plot(data$Sub_metering_1~data$dateTime,type = "l",ylab ="Energy Sub Metering",xlab = "")
lines(data$Sub_metering_2~data$dateTime,col = "red")
lines(data$Sub_metering_3~data$dateTime,col = "blue")
legend("topright",lwd = c(2,2,2),col = c("black","red","blue"),c("SubMetering 1","SubMetering 2","SubMetering 3"))

dev.off()