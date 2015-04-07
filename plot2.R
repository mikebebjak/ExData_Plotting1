#Michal Bebjak
#Coursera Exploratory Data Analysis MOOC
#April 7, 2015
#plot2.R
#Sources: https://github.com/chrisdaly/ for the Posix time

consumption <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"), skip=66636, nrows=(69517-66637))
consumption$DateTime <- as.POSIXct(paste(consumption$Date, consumption$Time), format = "%d/%m/%Y %T")

png(filename="plot2.png", bg="white")
plot(consumption$DateTime, consumption$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()