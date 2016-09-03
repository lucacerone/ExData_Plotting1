if (!exists("household")) source("import_data.R")

plot(household$DateTime, household$Global_active_power,
     xlab = "", ylab = "Global Active Power (kilowatts)", type="l")

dev.copy(png,filename = "plot2.png", width = 480, height = 480)
dev.off()
