nei <- readRDS("summarySCC_PM25.rds")
scc <- readRDS("Source_Classification_Code.rds")

yrs <- <- unique(nei[, 6])

baltcity <- unique(subset(nei, fips == "24510"))

sum99 <- sum(baltcity[baltcity$year == "1999",4])
sum02 <- sum(baltcity[baltcity$year == "2002",4])
sum05 <- sum(baltcity[baltcity$year == "2005",4])
sum08 <- sum(baltcity[baltcity$year == "2008",4])


vals <- c(sum99, sum02, sum05, sum08)

png("plot2.png",width=480,height=480,units='px')

plot(yrs, vals, type = "o", main = "Total PM25 emissions from all sources for Baltimore City", xlab = "Years", ylab = "Total emissions")
dev.off()

lapply(DF, function(x) length(table(x)))