library(tidyverse)

# DELIVERABLE 1:

# Read in CSV file and import as table:
mechacar <- read.csv(file = "MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

# Generate Multiple Liner Regression Model:
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar)

# Generate summary statistics for the above linear regression model:
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar))




# DELIVERABLE 2:

# Read in CSV file and import as table:
suscoils <- read.csv(file = "Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

# Create total summary statistics for PSI:
total_summary <- suscoils %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# Create summary statistics grouped by lot
lot_summary <- suscoils %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = "keep")



# DELIVERABLE 3:

# Perform a T-Test across all manufacturing lots:
t.test(suscoils$PSI, mu=1500)

# Perform distinct T-tests for each lot as subset of data:

# Lot1:
t.test(subset(suscoils, Manufacturing_Lot == "Lot1")$PSI, mu=1500)

# Lot2:
t.test(subset(suscoils, Manufacturing_Lot == "Lot2")$PSI, mu=1500)

# Lot3:
t.test(subset(suscoils, Manufacturing_Lot == "Lot3")$PSI, mu=1500)

