#Import dplyr
library(dplyr) 

#Read CSV file and create dataframe
mpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 

#Create multiple linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_table) 

#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_table))

