nei <- readRDS("summarySCC_PM25.rds")
scc <- readRDS("Source_Classification_Code.rds")

sum99 <- sum(nei[nei$year == "1999",4])
sum02 <- sum(nei[nei$year == "2002",4])
sum05 <- sum(nei[nei$year == "2005",4])
sum08 <- sum(nei[nei$year == "2008",4])

yrs <- <- unique(nei[, 6])

vals <- c(sum99, sum02, sum05, sum08)

png("plot1.png",width=480,height=480,units='px')

plot(yrs, vals, type = "o", main = "Total PM25 emissions from all sources", xlab = "Years", ylab = "Total")

dev.off()

