plot4 <- function() { 
        NEI <- readRDS("summarySCC_PM25.rds")
        SCC <- readRDS("Source_Classification_Code.rds")
        
        ids.coal <- grep("coal", SCC$Short.Name, ignore.case=TRUE)
        ids.comb <- grep("comb", SCC$SCC.Level.One, ignore.case=TRUE)
        ids.comb.coal <- ids.comb[ids.comb %in% ids.coal]
        SCC.comb.coal <- unique(SCC$SCC[ids.comb.coal])
        
        
        NEI <- NEI[NEI$SCC %in% SCC.comb.coal,]
        
        
        png("plot4.png", height = 480, width = 480)
        
        g <- ggplot(NEI, aes(factor(year), Emissions))
        g + geom_bar(stat="identity")
        
        dev.off()
        
        
        
}
