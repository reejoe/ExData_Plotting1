## function to read input file, convert date and time formats from character,
## sub set data based on input from and to date range

loadData <- function (fromDt,toDt) {
  filename      <- "household_power_consumption.txt"
  fullData      <- read.table(filename,header = TRUE, sep =";", na.strings = "?",stringsAsFactors=FALSE)
  fullData$Time <- strptime(paste(fullData$Date,fullData$Time),"%d/%m/%Y %H:%M:%S")
  fullData$Date <- as.Date (fullData$Date, "%d/%m/%Y")
  dateRange     <- as.Date(c(fromDt,toDt),"%Y-%m-%d")
  subData       <- subset(fullData, Date %in% dateRange)
  return (subData)
}