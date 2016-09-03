if (!exists("household")) source("import_data.R")

par(mfrow=c(2,2))

plot(household$DateTime, household$Global_active_power,
     xlab = "", ylab = "Global Active Power (kilowatts)", type="l")

plot(household$DateTime, household$Voltage,
     xlab = "datetime", ylab = "Voltage", type="l")

plot(household$DateTime, household$Sub_metering_1,
     xlab = "", ylab = "Energy sub metering", type="l")
lines(household$DateTime, household$Sub_metering_2, col = "red")
lines(household$DateTime, household$Sub_metering_3, col = "blue")

legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col=c("black","red","blue"), cex = 0.4,y.intersp=0.1, lty=1, inset = c(-.35, -.45) ,bty="n")

plot(household$DateTime, household$Global_reactive_power,
     xlab = "datetime", ylab = "Global_reactive_power", type="l")

dev.copy(png,filename = "plot4.png", width = 480, height = 480)
dev.off()
