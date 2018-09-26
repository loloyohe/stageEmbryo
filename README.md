# stageEmbryo
This is a collection of mini functions to properly stage your embryos. The chick stages are based off of median estimates from the Hamburger Hamilton stages. The quails are median estimates that are approximately 90% of the time of the chicken embryo development.

Stage your own embryo depending on the organism. Create your own .csv of the stages of your embryo, modeled off the examples. Use the stage.Embryo.Hour() for hour-day time scales. Use stage.Embryo.Minute() for faster developing organisms on the minute-hour time scale.
### example
```r
chick<-read.csv("chickStages.csv", header =T)
#format#"12/31/2012 23:59:59"
stage.Embryo.Hour(fert = "09/14/2018 14:00:01", stage.guide = chick)
```
### output
Output is character list.
> "Stage 1: 2018-09-14 15:00:01"

> "Stage 2: 2018-09-14 20:00:01"

> "Stage 3: 2018-09-15 02:00:01"

> "Stage 4: 2018-09-15 08:00:01"

...

> "Stage 45: 2018-10-04 02:00:01"

> "Stage 46: 2018-10-05 02:00:01"

