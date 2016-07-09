# Plot 1
png(filename = "plot1.png", width = 480, height = 480)
hist(hpc_2d$Global_active_power,
     ylim = range(c(0,200,400,600,800,1000,1200)),
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()