## Create plots
# plot3: trend of submetering

source("readWeek1Data.R")
load("week1Data.Rda")
library(lubridate)
datetime=strptime(paste(week1Data$Date, week1Data$Time), format="%d/%m/%Y %H:%M:%S")
             
png(file="plot3.png")
plot(datetime, week1Data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(datetime, week1Data$Sub_metering_2, col="red")
lines(datetime, week1Data$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=1, lwd=2)
dev.off()