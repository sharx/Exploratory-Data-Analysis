##Load all dataset
hpc <- read.csv("household_power_consumption.txt", header= TRUE ,sep=";", na.strings="?", stringsAsFactors=FALSE)
hpc2 <- hpc[min(which(hpc$Date == "1/2/2007")):max(which(hpc$Date == "2/2/2007")),]
##one plot only
par(mfrow=c(1,1))

##draw plot 2
plot(hpc2$Global_active_power,col="black",type="l")
##write into a png file
dev.copy(png,file="Plot 2.png")
##close the file
dev.off()
