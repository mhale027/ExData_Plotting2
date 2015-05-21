plot2 <- function() { 
        NEI <- readRDS("summarySCC_PM25.rds")
        SCC <- readRDS("Source_Classification_Code.rds")
        
        NEI <- select(NEI, year, Emissions, fips)
        NEI <- filter(NEI, fips == "24510")
        
        by.year <- with(NEI, tapply(Emissions, year, sum))
        
        png("plot2.png", height = 480, width = 480)
        
        
        barplot(by.year, xlab = "Year", ylab = "Total PM25 Emissions")
        
        
        dev.off()
        
        
        
}