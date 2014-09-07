##Load all dataset
hpc <- read.csv("household_power_consumption.txt", header= TRUE ,sep=";", na.strings="?", stringsAsFactors=FALSE)
hpc2 <- hpc[min(which(hpc$Date == "1/2/2007")):max(which(hpc$Date == "2/2/2007")),]
##one plot only
par(mfrow=c(1,1))

##draw plot 1
hist(hpc2$Global_active_power,col="red",main="Global active power",xlab="Global active power(kilowatts)")
##write into a png file
dev.copy(png,file="Plot 1.png")
##close the file
dev.off()
