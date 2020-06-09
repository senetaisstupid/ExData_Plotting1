## Create plots
# plot1: frequency of global active power

source("readWeek1Data.R")
load("week1Data.Rda")
png(file="plot1.png")
with(week1Data, hist(Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)",
              ylab="Frequency", col="red"))
dev.off()