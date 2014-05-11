a1plot1 <- function(){
        temp <- read.table("eda_a1/household_power_consumption.txt", header= TRUE, sep =";", na.strings = "?")
        temp <- na.omit(temp)
        temp$Date <- as.Date(as.character(temp$Date), "%d/%m/%Y")
        temp <- subset(temp, temp$Date >= as.Date("2007-02-01") & temp$Date <= as.Date("2007-02-02"))
        
        
        png(file = "plot1.png")
        hist(temp$Global_active_power, col ="Red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
        dev.off()
        
}