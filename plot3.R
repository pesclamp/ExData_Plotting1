# Prepare environment
source(file = "prepare_data.R")

# Plot 3
png(filename = "plot3.png", width = 480, height = 480)
plot(hpc_2d$DateTime,
     hpc_2d$Sub_metering_1,
     type = "l",
     xlab = "",
     ylab = "Energy sub metering")
with(hpc_2d,
     lines(DateTime,
           Sub_metering_2,
           col = "red",
           type = "l"))
with(hpc_2d,
     lines(DateTime,
           Sub_metering_3,
           col = "blue",
           type = "l"))
legend("topright",
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black","red","blue"),
       lty = c(1,1,1))
dev.off()