a1plot3 <- function(){
        temp <- read.table("eda_a1/household_power_consumption.txt", header= TRUE, sep =";", na.strings = "?")
        temp <- na.omit(temp)
        temp$Date <- as.Date(as.character(temp$Date), "%d/%m/%Y")
        temp$Time <- strptime(paste(as.character(temp$Date), temp$Time), format ="%Y-%m-%d %H:%M:%S")
        
        temp <- subset(temp, temp$Date >= as.Date("2007-02-01") & temp$Date <= as.Date("2007-02-02"))
        
        
        
        png(file = "plot3.png")
        
        plot(temp$Time, temp$Sub_metering_1, type="l", , xlab = "", ylab = "Energy sub metering")
        lines(temp$Time, temp$Sub_metering_2, col= "Red")
        lines(temp$Time, temp$Sub_metering_3, col= "Blue")
        legend("topright", lty=c(1,1,1), col = c("Black", "Blue", "Red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        dev.off()
}