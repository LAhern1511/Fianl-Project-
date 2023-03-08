##You Need GGPLOT2 to View Analysis
install.packages("ggplot2")
library(ggplot2)
library(readr)
train_clean <- read_csv("Downloads/train_clean.csv")
View(train_clean)



# create a new variable that indicates whether the passenger survived or not
train_clean$survived_indicator <- ifelse(train_clean$Survived == 1, "Survived", "Not Survived")

# create a subset of the data containing only males and females
male_female_data <- train_clean[train_clean$Sex %in% c("male", "female"), ]

# create a new variable that indicates whether the passenger was male or female
male_female_data$gender <- ifelse(male_female_data$Sex == "male", "Male", "Female")

# create a new variable that categorizes the fare variable into bins
max(train_clean$Fare)
fare_bins <- cut(male_female_data$Fare, breaks = c(0, 25, 50, 100, 550), include.lowest = TRUE)

# calculate the percentage of passengers in each category that survived
survival_percentages <- aggregate(survived_indicator ~ gender + fare_bins, data = male_female_data, FUN = function(x) {
  round(100 * sum(x == "Survived") / length(x), 2)
})

max(train_clean$Fare)
# create a stacked bar plot of the percentage of passengers that survived in each category
ggplot(survival_percentages, aes(x = fare_bins, y = survived_indicator, fill = gender)) +
  geom_bar(stat = "identity", position = "stack") +
  scale_fill_manual(values = c("#0072B2", "#E69F00"), name = "Gender") +
  xlab("Fare") +
  ylab("Percentage of Passengers") +
  ggtitle("Percentage of Passengers that Survived by Fare and Gender")