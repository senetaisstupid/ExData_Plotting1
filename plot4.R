## Create plots
# plot4: trend of parameters

source("readWeek1Data.R")
load("week1Data.Rda")
library(lubridate)
datetime=strptime(paste(week1Data$Date, week1Data$Time), format="%d/%m/%Y %H:%M:%S")
             
png(file="plot4.png", width=480, height=480, units="px")
par(mfrow=c(2,2), mar=c(5,4,2,1))
plot(datetime, week1Data$Global_active_power, type="l", xlab="", ylab="Global Active Power")
plot(datetime, week1Data$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(datetime, week1Data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(datetime, week1Data$Sub_metering_2, col="red")
lines(datetime, week1Data$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=1, lwd=2, cex=0.7)
plot(datetime, week1Data$Global_reactive_power, type="l", xlab="datetime", ylab="Global Reactive Power")
dev.off()