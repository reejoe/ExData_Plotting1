## load the source code for function loadData
source ("loadData.R")

## set date range
fromDate <- "2007-02-01"
toDate   <- "2007-02-02"

## if graph data is already subset and available do not load again
if (is.null(graphData))
  graphData <- loadData (fromDate, toDate)

## convert character to numeric
globalActivePwr <- as.numeric(graphData$Global_active_power)

## set attributes for graph and produce graphs
png("plot2.png", width=480, height=480)
plot(graphData$Time, globalActivePwr, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
