rm(list = ls()) #Clear Environment
gc()
cat("\f")

##You Need GGPLOT2 to View Analysis
install.packages("ggplot2")
library(ggplot2)
library(readr)
train_clean <- read_csv("Downloads/train_clean.csv")
View(train_clean)


#####Breakdown of Class Survival Rate
Class_One <-subset(train_clean, Pclass == 1)
Class_One
Survived_Class_One <- subset(Class_One, Survived == 1)
Percent_One <- nrow(Survived_Class_One)/nrow(Class_One)*100
Percent_One

Class_Two <-subset(train_clean, Pclass == 2)
Class_Two
Survived_Class_Two <- subset(Class_Two, Survived == 1)
Percent_Two <- nrow(Survived_Class_Two)/nrow(Class_Two)*100
Percent_Two

Class_Three <-subset(train_clean, Pclass == 3)
Class_Three
Survived_Class_Three <- subset(Class_Three, Survived == 1)
Percent_Three <- nrow(Survived_Class_Three)/nrow(Class_Three)*100
Percent_Three

##Bar Chart Showing % of Passengers that Survived by Class
Classes <-data.frame(values =c(62.962962962963, 47.2826086956522, 24.2362525458248), names = c("1st Class", "2nd Class", "3rd Class"))
ggplot(Classes, aes(x = values, y = names))+
  geom_bar(stat = "identity") +
  labs(x = "% Passengers Survived", y = "Classes")

max(train_clean$Fare)
####The Higher Class you were the more likely you were to survive.  
female_Class_One_Survived <- subset(Survived_Class_One, Sex == "female")
nrow(female_Class_One_Survived)/nrow(Survived_Class_One)*100
##Women survived at a 66.92% rate in class one
female_Class_Two_Survived <- subset(Survived_Class_Two, Sex == "female")
nrow(female_Class_Two_Survived)/nrow(Survived_Class_Two)*100
##80% f woman survived in class two survived
female_Class_Three_Survived <- subset(Survived_Class_Three, Sex == "female")
nrow(female_Class_Three_Survived)/nrow(Survived_Class_Three)*100
##60.50% of woman survived in class three survived