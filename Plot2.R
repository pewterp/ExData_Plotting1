setwd("C:/Users/Simeon/Desktop/R Language")

if (!file.exists('plots')) {
  dir.create('plots')
}

source('data2/Data_Cleaning.R')

png(filename='plots/plot2.png',width=480,height=480,units='px')

plot(subsetted.data$DateTime, subsetted.data$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = 'l')

dev.off()
