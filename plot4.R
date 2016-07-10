# Prepare environment
source(file = "prepare_data.R")

# Plot 4
png(filename = "plot4.png", width = 480, height = 480)

# Frame set
par(mfcol = c(2,2))

# Global Active Power
plot(hpc_2d$DateTime,
     hpc_2d$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power")

# Sub metering
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
       lty = c(1,1,1),
       bty = "n")

# Voltage
plot(hpc_2d$DateTime,
     hpc_2d$Voltage,
     type = "l",
     xlab = "datetime",
     ylab = "Voltage")

# Global reactive power
plot(hpc_2d$DateTime,
     hpc_2d$Global_reactive_power,
     type = "l",
     xlab = "datetime",
     ylab = "Global_reactive_power")

dev.off()