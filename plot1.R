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

full_dataset <- read.table(household_power_consumption, sep = ";", header = T, na.strings = "?")
data<- subset(full_dataset, (full_dataset$Date == "1/2/2007" | full_dataset$Date== "2/2/2007")) 
power$Datetime <- strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M:%S")
head(power)
        Date     Time Global_active_power Global_reactive_power Voltage
1 01/02/2007 00:00:00               0.326                 0.128  243.15
2 01/02/2007 00:01:00               0.326                 0.130  243.32
3 01/02/2007 00:02:00               0.324                 0.132  243.51
4 01/02/2007 00:03:00               0.324                 0.134  243.90
5 01/02/2007 00:04:00               0.322                 0.130  243.16
6 01/02/2007 00:05:00               0.320                 0.126  242.29
  Global_intensity Sub_metering_1 Sub_metering_2 Sub_metering_3
1              1.4              0              0              0
2              1.4              0              0              0
3              1.4              0              0              0
4              1.4              0              0              0
5              1.4              0              0              0
6              1.4              0              0              0

# Plot 1
png(file = "plot1.png", width=480, height=480, bg="white")
hist(power$Global_active_power, xlab = "Global Active Power (kilowatts)", ylab = "Frecuency", main = "Global Active Power", 
col="red")
dev.off()
