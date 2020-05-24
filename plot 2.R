#Reading Data
NEI <- readRDS("C:/Users/Administrator/Documents/RFile/coursera/Exploratory Data Analsys/week 4/summarySCC_PM25.rds")
SCC <- readRDS("C:/Users/Administrator/Documents/RFile/coursera/Exploratory Data Analsys/week 4/Source_Classification_Code.rds")


#Question 2:

subsetNEI  <- NEI[NEI$fips=="24510", ]

aggregatedTotalByYear <- aggregate(Emissions ~ year, subsetNEI, sum)

png('plot2.png')
barplot(height=aggregatedTotalByYear$Emissions, names.arg=aggregatedTotalByYear$year, xlab="years", ylab=expression('total PM'[2.5]*' emission'),main=expression('Total PM'[2.5]*' in the Baltimore City, MD emissions at various years'))
dev.off()
