rm(list = ls()) #Clear Environment
gc()
cat("\f")

##You Need GGPLOT2 to View Analysis
install.packages("ggplot2")
library(ggplot2)
library(readr)
train_clean <- read_csv("Downloads/train_clean.csv")
View(train_clean)


##Let's Analyze Children vs Adults Probability of Survival
survived_18_and_Under <- subset(train_clean, Age <18 & Survived == 1)
nrow(survived_18_and_Under)/nrow(subset(train_clean, Age < 18)) * 100
##If you were a child then you had a 55.85% chance of survival

survived_18_and_Over <- subset(train_clean, Age >=18 & Survived == 1)
nrow(survived_18_and_Over)/nrow(subset(train_clean, Age >= 18)) * 100
##If you were an adult then you had a 35.05% chance to survive.

ggplot(train_clean, aes(x= Sex, y = Survived))+
  geom_point(position = position_jitter())


table(survived_18_and_Under$Sex)
table(survived_18_and_Over$Sex)


# Create a new column 'age_group' to bin the ages into two groups: children (<= 18) and adults (> 18)
train_clean$age_group <- ifelse(train_clean$Age <= 18, "Children", "Adult")
train_clean$Survived <- factor(train_clean$Survived)

# Create a bar chart of the number of Survived passengers by Sex and Age group
ggplot(train_clean, aes(x = Sex, fill = Survived)) +
  geom_bar(position = "dodge") +
  facet_wrap(~ age_group, ncol = 1) +
  labs(x = "Sex", y = "Count", fill = "Survived") +
  scale_fill_manual(values = c("red", "green"), labels = c("Died", "Survived"))

