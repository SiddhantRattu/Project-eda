
# Ouestion 1

#all stations are located in europe and russia 
#France 
#Czech Republic 
#Lithuania
#Russia
#Ukraine


library(data.table)

runoff_eu_info <- readRDS(<- readRDS(file = './data/raw/runoff_eu_info.rds'))

runoff_eu_info

# Question 2 
# France - rivers - 1, stations- 2
# Czech republic - rivers -3, stations-3
# Lithuania - rivers- 1, stations- 1
# Russia- rivers - 3, stations - 3
# Ukraine - rivers -1, stations- 1

# Question 3 
#France two stations for loire river 
#and other countries have 1 station per river 

# Quetion 4
lon_lat <- ggplot(data = runoff_eu_info, aes(x = Lat, y = Lon, size = Alt)) +
  geom_point() +
  ggtitle("location and altitude of stations")

lon_lat
#Queston 5

library(data.table)

runoff_eu_info <- readRDS(<- readRDS(file = './data/raw/runoff_eu_info.rds'))

runoff_eu_info

record_dis <-ggplot(runoff_eu_info, aes(x = 1:208, y = N.Years)) + 
  geom_bar(stat = "identity", width = 1)

record_dis




