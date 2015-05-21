plot6 <- function() { 
        NEI <- readRDS("summarySCC_PM25.rds")
        SCC <- readRDS("Source_Classification_Code.rds")
        
        NEI <- NEI[NEI$fips == "24510" | NEI$fips == "06037",]
        NEI[NEI$fips == "24510",1] <- "Baltimore City"
        NEI[NEI$fips == "06037",1] <- "Los Angeles County"
        
        NEI <- NEI[NEI$type == "ON-ROAD",]
        
        
        
        png("plot6.png", height = 480, width = 480)
        
        g <- ggplot(NEI, aes(factor(year), Emissions, fill=fips))
        g + geom_bar(stat="identity") + facet_grid(.~fips) 
        
        
        dev.off()
        
        
}