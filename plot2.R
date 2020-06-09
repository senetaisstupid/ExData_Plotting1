## Create plots
# plot2: trend of global active power

source("readWeek1Data.R")
load("week1Data.Rda")
library(lubridate)
datetime=strptime(paste(week1Data$Date, week1Data$Time), format="%d/%m/%Y %H:%M:%S")
             
png(file="plot2.png")
plot(datetime, week1Data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()