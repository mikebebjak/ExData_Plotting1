#Michal Bebjak
#Coursera Exploratory Data Analysis MOOC
#April 7, 2015
#plot1.R

consumption <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"), skip=66636, nrows=(69517-66637))

png(filename="plot1.png", bg="white")
hist(consumption$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()