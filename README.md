# MechaCar_Statistical_Analysis
Challenge Assignment for Module 15

## Background
A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, you’ll help Jeremy and the data analytics team do the following:

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes

* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots

* Run t-tests to determine if the manufacturing lots are statistically different from the mean population

* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

For each statistical analysis, you’ll write a summary interpretation of the findings.


## Linear Regression to Predict MPG

![Linear Regression Model](https://github.com/Itgotworse26/MechaCar_Statistical_Analysis/blob/main/Images/Linear_Regression.JPG)

The linear regression model above estimates that:

```
mpg = vehicle_length(6.267) + vehicle_weight(0.0012) + spoiler_angle(0.0688) + ground_clearance(3.546) + AWD(-3.411) - 104.0
```

* According to the formula and model above, vehicle length and vehicle ground clearance are likely to have a significant impact on the miles per gallon on the MechaCar prototype due to providing non-random amounts of variance to the model. Conversely, the vehicle weight, spoiler angle, and All Wheel Drive (AWD) indicate a random amount of variance with the dataset that makes it less likely to have a significant impact on the miles per gallon.

* Given the model's p-value of 5.35e-11, which is lower than the 0.05 assumed statistical significance, there is strong evidence against the null hypothesis that slope = 0. Therefore, we can accept the alternative hypothesis that the slope is not 0.

* The model's r-squared value of .7149 means that about 71% of the variance in mpg predictions can be explained by this model, while 29% cannot. In other words, the variables of vehicle length, spoiler angle, ground clearance, and AWD have a strong positive association with mpg. Therefore, this model effectively predicts the miles per gallon of MechaCar prototypes.


## Summary Statistics on Suspension Coils

![Total Summary](https://github.com/Itgotworse26/MechaCar_Statistical_Analysis/blob/main/Images/total_summary.JPG)

* According to the total summary above, we can observe that the variance of the suspension coils is about 62.69 pounds per square inch. Therefore, it does not exceed the design specification of 100 pounds per square inch.


![Lot Summary](https://github.com/Itgotworse26/MechaCar_Statistical_Analysis/blob/main/Images/lot_summary.JPG)

* However; when the manufacturing data is broken down by three lots as shown above, we see that on the one hand, Lot 1 and 2 have variances of about 0.98 and 7.47 that are well below the design specification of 100 pounds per square inch. On the other hand, Lot 3 has a much larger variance of about 170.29 that is well above the design specification. The variance of Lot 3 is causing the PSI variance of the total lot population to increase significantly. 


![Box Plot](https://github.com/Itgotworse26/MechaCar_Statistical_Analysis/blob/main/Images/Manufacturing_Lot.png)

* The box plot above demonstrates just how large the variance of Lot 3 is compared to Lots 1 and 2.


## T-Tests on Suspension Coils

![All Lots t-test](https://github.com/Itgotworse26/MechaCar_Statistical_Analysis/blob/main/Images/all_lots_T-Test.JPG)

* The t-test for all lots was meant to determine if the PSI across the three lots were statistically different from the population mean of 1500 pounds per square inch. The results demonstrates a sample mean of 1498.78 and a p-value of 0.06. Because the p-value is higher than the assumed statistical significance of 0.05, there is not enough evidence to fail to reject the null hypothesis. This means that the PSI across all manufacturing lots is statistically similar to the population mean of 1500 pounds per square inch.


![Lot 1 t-test](https://github.com/Itgotworse26/MechaCar_Statistical_Analysis/blob/main/Images/lot1_T-Test.JPG)

* Lot 1 t-test results show that the sample mean is 1500 and the p-value is a perfect 1. There is no statistical difference from the population mean of 1500 pounds per square inch. In this case, there is not enough evidence fail to reject the null hypothesis.


![Lot 2 t-test](https://github.com/Itgotworse26/MechaCar_Statistical_Analysis/blob/main/Images/lot2_T-Test.JPG)

* Lot 2 t-test results show sample mean is 1500.2 and the p-value is about 0.61. Because the p-value is much higher than the assumed statistical significance of 0.05, there is not enough evidence fail to reject the null hypothesis. There is no statistical difference from the population mean of 1500 pounds per square inch.


![Lot 3 t-test](https://github.com/Itgotworse26/MechaCar_Statistical_Analysis/blob/main/Images/lot3_T-Test.JPG)

* Lot 3 t-test results show sample mean is 1496.14 and the p-value is about 0.04. Because the p-value is lower than the assumed statistical significance of 0.05, there is enough evidence the null hypothesis and accept the alternative hypothesis that the true mean is not equal to 1500. This means that this sample shows that there is a statistical difference from the population mean of 1500 pounds per square inch.


## Study Design: MechaCar vs Competition

There are several metrics AutosRUs can use to compare MechaCar against its competitors. Considering the focus of this project on MechaCar's suspension coils, reliability is a good metric to use. AutosRUs can use MechaCar's specifications to compare it against its peers on the market to see how many miles MechaCar can go before having to spend time in a repair shop. They can use their car's specifications and milage to answer which hypothesis is correct:

* H<sub>0</sub> (Null Hypothesis): MechaCar's specifications means that it can go more miles before having to go into a service shop.

* H<sub>a</sub> (Alternative Hypothesis): MechaCar's specifications does not make a difference and its miles before service are similar to its competitors.

To test this, we can take MechaCar's vehicle length and ground clearance; the most likely factors that can affect miles per gallons, gather data on how many miles a MechaCar can go before needing a service shop, and compare them against its competitors using a t-test. This should help determine whether MechaCar is ahead, similar, or lagging behind its competition in reliability. 