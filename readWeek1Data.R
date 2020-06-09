## Download the data file
if(!file.exists("household_power_consumption.txt")) {
    temp <- tempfile()
    fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"    
    download.file(fileURL, temp, mode="wb")
    unzip(temp)
    unlink(temp)
}

## Read the conditional data
if(!file.exists("week1Data.Rda")) {
    library(data.table)
    week1Data <- fread("household_power_consumption.txt", skip="1/2/2007", data.table=FALSE, nrows=2880)
    names(week1Data) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", 
                 "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
    save(week1Data, file="week1Data.Rda")
}