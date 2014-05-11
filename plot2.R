pow<-read.csv("household_power_consumption.txt",sep=";")
powselect<-(pow[66637:69516,])
datetime<-paste(powselect$Date,powselect$Time)
datetime<-strptime(datetime,"%d/%m/%Y %H:%M:%S")
powselect<-cbind(datetime,powselect)
png(file="plot2.png")
plot(powselect$datetime,as.numeric(powselect$Global_active_power)/500, type="l",ylab="Global Active Power (killowatts)",xlab="")
dev.off()


