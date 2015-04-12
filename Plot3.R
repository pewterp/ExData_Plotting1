setwd("C:/Users/Simeon/Desktop/R Language")

if (!file.exists('plots')) {
  dir.create('plots')
}

source('data2/Data_Cleaning.R')

png(filename='plots/plot3.png',width=480,height=480,units='px')

lncol<-c('black','red','blue')
lbls<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(subsetted.data$DateTime,subsetted.data$Sub_metering_1,type='l',col=lncol[1],xlab='',ylab='Energy sub metering')
lines(subsetted.data$DateTime,subsetted.data$Sub_metering_2,col=lncol[2])
lines(subsetted.data$DateTime,subsetted.data$Sub_metering_3,col=lncol[3])

legend('topright',legend=lbls,col=lncol,lty='solid')

dev.off()
