# Final-Project
### By: Lucas Ahern

##Introduction

#### Our contractor the U.S. Coast Gaurd has request that we analyize survivial data in the one of the most historic ship wrecks of all time.
The reason our company was tasked with this analysis was to see who was most likely to survive the tragic accident and see if there were trends in the data.  Our company is tasked with finding who was most likely to survive the tragic boat accident and who was least likely.  

There are many different factors at play within this scenario that all must be analyzed.  The Coast Gaurd wanted to see this information and potentially make cruise saftey regulations off of our analysis of this dataset.  They have provided us with the offical passenger information.  I will attach below.

``` install
[train_clean.csv](https://github.com/LAhern1511/Fianl-Project-/files/10915821/train_clean.csv)
```

I will be doing all the coding in R for this project and you will need to install ggplot2 in order to run the graphs. 

Below are 3 seperate ways to install ggplot2 from [tidyverse](https://ggplot2.tidyverse.org/).

## The easiest way to get ggplot2 is to install the whole tidyverse:
``` install
install.packages("tidyverse")
```

## Alternatively, install just ggplot2:
``` install
install.packages("ggplot2")
```

## Or the development version from GitHub:
## install.packages("devtools")
``` install
devtools::install_github("tidyverse/ggplot2")
```

## Data Summary

#### In this dataset we will break down survival rates based on many different factors such as Sex, Class, Age, and the price paid for a ticket.
I will try and come to a conclusion on what would make you most likely to survive as well as least likely to survive the sinking of the titanic.

This was a relatively large data set with 891 Rows and 15 total columns. Most people were in between the ages of 20 and 40.   
![image](https://user-images.githubusercontent.com/125223791/223890075-352009cc-8b92-47f3-b3d3-2615fe97eff5.png)

The majority of the passengers were Male.  64% were Male and the remaining 36% were female.

Most Passengers were in 3rd Class with the distribution being shown below:
![Screenshot 2023-03-08 at 8 20 16 PM](https://user-images.githubusercontent.com/125223791/223890563-650ca2db-b2e7-4a2d-bf1c-6aad4825d4cb.png)

The average Fare of passengers who survived was higher than that of those who did not survive.  The average Fare of a passenger who survived was $48.40, while someone who did not survive on average paid $22.12.

Some variables were excluded in this dataset such as Cabin.  Cabin was exclused because there were too many gaps in the data to perform any meaningful analysis.  


