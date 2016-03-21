setwd("~/Coursera/04_Exploratory Data Analysis")

#read data
data <- read.table("household_power_consumption.txt", header=T, sep=";", dec=".", na.strings = "?")

#only data from 2007-02-01 and 2007-02-02
ss <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]

png(filename = "plot1.png", width = 480, height = 480)
hist(ss$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
dev.off()