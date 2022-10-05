#task #4

#Practice using dplyr
library(tidyverse)

#look at our iris data 
str(iris)
head(iris)
tail(iris)

#Now Make the iris data Set a tible 
iris_data <- as_tibble(iris)
arrange(iris_data, Sepal.Length)
#This shows the data in smallest sepal Length to Largets 
#If WE wanted it to be descending it would look like this
arrange(iris_data,desc(Sepal.Length))

#Make a new data frame by selecting only species and petal.Width
testdat <- select(iris, Petal.Length, Species)
head(testdat)
tail(testdat)

#Create a new table called species_mean that has the mean for each variable for each Species.
Group_species <- group_by(iris, Species)
species_mean <- summarise( Group_species,
  Sepal.Length = mean(Sepal.Length, na.rm = TRUE),
  Sepal.Width = mean(Sepal.Width, na.rm = TRUE),
  Petal.Length = mean(Petal.Length, na.rm = TRUE),
  Petal.Width = mean(Petal.Width, na.rm = TRUE)
)

head(species_mean)

#Create a data frame called iris_min with only the observations with at least 3 for Sepal.Width and not 2.5 for Petal.Width.
iris_min <- filter(iris, Sepal.Width >= 3, Petal.Width != 2.5)
head(iris_min)
#I THoought we might be using a mutate but we actauly just filtering the data to pull everything that doesnt meet the criteria.


#Create a data frame called iris_size with a column Sepal.Size which is
iris_size <- mutate(iris,
                       Sepal.Size = case_when(Sepal.Length>=5 ~"small", between(Sepal.Length,5,6.5)~ "Medium",Sepal.Length<6.5~ "Large"))
head(iris_size)

# Create a data frame called iris_rank which ranks all of the data by Petal.Length, where a ranking of 1 is the largest Petal.Length and order by ranking.
iris.rank <- arrange(iris, desc(Petal.Length))
head(iris.rank)
tail(iris.rank)
#From this ranking we can see that the Virginica species has the biggest Petal Lengths and Setosa has the smallest.


#Read about the ?summarize_all() function and get a new table with the means and standard deviations for each species
?summarise_all(iris, mean)

#Now how create  table with the eand and standard deviations of the data set. 
#why is not this working
Avg_species <- iris

Avg_species %>%
  group_by(Species) %>%
  summarize(mean(Sepal.Length), mean(Sepal.Width), mean(Petal.Length), mean(Petal.Width), sd(Sepal.Length),sd(Sepal.Width), sd(Petal.Length), sd(Petal.Width))


#Does hunting have any affects on animal populations, that being negative or positive.
#Answer: i asked my friends aging from 18-28, the overal break down of what they all said there are hunting season to make sure certain animals are not hunted year round, also they said the total number of hunters has decreased due to food availability in grocery stores 

#According to online since 1990 there has a small but much noticeable drop in hunters this is notice by the hunting liscense sold in each state.
#According to one of the mentors who owns a guiding business and deals with tally up how many animals are harvested at his camp, 
#Hunter over the year can only affect animal populations by 5-10 percent he does mostly waterfowl which since there number are so high they are sub 5% for total population affected by hunters.



