setwd("C:/Users/Simeon/Desktop/R Language")

if (!file.exists('plots')) {
  dir.create('plots')
}

source('data2/Data_Cleaning.R')

png(filename='plots/plot1.png',width=480,height=480,units='px')

hist(subsetted.data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylim=c(0, 800000))

dev.off()
