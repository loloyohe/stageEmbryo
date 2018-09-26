#compile the functions in stageEmbryo.R
#change /pwd/ to your present working directory
#where all the stageEmbryo function and staging spreadsheets are
#setwd()
source('stageEmbryo.R', echo=TRUE)

#when is my chick ready?
#read in the .csv file of the chick stage
chick<-read.csv("chickStages.csv", header =T)
#format#"12/31/2012 23:59:59"
stage.Embryo.Hour(fert = "09/14/2018 14:00:00", stage.guide = chick)

#save output as text file, change directory and name of file as needed
sink("myChickStages.txt")
stage.Embryo.Hour(fert = "09/14/2018 14:00:00", stage.guide = chick)
sink()


quail<-read.csv("quailStages.csv", header =T)
stage.Embryo.Hour(fert = "09/14/2018 14:00:00", stage.guide = chick)
