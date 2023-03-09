# Final-Project
### By: Lucas Ahern

## _Introduction_

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

## _Data Summary_

#### In this dataset we will break down survival rates based on many different factors such as Sex, Class, Age, and the price paid for a ticket.
I will try and come to a conclusion on what would make you most likely to survive as well as least likely to survive the sinking of the titanic.

This was a relatively large data set with 891 Rows and 15 total columns. Most people were in between the ages of 20 and 40.   
![image](https://user-images.githubusercontent.com/125223791/223890075-352009cc-8b92-47f3-b3d3-2615fe97eff5.png)

The average age of all passengers was 29.45yrs old.

The majority of the passengers were Male.  64% were Male and the remaining 36% were female.

Most Passengers were in 3rd Class with the distribution being shown below:

![Screenshot 2023-03-08 at 8 20 16 PM](https://user-images.githubusercontent.com/125223791/223890563-650ca2db-b2e7-4a2d-bf1c-6aad4825d4cb.png)

The average Fare of passengers who survived was higher than that of those who did not survive.  The average Fare of a passenger who survived was $48.40, while someone who did not survive on average paid $22.12.

Some variables were excluded in this dataset such as Cabin.  Cabin was exclused because there were too many gaps in the data to perform any meaningful analysis.  

## _Data Analytics_

#### The first way our company looked at the data was through a 50,000 foot view of the data.  What are we working with?
![image](https://user-images.githubusercontent.com/125223791/223897238-779b604c-bdf0-4f16-a164-3c0b6a84a899.png)

This show us that there is a higher distribution of Males than Females.  

After finding the distribution of each sex.  I went to try and find the probablity of each sex surviving the titanic.  What i found was that females had a 74.2% chance of survive while men had an 18.89% chance of survival.  This lead me to believe that being a female had a very strong correlation with survival.  

We then tried to analyze if age had anything to do with survival. We decided a scatter plot would help us show if there were any trends in the data.
![image](https://user-images.githubusercontent.com/125223791/223898065-da010c6e-38f3-4916-93fe-cbc705db3ad8.png)

![image](https://user-images.githubusercontent.com/125223791/223898231-fcf87a2d-3661-4b8b-b7cb-9ee8292e38df.png)

![image](https://user-images.githubusercontent.com/125223791/223898276-8edd01ff-1697-42b9-afdb-b0d25906934b.png)

These 3 charts show that age was not as large a factor in survival as children survived at 53.85% abd adults survived at 36.05.   

## _Conclusion_



## _DevOps_

#### Github is great as it allows you to show people what you can create with your code and share it with people.

### Pros of Github on Solo Projects:

####  GitHub allows you to see old files that you had previously worked on.  This allows you to go back and work on the old files if need be.  
  
   GitHub can help with storage as well. Not all the information has to be stored on your harddrive which can take up a lot of space.  
   This is especially   useful for small projects.  
   
   Share your work with others
  

### Cons of Github on Solo Projects:

#### GitHub may not be the best for smaller projects as it adds another level of complexity to the project.

   There is a learning curve to understanding GitHub

 
### Pros of Github on Group Projects:

#### GitHub allows you to work with many different people at the same time without stepping on eachothers toes so to speak.  You can work on your files while they work on theirs.  You do not have to be working on the same document.

   Ability to share your work with more people
   
   Especially helpful with larger project with a lot of hands working on different things.
   
   Storage
   

### Cons of Github on Group Projects:

#### Learning Curve

   Security could be a potential issue if you are not careful with security settings
   
   Github can cost money if a company is using it.
   
   
