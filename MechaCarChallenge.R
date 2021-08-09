#MPG Prediction Multiple Linear Regression

#Import dplyr
library(dplyr) 

#Read CSV file and create dataframe
mpg_table <- read.csv(file='Data/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 

#Create multiple linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_table) 

#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_table))



# Suspension manufacturing quality

#Read CSV file and create dataframe
coil_table <- read.csv(file='Data/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Get the mean, median, variance, and standard deviation of the suspension coil's PSI
total_summary <- coil_table %>% summarize(Mean=mean(PSI),
                                          Median=median(PSI), 
                                          Variance=var(PSI), 
                                          SD=sd(PSI))

# Group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI
lot_summary <- coil_table  %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), 
                                                                         Median=median(PSI), 
                                                                         Variance=var(PSI), 
                                                                         SD=sd(PSI), 
                                                                         .groups='keep')



#  T-Test to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 PSI
t.test(coil_table$PSI, mu = 1500)

#  T-Tests to determine if the PSI for each manufacturing lots is statistically different from the population mean of 1,500 PSI
t.test(subset(coil_table, Manufacturing_Lot == 'Lot1', select = c(PSI)), mu = 1500)
t.test(subset(coil_table, Manufacturing_Lot == 'Lot2', select = c(PSI)), mu = 1500)
t.test(subset(coil_table, Manufacturing_Lot == 'Lot3', select = c(PSI)), mu = 1500)
