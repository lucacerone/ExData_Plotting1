if (!exists("household")) source("import_data.R")

plot(household$DateTime, household$Sub_metering_1,
     xlab = "", ylab = "Energy sub metering", type="l")
lines(household$DateTime, household$Sub_metering_2, col = "red")
lines(household$DateTime, household$Sub_metering_3, col = "blue")

legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col=c("black","red","blue"), lty=1, cex=.7, y.intersp=0.4)

dev.copy(png,filename = "plot3.png", width = 480, height = 480)
dev.off()
