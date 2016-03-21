setwd("~/Coursera/04_Exploratory Data Analysis")

#read data
data <- read.table("household_power_consumption.txt", header=T, sep=";", dec=".", na.strings = "?")

#only data from 2007-02-01 and 2007-02-02
ss <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]

#convert Date and Time to DateTime-Field
ss$DateTime <- strptime(paste(ss$Date, ss$Time), "%d/%m/%Y %T")

png(filename = "plot3.png", width = 480, height = 480)
with(ss, plot(DateTime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering"))
with(ss, points(DateTime, Sub_metering_2, type = "l", col = "red"))
with(ss, points(DateTime, Sub_metering_3, type = "l", col = "blue"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd = 1)
dev.off()
