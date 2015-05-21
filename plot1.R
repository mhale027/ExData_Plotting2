plot1 <- function() { 
        NEI <- readRDS("summarySCC_PM25.rds")
        SCC <- readRDS("Source_Classification_Code.rds")
        
        NEI <- select(NEI, year, Emissions)
        by.year <- with(NEI, tapply(Emissions, year, sum))
        
        png("plot1.png", height = 480, width = 480)
        
        barplot(by.year, xlab = "Year", ylab = "Total PM2.5 Emissions",)

        dev.off()
        
        
        
}