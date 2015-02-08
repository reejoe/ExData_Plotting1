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

## set attributes for graph and produce histogram
png("plot1.png", width=480, height=480)
hist(globalActivePwr, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()
