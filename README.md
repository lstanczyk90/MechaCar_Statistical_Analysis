# MechaCar Statistical Analysis

## Project Overview

The purpose of this analysis is to assist AutosRUs and its upper management by reviewing production data for the company's newest prototype, the MechaCar, in order to help the company's manufacturing team glean meaningul insights that may explain some of the production troubles that the team is facing. This project is being performed by using R to assist in creating summary statistics and visualizations that will drive the analysis. 

## Linear Regression to Predict MPG

![alt text](https://github.com/lstanczyk90/MechaCar_Statistical_Analysis/blob/dad9c31783ec6eeb106887f514935af20ec37099/Screenshots/mecha_multiple_regression.png)

As seen in the above output, we considered the MPG of the MechaCar as the independent variable and used the following metrics to try to predict MPG: Vehicle Length, Vehicle Weight, Spoiler Angle, Ground Clearance, AWD.

Our analysis yielded the following findings:

- Per review of the P-Values, it appears that Vehicle Length and Ground Clearance provide a non-random amount of variance to the mpg values in the dataset. Specifically, we have assumed an alpha of 0.05, and the P-Values for the two aforementioned variables are all below alpha. As such, we can reasonably state that Vehicle Length and Ground Clearance all provided a non-random amount of variance to the dataset. 

- The slope of the linear model is not considered to be zero. Specifically, per the coefficient outputs, we noted non-zero slopes for each variable utilized in the regression. However, the majority of the slopes are very close to zero, as the numbers outputted under "Estimate" are all very small as denoted by the scientific notation in the output. 

- We noted a multiple r-squared output of 0.7149. As such, approximately 70% of the variance in MPG can be reasonably explained by the predictor variables (in this case, Vehicle Length, Vehicle Weight, Spoiler Angle, Ground Clearance, AWD). However, our model does not fully explain the variance in MPG, so further investigation is required. 

## Summary Statistics on Suspension Coils

### Total Summary

![alt text](https://github.com/lstanczyk90/MechaCar_Statistical_Analysis/blob/dad9c31783ec6eeb106887f514935af20ec37099/Screenshots/total_summary.png)

### Per Lot Summary

![alt text](https://github.com/lstanczyk90/MechaCar_Statistical_Analysis/blob/dad9c31783ec6eeb106887f514935af20ec37099/Screenshots/lot_summary.png)

As seen in the above tables, the variance in PSI does not exceed 100 PSI for the entire manufacturing process (we noted a Variance of 62.29356 in the aggregate). However, in reviewing the Per Lot summary statistics, there appears to be an abnormal (and above-spec) variance of 170.286. Whereas the other two lots all have variances that are well within manufacturer specifications, Lot 3 must be investigated. As you can tell from the above table, Lot 3 is the only lot with such a variance, and this is further evidenced by the mean and median differing materially between Lot 3 and Lots 1-2. Lot 3 and the reason behind the material variance must be investigated. 

## T-Tests on Suspension Coils

### *Total T-Test:*

![alt text](https://github.com/lstanczyk90/MechaCar_Statistical_Analysis/blob/dad9c31783ec6eeb106887f514935af20ec37099/Screenshots/population_ttest.png)

### *Lot 1 T-Test:*

![alt text](https://github.com/lstanczyk90/MechaCar_Statistical_Analysis/blob/dad9c31783ec6eeb106887f514935af20ec37099/Screenshots/Lot1_ttest.png)

### *Lot 2 T-Test:*

![alt text](https://github.com/lstanczyk90/MechaCar_Statistical_Analysis/blob/main/Screenshots/Lot2_ttest.png)

### *Lot 3 T-Test:*

![alt text](https://github.com/lstanczyk90/MechaCar_Statistical_Analysis/blob/main/Screenshots/Lot3_ttest.png)

In this test, our hypotheses are as follows:

- Null Hypothesis: There is no difference between the population mean of 1500 and the sample mean.

- Alternative Hypothesis: There is a difference between the population mean of 1500 and the sample mean.

When looking at the overall population, our P-Value is 0.06028. Assuming an alpha of 0.05, we can state that since our p-value exceeds alpha, we cannot reject the null hypothesis and must therefore conclude that there is no difference between the population mean of 1500 and the sample mean across all lots. 

However, our analysis was also performed for a lot-by-lot basis:

- Lot 1: Our p-value is 1. As such, we can conclude that there is no difference between the Lot 1 sample mean and the total population mean (assuming an alpha of 0.05);

- Lot 2: Our p-value is 6072. As such, we can conclude that there is no difference between the Lot 2 sample mean and the total population mean (assuming an alpha of 0.05);

- Lot 3: Our p-value is 0.04168, which falls below our alpha of 0.05. As such, **we must reject the null hypothesis, meaning that the sample mean for Lot 3 is not equall to the population mean of 1500**. This is further supported by the analysis performed above, wherein we found that Lot 3's variance exceeded the recommended specification whereas Lot 1 and Lot 2 did not. As such, a thorough investigation must be performed to determine the source of this difference, as the rejection of the null hypohtesis is not a favorable outcome in the manufacturing process (the sample mean should be as close as possible to the population mean). 

## Study Design: MechaCar vs. the Competition

With regards to future analytical projects, our surveys indicate that fuel economy is a crucial feature for most prospective car buyers. As such, we recommend designing a study that compares the city and highway MPG of our MechaCars against our closest competition. 

As a started point, we recommend considering the following:

- Collect a sample of city and highway MPGs across the entire spectrum of our competition. This will represent the population in our analysis. We need to ensure that a sufficiently large sample is obtained, and that the sample truly represents the entire population that comprises the competition. 

- With the population statistics in hand, we recommend performing a one sample t-test by comparing MPG data obtained for MechaCar against the MPG data obtained for the competition. 

- The null hypothesis would be as follows: "There is no statistical difference between the mean MPG of the representative population and the mean MPG of the sample distribution."

- The alternative hypothesis would be as follows: "There is a statistical difference between the mean MPG of the representative population and the mean MPG of the sample."

- Given that we want to know whether or not we are above OR below the population mean, we recommend performing a two-tailed test. Additionally, as we do not require a materially high degree of certainty or precision, we recommend setting the alpha at 0.05 when comparing our p-value to alpha. 

Once we have some degree of insight into whether our MechaCar MPG is statistically different from the population, we can perform additional analyses (including calculating the mean of our sample and the population) to determine whether or not we are exceeding the competition (as a higher MPG is more favorable).
