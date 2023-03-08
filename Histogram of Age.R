rm(list = ls()) #Clear Environment
gc()
cat("\f")

##You Need GGPLOT2 to View Analysis
install.packages("ggplot2")
library(ggplot2)
library(readr)
train_clean <- read_csv("Downloads/train_clean.csv")
View(train_clean)

##Distribution of Ages
hist(train_clean$Age, breaks = seq(min(train_clean$Age), max(train_clean$Age) + 10, by = 10), xlab = "Age", ylab = "Frequency")
### The Reason older woman had the highest Probability was because there was so few