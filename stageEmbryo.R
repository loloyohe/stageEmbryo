library(lubridate)
setwd("~/Documents/Analyses/embryoStage")

#when is my chick ready?
chick<-read.csv("chickStages.csv", header =T)
#fomat#"12/31/2012 23:59:59"
stage.Embryo<-function(fert, stage.guide){
  start<-mdy_hms(fert)
  time.table<-c()
  for(i in 1:length(stage.guide[,1])){
    time<-as.period(as.integer(stage.guide[i,2]))
    end <- start + hours(time)
    msg<-sprintf("Stage %s: %s", stage.guide[i,1], end)
    print(msg)
  }
}

stage.Embryo("09/14/2018 14:00:00", chick)

library(lubridate)
ymd_hms("2012-12-31 23:59:59")
## [1] "2012-12-31 23:59:59 UTC"
ldate <- mdy_hms("12/31/2012 23:59:59")
ldate + seconds(1)
## [1] "2013-01-01 UTC"
month(ldate) <- 8
