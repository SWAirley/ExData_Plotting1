a1plot2 <- function(){
        temp <- read.table("eda_a1/household_power_consumption.txt", header= TRUE, sep =";", na.strings = "?")
        temp <- na.omit(temp)
        temp$Date <- as.Date(as.character(temp$Date), "%d/%m/%Y")
        temp$Time <- strptime(paste(as.character(temp$Date), temp$Time), format ="%Y-%m-%d %H:%M:%S")
        
        temp <- subset(temp, temp$Date >= as.Date("2007-02-01") & temp$Date <= as.Date("2007-02-02"))
        
        png(file = "plot2.png")
        plot(temp$Time, temp$Global_active_power, type="l", ylab = "Global Active Power (kilowatts")
        dev.off()
 
}