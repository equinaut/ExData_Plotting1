source('load_data.R')

png('plot3.png', bg = "transparent")

plot(dat$DateTime, dat$Sub_metering_1, 
     type="l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(dat$DateTime, dat$Sub_metering_2, col = "red")
lines(dat$DateTime, dat$Sub_metering_3, col = "blue")
legend("topright", 
       lty=c(1,1), 
       col = c("black","red","blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

dev.off()