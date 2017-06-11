setwd('E:\\R\\Exploratory Data Analysis Week 1')

if(is.null(nrow(data))){
  source('LoadData.R')
}


png("plot2.png", width=480, height=480,units='px')

plot(data$Global_active_power~data$dateTime , type = "l" ,xlab = "", ylab = "Global Active Power (kilowatts)")


dev.off()


