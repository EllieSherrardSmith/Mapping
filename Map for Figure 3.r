library(rworldmap)
library(ggmap)
library(rworldxtra)
library(GISTools)



newmap <- getMap(resolution = "low")
plot(newmap, xlim = c(-6, 18.5), ylim = c(42, 68), asp = 1,col="grey95")
north.arrow(xb=-8, yb=68, len=0.1, lab="N",cex.lab=1.5,col='gray10')
map.scale(-6, 68,2,"100 Km", 2, 1)

data<-read.csv("C:\\Users\\Ellie\\Documents\\ParasitolIntFeb2015\\SUBMISSION_17022015\\Revisions\\MapData.csv")
names(data)
summary(data)

points(data$Longitude[data$Species=="Pt"|data$Species=="Ma and Pt"], 
       data$Latitude[data$Species=="Pt"|data$Species=="Ma and Pt"], col = "black",pch=20,cex=1)
#points(data$Longitude[data$Species=="No"|data$Species=="Ma"], 
#       data$Latitude[data$Species=="No"|data$Species=="Ma"], col = "red",pch=4,cex=0.4)

points(data$Longitude[data$Species=="Ma"|data$Species=="Ma and Pt"], 
       data$Latitude[data$Species=="Ma"|data$Species=="Ma and Pt"], col = "grey55",pch=17,cex=1)

points(data$Longitude[data$Species=="Pt"|data$Species=="Ma and Pt"], 
       data$Latitude[data$Species=="Pt"|data$Species=="Ma and Pt"], col = "black",pch=1,cex=1)

text(14.3667,59.35,  "2 Ma")
text(14.3667,58.7, "2 Pt")


text(11.3833, 51.5167,  "2 Ma")
text(11.3833,50.8667, "8 Pt")

text(-0.5,47.85,"4 Ma")
text(2, 47.5,"1 Pt")

