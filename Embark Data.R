rm(list = ls()) #Clear Environment
gc()
cat("\f")

##You Need GGPLOT2 to View Analysis
install.packages("ggplot2")
library(ggplot2)
library(readr)
train_clean <- read_csv("Downloads/train_clean.csv")
View(train_clean)

##Analyzing where the passengers embarked from and what class they went to.
embark_C <- subset(train_clean, Embarked == "C")
table(embark_C$Pclass)
embark_Q <-subset(train_clean, Embarked == "Q")
table(embark_Q$Pclass)
embark_S <-subset(train_clean, Embarked == "S")
table(embark_S$Pclass)

### Finding the Spot where people Embarked that had the highest survival rate
percent_embark_C <- sum(embark_C$Survived == 1, na.rm = TRUE)/nrow(embark_C)*100
percent_embark_C
##If you Embarked at spot C then you had a 55.62% chance of survival
percent_embark_Q <- sum(embark_Q$Survived == 1, na.rm = TRUE)/nrow(embark_Q)*100
percent_embark_Q
##If you Embarked at spot Q then you had a 38.96% chance of survival
percent_embark_S <- sum(embark_S$Survived == 1, na.rm = TRUE)/nrow(embark_S)*100
percent_embark_S
##If you Embarked at spot S then you had a 33.80% chance of survival
embark_data <- data.frame(
  x=c(1, 2, 3),
  y=c(55.62, 38.96, 33.80),
  labels = c("C", "Q", "S")
)
##Plot of Survival Chances Based off of Embark%
ggplot(embark_data, aes(x,y))+
  geom_point() +
  scale_x_continuous(breaks = 1:3, labels = embark_data$labels) +
  xlab("Embarked")+
  ylab("% of Survival" ) +
  ggtitle("Where you Embarked % of Survival")
