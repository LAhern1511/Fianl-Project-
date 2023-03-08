rm(list = ls()) #Clear Environment
gc()
cat("\f")

##You Need GGPLOT2 to View Analysis
install.packages("ggplot2")
library(ggplot2)
library(readr)
train_clean <- read_csv("Downloads/train_clean.csv")
View(train_clean)


##The Strongest Case of Survival is being a Woman in First Class or Second Class
All_Survived <- subset(train_clean, Survived == 1)
ggplot(train_clean, aes(x = Sex, y = Age, color = Survived))+
  geom_point(position = position_jitter())
cor(All_Survived$Age, All_Survived$Fare)

ggplot(All_Survived, aes(x = Age, y = Pclass))+
  geom_point(position = position_jitter())

ggplot(All_Survived, aes(x = Sex, y = Fare))+
  geom_point(position = position_jitter())+
  ylim(0,200)

ggplot(train_clean, aes(x=Sex, y = Pclass, color = Survived))+
  geom_point(position = position_jitter())

ggplot(train_clean, aes(x=Sex, y = Age, color = Survived))+
  geom_point(position = position_jitter())

ggplot(train_clean, aes(x=Fare, y = Pclass, color = Survived, size = Sex))+
  geom_point(position = position_jitter())+
  xlim(0,100)



##Men over the age of 18 and in 2nd or 3rd class had the least likely chance of survival

100 * sum(train_clean$Sex == "female" & train_clean$Survived == 1) / sum(train_clean$Sex == "female")
mean(female_data_Survived$Fare)
female_data_Deceased <- subset(train_clean, Sex = "female" & Survived == 0)
mean(female_data_Deceased$Fare)