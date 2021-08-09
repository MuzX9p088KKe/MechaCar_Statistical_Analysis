# MechaCar_Statistical_Analysis: Statistical Analysis of Vehicle Production Data

## Analysis Overview
The purpose of this project is to review production data for insights that may help the manufacturing team of a car prototype work through production challenges. 

## Results

### Gas Mileage (MPG) Prediction Through Linear Regression

In order to predict the prototype's potential gas mileage, the potential impact of five variables was taken into account through multiple linear regression in order to determine which of them would have the highest effect. 

The multiple linear regression yielded the following table, which includes equation coefficients:

|    Variables     | Estimate   | Std. Error | t value | Pr(>t)       |
|------------------|------------|------------|---------|--------------|
| (Intercept)      | -1.040e+02 | 1.585e+01  | -6.559  | 5.08e-08 *** |
| vehicle_length   | 6.267e+00  | 6.553e-01  | 9.563   | 2.60e-12 *** |
| vehicle_weight   | 1.245e-03  | 6.890e-04  | 1.807   | 0.0776 .     |
| spoiler_angle    | 6.877e-02  | 6.653e-02  | 1.034   | 0.3069       |
| ground_clearance | 3.546e+00  | 5.412e-01  | 6.551   | 5.21e-08 *** |
| AWD              | -3.411e+00 | 2.535e+00  | -1.346  | 0.1852       |


#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
As the Pr(>|t|) values show a more significant correlation as they approach 0, it seems that the vehicle length and ground clearance both have a strong influence on MPG. Vehicle weight seems to also be a factor but to a much lesser degree.

#### Is the slope of the linear model considered to be zero? Why or why not?
As two of the variables show a strong correlation to gas mileage, the slope cannot be considered zero. If it were, it would mean that none of the variables taken into account have any correlation to the gas mileage.

#### Does this linear model predict mpg of the prototypes effectively? Why or why not?

![image](https://user-images.githubusercontent.com/76575162/128659914-af1578f1-6aa6-4744-8683-10288bb07759.png)

Based on the statistical evidence included in this image, the p-value is 5.35e<sub>2</sub> is less than a 0.05 significance level, rejecting the null hypothesis stating that the slope of the linear model is zero. Also, the r<sup>2</sup> value or determination coefficient is 0.7149 which indicates that the linear model is a little over 70% accurate for this data set.

Although these are good indicators, they only show a high probability of the linear model predicting the mpg of the prototypes accurately. It is not guaranteed that it would work well, especially considering the the high significance of the intercept indicates that some other important factors are missing.

### Suspension Coils Manufacturing Quality

It was deemed necessary to analyze the uniformity and quality of suspension coils over multiple manufacturing locations to ensure all units met expectations.

#### Summary of all lots
The following image show data summaries of the suspension pressure in PSI foir the coils manufactured in all lots compared to each individual lots.

![image](https://user-images.githubusercontent.com/76575162/128660760-cc9eda14-fcdb-406a-a795-81ba3564dda2.png)

#### Summary of all individual lots

![image](https://user-images.githubusercontent.com/76575162/128660706-cf53a320-cab7-4b06-aa1c-017f40d83c19.png)

As shown in the above images, the median PSI of 1500 for the whole population is where most units should be. When taking a closer look at the variance values, it seems lot 3 is a bit of an issue. While lots 1 & 2 have a pretty low variance, lot 3 at 170 is exceeding the manufacturer's variance threshold of 100 PSI.

#### T-Tests

![image](https://user-images.githubusercontent.com/76575162/128662154-14c1574a-79af-4431-82d5-ce83366334b4.png)

All lots compared to population mean.

![image](https://user-images.githubusercontent.com/76575162/128662146-4839486e-ee44-47e2-9bf5-eb5ad880c3fe.png)

Lot 1 compared to population mean.

![image](https://user-images.githubusercontent.com/76575162/128662134-0b1e0be1-4d38-4778-b0cd-8474318ac697.png)

Lot 2 compared to population mean.

![image](https://user-images.githubusercontent.com/76575162/128662123-1c89577a-8712-4ad6-a15c-4bd69246cdbb.png)

Lot 3 compared to population mean.

Thanks to the above T-tests, it seems lot 1 and lot 2 along with all lots together have p-values much higher than 0.05 so their mean PSI is equal to the ideal pressure at 1500PSI. Lot 3, howeverm is a bit below 0.05 although still pretty close. The null hypothesis cannot entirely be rejected and would require further inquiry.

### Study of Prototype Against the competition
In order to compare this prototype car to competitors, the first thing to establish would be what type of vehicles to compare it to; is it closer to a luxury sports car or an affordable 4-door sedan? 
Once the competition has been narrowed to like-vehicles, a more relevant analysis can be conducted.

It is possible to expand on the gas mileage analysis started above. First off, since the intercept seemed to be of significant importance, it seems obvious that other factors such as a vehicle's drag coefficient would greatly influence its performance and fuel consumption. Gathering drag coefficient data and adding it to the multiple linear regression model could create a much more accurate equation.
This data could be supplemented by including EPA-certified gas mileage data for both city and highway driving. Accurate gas mileage data could help a potential customer with their purchase decision.

Obviously, price will be a very important factor for the prototype to be successful. An analysis comparing similar vehicles along both price and performance data would be extremely useful in determining the perfect price point for the prototype. For example, a multiple linear regression model including price, horsepower, drivetrain, displacement, cylinders, 0-60mph time etc. for a sample of vehicles would be a good start.

The cost of ownership year over year and reliability of the vehicle would also be something to investigate. Data could be collected for various similar types of vehicles and grouped by different degrees of usage. This could include tire lifetime and costs, engine maintenance, repair costs and downtime, average daily mileage, etc.
