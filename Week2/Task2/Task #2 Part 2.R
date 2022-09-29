#task 2
#My namme is Blayne Chapman, I enjoy the outdoors and wood working. i will Hopefully will graduate this spring.

#Question 1.) Perform the computation 
sin(pi/4)

#Question 2.) assign 3/10 to x
x <- 3/10
x
xx
#When you call the variable x it has been assigned 3/10 which .3 it gives us the decimal form.
#So the only name that would call x is x, b,c,d wouldnt work as well as "xx" would not work.

#Question 3.) Make a sequence name it Mysequence 
Mysequence <- seq(1,50, length.out = 7)
Mysequence

#Question 4.) assign myvector the values 1,5,12,31,19
Myvector <- c(1,5,12,31,19)
Myvector

#Question 5.) Explain the result of 5+7==12
5+7==12
#the result comee back as true, because 5+7 does eqaul 12 is checks the statement. where if we did another number 
#in th eplace of the 5 it out comeback false 

#Question 6.)Determine the result of (7+4=12)|(5-4=1) and explain what it means and why you get the result you get.
(7+4=12)|(5-4=1)
#there is a error in the statement due to 7+4 is not 12 therfore it is a error and the code script stops running.

#Exercise 1.)
my_variable <- 10
my_varıable
#> Error in eval(expr, envir, enclos): object 'my_varıable' not found
# Misspelled the variable so nothing was found.

#excercise 2.) Make this code chunk run correctly
library(tidyverse)

ggplot(dota = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

fliter(mpg, cyl = 8)
filter(diamond, carat > 3)

#Fixed version 
install.packages("tidyverse")
library(tidyverse)
install.packages('dota')
library(dota)


my_grap <- ggplot(dota = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  filter(mpg, cyl == 8) +
  filter(diamond, carat > 3)
my_graph

#I do not have the right version for R to load the DOTA file so i cannot complete the code and run it but this should be the correct code
#Needed to install the tidyverse package and DOTA package, The add + to the end of the geom point to add the filters to the graph being made.
#Then Call the Graph

#Exercise 3.) 
#It takes you to you a shortcut menu where you can see all the keyboard shortcuts you can get there by
#clicking "tools", scrolling down to Keyboard Shortcuts, and it takes you to the same menu.

