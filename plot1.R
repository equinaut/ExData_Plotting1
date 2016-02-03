source('load_data.R')

png('plot1.png', bg = "transparent")

par(mar = c(5, 4, 2, 2))
hist(dat$Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency")

dev.off()