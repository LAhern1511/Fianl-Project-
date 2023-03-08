
rm(list = ls()) #Clear Environment
gc()
cat("\f")

##You Need GGPLOT2 to View Analysis
install.packages("ggplot2")
library(ggplot2)
library(readr)
train_clean <- read_csv("Downloads/train_clean.csv")
View(train_clean)


##I am taking a look at raw data to get a better picture of which categories to analyze
table(train_clean$Sex)
table(train_clean$Survived)
total_survival_rate <-nrow(subset(train_clean, Survived == 1)) /nrow(train_clean) * 100
total_survival_rate
table(train_clean$Age)
table(train_clean$Pclass)
table(train_clean$Embarked)
table(train_clean$cabin)