## load the source code for function loadData
source ("loadData.R")

## set date range
fromDate <- "2007-02-01"
toDate   <- "2007-02-02"

## if graph data is already subset and available do not load again
if (is.null(graphData))
  graphData <- loadData (fromDate, toDate)

## convert character to numeric
subMetering1 <- as.numeric(graphData$Sub_metering_1)
subMetering2 <- as.numeric(graphData$Sub_metering_2)
subMetering3 <- as.numeric(graphData$Sub_metering_3)

## set attributes for graph and produce graphs
png("plot3.png", width=480, height=480)
plot(graphData$Time,subMetering1,type = "l", xlab = "", ylab = "Energy sub metering",col = "black")
lines(graphData$Time,subMetering2,type = "l",col="red")
lines(graphData$Time,subMetering3,type = "l",col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
