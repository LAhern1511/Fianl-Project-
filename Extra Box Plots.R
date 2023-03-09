rm(list = ls()) #Clear Environment
gc()
cat("\f")

##You Need GGPLOT2 to View Analysis
install.packages("ggplot2")
library(ggplot2)
library(readr)
train_clean <- read_csv("Downloads/train_clean.csv")
View(train_clean)



## Box plot of Age of people who died and lived
boxplot(train_clean$Age ~ train_clean$Survived, col=c("red", "green"), main="Age by Survival Status", xlab="Survival Status", ylab="Age")

# add legend
legend("topright", legend=c("Died", "Survived"), fill=c("red", "green"))

# create a box plot of "Fare" for people who died and people who survived without showing outliers
boxplot(train_clean$Fare ~ train_clean$Survived, col=c("red", "green"), main="Fare by Survival Status", xlab="Survival Status", ylab="Fare", outline=FALSE)

# add legend
legend("topright", legend=c("Died", "Survived"), fill=c("red", "green"))


## Graph of Sex and Fare
ggplot(train_clean, aes(x = Sex, y = Fare, color = Survived))+
  geom_point(position = position_jitter())+
  ylim(0,100)