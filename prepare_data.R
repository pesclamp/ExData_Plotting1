# Prepare environment
library("dplyr")
if (!dir.exists("data")) {
  dir.create("data")
}

# Download & unzip data file
if (!file.exists("data/household_power_consumption.zip")) {
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                "data/household_power_consumption.zip")
}

if (!file.exists("data/household_power_consumption.txt")) {
  unzip("data/household_power_consumption.zip")
}

# Read file
hpc_all <- read.csv("data/household_power_consumption.txt",
                    sep=";",
                    na.strings="?")

# Convert date and time columns
hpc_all <- mutate(hpc_all, Date = as.Date(Date, "%d/%m/%Y"))
hpc_all <- mutate(hpc_all, DateTime = as.POSIXct(strptime(paste(Date, Time), "%Y-%m-%d %H:%M:%S")))

# Subset necesary rows
hpc_2d <- subset(hpc_all,
                 Date == as.Date(c("1/2/2007"), "%d/%m/%Y") | Date == as.Date(c("2/2/2007"), "%d/%m/%Y"))
