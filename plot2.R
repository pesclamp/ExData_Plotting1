# Prepare environment
source(file = "prepare_data.R")

# Plot 2
png(filename = "plot2.png", width = 480, height = 480)
plot(hpc_2d$DateTime,
     hpc_2d$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()