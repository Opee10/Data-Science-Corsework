#Read the csv file
var <- read.csv("Projectdata.csv")
var 

#Mean Operation 
#Missing value
var$Assault = ifelse(is.na(var$Assault),
  ave(var$Assault, FUN = function (x)mean(x, na.rm = TRUE)), var$Assault) #Average 
var

#Placing Demical scale
var$Assault =
  as.numeric(format(round(var$Assault, 2)))
var

#Integrate new row called type
set.seed(40)
var$type <- rep(NA, nrow(var))
var

#Condition
var[var$Urban.Population...>0 & var$Urban.Population...<50, ] [ ,"type" ] = "small"
var
var[var$Urban.Population...>=50 & var$Urban.Population...<60, ] [ ,"type" ] = "medium"
var
var[var$Urban.Population...>=60 & var$Urban.Population...<70, ] [ ,"type" ] = "Large"
var
var[var$Urban.Population...>=70, ] [ ,"type" ] = "Extra-Large"
var
#var$type = factor(var$type,levels = c('small', 'medium','large','Extra-Large'), labels = c(1,2,3,4))
#var