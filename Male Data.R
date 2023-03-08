rm(list = ls()) #Clear Environment
gc()
cat("\f")

##You Need GGPLOT2 to View Analysis
install.packages("ggplot2")
library(ggplot2)
library(readr)
train_clean <- read_csv("Downloads/train_clean.csv")
View(train_clean)


##Finding the Percent of Males who Survived
num_males <-sum(train_clean$Sex == "male", na.rm = TRUE)
male_data <- train_clean[train_clean$Sex == "male", ]
Survived_Male <- sum(male_data$Survived == 1, na.rm = TRUE)
num_males
Survived_Male
Percent_Survived_MAle <- Survived_Male/num_males*100
Percent_Survived_MAle
## based off this data only 18.89% of Male Passengers Survived

## Box Plot of Male Survivor Ages
male_data_Survived <- train_clean[train_clean$Sex == "male" & train_clean$Survived == 1, ]
ggplot(male_data_Survived, aes(x ="", y = Age )) +
  geom_boxplot()+
  ggtitle("Box Plot of Males who Survived")