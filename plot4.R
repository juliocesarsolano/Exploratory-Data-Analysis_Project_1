Objective

To examine how household energy usage varies over a 2-day period in February, 
2007 while learning to clean data and generate preliminary plots.

Data

Source

This assignment uses data from the UC Irvine Machine Learning Repository, a 
popular repository for machine learning datasets. In particular, the “Individual 
household electric power consumption Data Set.”

Description

Measurements of electric power consumption in one household with a one-minute 
sampling rate over a period of almost 4 years. Different electrical quantities 
and some sub-metering values are available.

Variables

Date: Date in format dd/mm/yyyy
Time: time in format hh:mm:ss
Global_active_power: household global minute-averaged active power (in kilowatt)
Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
Voltage: minute-averaged voltage (in volt)
Global_intensity: household global minute-averaged current intensity (in ampere)
Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). 
It corresponds to the kitchen, containing mainly a dishwasher, an oven and a 
microwave (hot plates are not electric but gas powered).
Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). 
It corresponds to the laundry room, containing a washing-machine, a tumble-drier, 
a refrigerator and a light.
Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). 
It corresponds to an electric water-heater and an air-conditioner.

# Plot 4
setwd("D:/1. DATOS/4. COURSES E-LEARNING/EXPLORATORY DATA ANALYSIS/Week_1/Project_1")

png(file = "plot4.png", width=480, height=480, bg="white")
par(mfrow = c(2, 2))
# Plot 1
hist(power$Global_active_power, xlab = "Global Active Power (kilowatts)", ylab = "Frecuency", main = "Global Active Power", 
col="red")
# Plot 2
plot(power$DateTime, power$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
# Plot 3
plot(power$DateTime, power$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(power$DateTime, power$Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub metering", 
    col = "red")
points(power$DateTime, power$Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub metering", 
    col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", 
    "Sub_metering_2", "Sub_metering_3"))
# Plot 4
plot(power$DateTime, power$Global_reactive_power, type = "l", xlab = "DateTime", 
    ylab = "Global_reactive_power", ylim = c(0, 0.5))
dev.off()
