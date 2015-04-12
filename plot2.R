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

# Plot 2
setwd("D:/1. DATOS/4. COURSES E-LEARNING/EXPLORATORY DATA ANALYSIS/Week_1/Project_1")
power <- read.csv("power_jul.csv")
power$DateTime <- strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M:%S")
head(power)
png(file = "plot2.png", width=480, height=480, bg="white")
plot(power$DateTime, power$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
