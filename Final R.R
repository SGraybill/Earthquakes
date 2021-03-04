myFileLocation = "C:/Users/sophi/Desktop/GEOG 456/Nepal Earthquake Mapping/NewData.csv"
df=read.csv(myFileLocation)
summary(df)
df$time= strptime(df$time,"%Y-%m-%dT%H:%M:%OS")
df1=data.frame(time=df$time,lat=df$latitude, long=df$longitude, mag=df$mag)
library(jsonlite)
write_json(df1, "C:/Users/sophi/Desktop/GEOG 456/Nepal Earthquake Mapping/NewData.json", dataframe=c("columns"))
