library(dplyr)
library(ggplot2)

energy <- function()
{
  energy <- read.csv("./Data_raw/energy-usage-2010.csv", header=T, stringsAsFactors=F)
}
e <- energy()

get_months <- function() 
{
  months <- c("JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE",
              "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER")
  return(months)
}

get_total_KWH_month <- function(month, df) 
{
  month_key <- paste("KWH.", month, ".2010", sep="")
  month_v <- df[[month_key]]
  total <- sum(month_v, na.rm=T)
  return(total)
}

get_total_therm_month <- function(month)
{
  month_key <- paste("THERM.", month, ".2010", sep="")
  month_v <- e[[month_key]]
  total <- sum(month_v, na.rm=T)
  return(total)
}

get_building_type <- function(type)
{
  e <- filter(e, BUILDING.TYPE==type)
  return(e)
}





