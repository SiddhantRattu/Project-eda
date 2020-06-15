#Annual and seasonal runoff
# Question
library(data.table)
library(ggplot2)
list.file(data)
library(moments)
runoff_eu_day <- readRDS(file = './data/raw/runoff_eu_day.rds')
runoff_eu_year<- readRDS(file = './data/raw/runoff_eu_year.rds')
runoff_eu_info<- readRDS(file = './data/raw/runoff_eu_info.rds')

runoff_stats_tidy <- runoff_eu_day[, .(mean_day = round(mean(value), 0),
                                    sd_day = round(sd(value), 0),
                                    min_day = round(min(value), 0),
                                    max_day = round(max(value), 0)), by = sname]
runoff_stats_tidy
ggplot(runoff_stats_tidy, aes(x= sname, y=value, col= sname ))+ geom_point()+
  geom_point(size=2, shape=23)

#Question
library(moments)
skewness(runoff_stats$sd_day)
skewness(runoff_stats$mean_day)

sd(runoff_stats$sd_day, na.rm=TRUE)/
  mean(runoff_stats$sd_day, na.rm=TRUE)*100

#Question
#mean/high and mean/low runoff ratios for before and after 1980
library(data.table)
library(ggplot2)
colset_4 <-  c("#D35C37", "#BF9A77", "#D6C6B9", "#97B8C2")
ggplot(runoff_eu_year[year < 1980], aes(factor(year),LQ) +
  geom_line() +
  geom_point() + 
  scale_color_manual(values = colset_4[c(1, 2, 4)]) 

