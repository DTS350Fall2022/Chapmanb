#task 3 Visualizations 

#load in packages
library(tidyverse)

#look at the data. we can see the frist 6 and last 6, there are 150 total samples
head(iris)
tail(iris)
str(iris)

#Now Lets make a graph
ggplot(data = iris) + 
  geom_point(mapping = aes(x = Sepal.Length, y = Sepal.Width, color = Species, shape = Species))

#Question.) what can we learn about the species when comparing sepal length and sepal width.
#Answer.) from the data displayed we can see that setosa species seems to have wider a wider sepal while versicolor and virginica have similar sepal length and widths. 

#Make a graph comparing petal length and petal width for each species 
ggplot(data = iris) + 
  geom_point(mapping = aes(x = Petal.Width, y = Petal.Length, color = Species, shape = Species))+
  facet_wrap(~ Species)
#QUestion.)WHat are the differences in the petals between the sepcies?
#Answer.) Setosa has relatively small petals, where as vesicolor have biger petals thans setosa and small petals than Virginica so they can be considered medium sized, Virginica has the largest petals out of all the species.


#Make a graph compareing the petals width and length and put a line of best fit on it.
ggplot(data = iris) + 
  geom_point(mapping = aes(x = Petal.Length, y = Petal.Width, color = Species, shape = Species))+
  geom_smooth(mapping = aes(x= Petal.Length, y = Petal.Width))
  
#What does that line of best fit tell us about the iris data?
#This tells us as we change specie left to righ we are getting bigger petals for the species. It is a gradual icrease, as Petal length increases so does Petal width.

#Creat a ar chart using the data
ggplot(data = iris, mapping = aes(x = Sepal.Length, fill = Species)) +
  geom_bar()
#What does this graph tell us about the data?
#This graph tells us the amount of Species that have the same sepal.Length.

