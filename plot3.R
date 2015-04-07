#Michal Bebjak
#Coursera Exploratory Data Analysis MOOC
#April 7, 2015
#plot3.R
#Sources: https://github.com/chrisdaly/ for the Posix time conversion and legend code

consumption <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"), skip=66636, nrows=(69517-66637))
consumption$DateTime <- as.POSIXct(paste(consumption$Date, consumption$Time), format = "%d/%m/%Y %T")

png(filename="plot3.png", bg="white")

with(consumption, 
{
  plot(DateTime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(DateTime, Sub_metering_2, col = "red")
  lines(DateTime, Sub_metering_3, col = "blue")
  legend("topright", col=c("black", "red", "blue"), cex=0.8, lty=1, legend = c("Sub_metering_1    ","Sub_metering_2    ","Sub_metering_3    "))
})
dev.off()