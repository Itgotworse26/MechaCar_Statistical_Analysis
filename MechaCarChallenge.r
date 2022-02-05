# Deliverable 1: Linear Regression to Predict MPG 

# 3. Use the library() function to load the dplyr package
library(dplyr)

# 4. Import and read in the MechaCar_mpg.csv file as a dataframe.
library(tidyverse)
mecha_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 

# 5. Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)

# 6. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)) 


# Deliverable 2: Create Visualizations for the Trip Analysis

# 2. Import and read in the Suspension_Coil.csv file as a table
suspension_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) 

# 3. Create a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI),
                                          Median=median(PSI),
                                          Variance=var(PSI),
                                          Std_Dev=sd(PSI),
                                          Num_Coil=n(), .groups = 'keep') 

# 4. Create a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot.                                                                
lot_summary <- suspension_coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                          Median=median(PSI),
                                          Variance=var(PSI),
                                          Std_Dev=sd(PSI),
                                          Num_Coil=n(), .groups = 'keep')                                      

# box plot: PSI Whole lot
plt1 <- ggplot(suspension_coil,aes(y=PSI)) #import dataset into ggplot2
plt1 + geom_boxplot() #add boxplot

# box plot: PSI each individual Lot
plt2 <- ggplot(suspension_coil,aes(x=Manufacturing_Lot,y=PSI)) #import dataset into ggplot2
plt2 + geom_boxplot()


# Deliverable 3: T-Tests on Suspension Coils

# 1. use t.test() to determine if the PSI across ALL lots is statistically different from the pop. mean of 1,500 PSI.
t.test(suspension_coil$PSI,mu=1500)


# 2. Use t.test() function 3 more times with subset() to determine if PSI for each manufacturing lot is statistically different from the pop. mean of 1,500 PSI
lot1 <- subset(suspension_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspension_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspension_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)