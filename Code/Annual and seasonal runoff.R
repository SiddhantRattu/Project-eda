#Annual and seasonal runoff
library(data.table)

runoff_eu_day <- readRDS(file = './data/raw/runoff_eu_day.rds')
runoff_eu_year<- readRDS(file = './data/raw/runoff_eu_year.rds')
runoff_eu_info<- readRDS(file = './data/raw/runoff_eu_info.rds')
daily_runoff <- readRDS(file = "./data/daily_runoff.rds")