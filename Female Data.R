rm(list = ls()) #Clear Environment
gc()
cat("\f")

##You Need GGPLOT2 to View Analysis
install.packages("ggplot2")
library(ggplot2)
library(readr)
train_clean <- read_csv("Downloads/train_clean.csv")
View(train_clean)


num_females <- sum(train_clean$Sex == "female", na.rm = TRUE)
num_females
female_data <- train_clean[train_clean$Sex == "female", ]
Survived_females <- sum(female_data$Survived == 1, na.rm = TRUE)
Survived_females
Percent_Survived_females <- Survived_females/num_females*100
Percent_Survived_females

##Based off this information 74.2% of Female Passengers Survived
female_data_Survived <- train_clean[train_clean$Sex == "female" & train_clean$Survived == 1, ]
ggplot(female_data_Survived, aes(x ="", y = Age )) +
  geom_boxplot()+
  ggtitle("Box Plot of Females who Survived")
