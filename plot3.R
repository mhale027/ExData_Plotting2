plot3 <- function() { 
        NEI <- readRDS("summarySCC_PM25.rds")
        SCC <- readRDS("Source_Classification_Code.rds")

        
        NEI <- filter(NEI, fips == "24510")
        NEI <- select(NEI, year, Emissions, type)
        
        
        png("plot3.png", height = 480, width = 480)
        
        g <- ggplot(NEI, aes(factor(year), Emissions, fill=type))
        g + geom_bar(stat="identity") + facet_wrap(~type, ncol=2)
        
        dev.off()
        
        
        
}