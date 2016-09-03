# Read the dataset.


household_file <- "household_power_consumption.txt"

if (!file.exists(household_file)){
    data_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    data_archive <- "data.zip"
    download.file(data_url, data_archive, method="curl")
    unzip(data_archive)
    unlink(data_archive)
    rm(data_url,data_archive)
}

household <- read.table(household_file, na.strings="?", sep=";", 
                        colClasses = c("character","character",rep("numeric",7)),header = TRUE)
household$DateTime <- paste(household$Date, household$Time)
household$DateTime <- strptime(household$DateTime, format="%d/%m/%Y %H:%M:%S")
household <- subset(household , DateTime >= strptime("2007-02-01","%Y-%m-%d") &
                        DateTime < strptime("2007-02-03","%Y-%m-%d"))
