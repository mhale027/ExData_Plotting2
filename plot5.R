plot5 <- function() { 
        NEI <- readRDS("summarySCC_PM25.rds")
        SCC <- readRDS("Source_Classification_Code.rds")
        
        NEI <- NEI[NEI$fips == "24510",]
        NEI <- NEI[NEI$type == "ON-ROAD",]
        
        
        
        png("plot5.png", height = 480, width = 480)
        
        g <- ggplot(NEI, aes(factor(year), Emissions))
        g + geom_bar(stat="identity")
        
        
        
        dev.off()
        
        
}