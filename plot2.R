png('plot2.png', bg = "transparent")

plot(dat$DateTime, dat$Global_active_power, 
     type="l",
     xlab = '',
     ylab = 'Global Active Power (kilowatts)')

dev.off()