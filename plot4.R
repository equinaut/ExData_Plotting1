source('load_data.R')

png('plot4.png', bg = "transparent")

par(mfrow=c(2, 2))

# (1, 1) -- datetime, global active power
plot(dat$DateTime, dat$Global_active_power, 
     type="l",
     xlab = '',
     ylab = 'Global Active Power (kilowatts)')

# (1, 2) -- datetime, voltage
plot(dat$DateTime, dat$Voltage, 
     type="l",
     xlab = 'datetime',
     ylab = 'Voltage')

# (2, 1) -- datetime, energy sub metering
plot(dat$DateTime, dat$Sub_metering_1, 
     type="l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(dat$DateTime, dat$Sub_metering_2, col = "red")
lines(dat$DateTime, dat$Sub_metering_3, col = "blue")
legend("topright", 
       lty=c(1,1), 
       bty = "n",
       col = c("black","red","blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

# (2, 2) -- datetime, global reactive power
plot(dat$DateTime, dat$Global_reactive_power, 
     type="l",
     xlab = 'datetime',
     ylab = 'Global_reactive_power')

dev.off()