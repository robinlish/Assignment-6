library(ggmap)
bude <- geocode("bude England UK")
beach <- geocode(c("Summerleaze Beach Bude UK","Crooklets Beach Bude UK"))
#roadmap
budemap <- get_map(bude,zoom=14,maptype="roadmap")
#two beaches
ggmap(budemap)+geom_point(
  aes(x=lon,y=lat),data=beach,fill="red",size=3,shape=25,stroke=1)

#cricket ground
cricket <- geocode("Cricket Club Bude UK")
ggmap(budemap)+geom_point(
  aes(x=lon,y=lat),data=beach,fill="red",size=3,shape=25,stroke=1)+geom_point(
    aes(x=lon,y=lat),data=cricket,fill="red",size=3,shape=23,stroke=1)

#a nearby pub
pub <- geocode("Crooklets Inn Bude UK")
ggmap(budemap)+geom_point(
  aes(x=lon,y=lat),data=beach,fill="red",size=3,shape=25,stroke=1)+geom_point(
    aes(x=lon,y=lat),data=cricket,fill="red",size=3,shape=23,stroke=1)+geom_point(
      aes(x=lon,y=lat),data=pub,fill="red",size=3,shape=21,stroke=1)

#route from cricket ground to the pub
from <- "Cricket Club Bude UK"
to <- "Crooklets Inn Bude UK"
route <- route(from,to,structure="route")
ggmap(budemap)+geom_point(
  aes(x=lon,y=lat),data=beach,fill="red",size=3,shape=25,stroke=1)+geom_point(
    aes(x=lon,y=lat),data=cricket,fill="red",size=3,shape=23,stroke=1)+geom_point(
      aes(x=lon,y=lat),data=pub,fill="red",size=3,shape=21,stroke=1)+geom_path(
  aes(x = lon, y = lat),  colour = "red", size = 1.5,
  data = route, lineend = "round"
)

#watercolor
budemap1 <- get_map(bude,zoom=14,maptype="watercolor")
ggmap(budemap1)+geom_point(
  aes(x=lon,y=lat),data=beach,fill="red",size=3,shape=25,stroke=1)

#two beaches
ggmap(budemap1)+geom_point(
  aes(x=lon,y=lat),data=beach,fill="red",size=3,shape=25,stroke=1)

#cricket ground
cricket <- geocode("Cricket Club Bude UK")
ggmap(budemap1)+geom_point(
  aes(x=lon,y=lat),data=beach,fill="red",size=3,shape=25,stroke=1)+geom_point(
    aes(x=lon,y=lat),data=cricket,fill="red",size=3,shape=23,stroke=1)

#a nearby pub
pub <- geocode("Crooklets Inn Bude UK")
ggmap(budemap1)+geom_point(
  aes(x=lon,y=lat),data=beach,fill="red",size=3,shape=25,stroke=1)+geom_point(
    aes(x=lon,y=lat),data=cricket,fill="red",size=3,shape=23,stroke=1)+geom_point(
      aes(x=lon,y=lat),data=pub,fill="red",size=3,shape=21,stroke=1)

#route from cricket ground to the pub
from <- "Cricket Club Bude UK"
to <- "Crooklets Inn Bude UK"
route <- route(from,to,structure="route")
ggmap(budemap1)+geom_point(
  aes(x=lon,y=lat),data=beach,fill="red",size=3,shape=25,stroke=1)+geom_point(
    aes(x=lon,y=lat),data=cricket,fill="red",size=3,shape=23,stroke=1)+geom_point(
      aes(x=lon,y=lat),data=pub,fill="red",size=3,shape=21,stroke=1)+geom_path(
        aes(x = lon, y = lat),  colour = "red", size = 1.5,
        data = route, lineend = "round"
      )
