library(lubridate)
setwd("~/Documents/Analyses/stageEmbryo/")


#fomat#"12/31/2012 23:59:59"
stage.Embryo.Hour<-function(fert, stage.guide){
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

#if your embryo guide is staged in minutes
stage.Embryo.Minute<-function(fert, stage.guide){
  start<-mdy_hms(fert)
  time.table<-c()
  for(i in 1:length(stage.guide[,1])){
    time<-as.period(as.integer(stage.guide[i,2]))
    end <- start + minutes(time)
    msg<-sprintf("Stage %s: %s", stage.guide[i,1], end)
    print(msg)
  }
}

