#task 11 tiddying the data

#Load in our packages 
library(tidyverse)

#QUESTION!!!!!!
#Now download the file and and look at out data. see what need to to be tiddied up.
fan <- tempfile()
download.file("https://github.com/fivethirtyeight/data/raw/master/fandango/fandango_score_comparison.csv",fan)

#I could not get the the temp file to open because its not in my workng driectory so we dowloaded the the csv and will pull strait from the file
fandango <- read_csv("fandango_Score_comparison.csv")
head(fandango)
str(fandango)

#from looking at the data and what each varaible means i can see that i need slim the data set down so we are looking at the score for each movie on a scale to 1-5
#so its like stars, that will be the easiest to compare movie rating from different websites.

#How would i start tiddying the data, because I believe i need to group the so its onthe groups rating 1-5

#We are going to select only what we need from the data set which is the norm scores 
web_rating <- select(fandango, FILM, Fandango_Stars, RT_norm, Metacritic_norm, IMDB_norm)
head(web_rating)

#Set the data up so we can see the top 15 overall rated by the website then compare how each rated the top 15.

top<- mutate(web_rating, 
                  Ranking = (Fandango_Stars)+(RT_norm)+(Metacritic_norm)+(IMDB_norm))

top_rank <- top %>%
  arrange(desc(Ranking)) %>%
  slice(1:60)
  
head(top_rank)

#We are going to pivot longer our data so we can see how each website rated the the top 16 movies, 4*15 is 60 thats why we are looking top 15 movies for the 4 websites. 
top_rank <-  top_rank %>%
  pivot_longer(2:5, names_to = "Website")
top_rank

top_rank <- top_rank %>%
  arrange(desc(Ranking)) %>%
  slice(1:60)


#Now that we have our top 15 movies we will graph them 
top_movies <- ggplot(top_rank, aes(x = FILM, y = value))+
  geom_col(color = "yellow", fill = "Yellow")+
  geom_text(aes(label = value))+
  facet_wrap('Website')+
  labs(x = "Movie Title", title = "Top 15 rated movies compared to by website")+
  coord_flip()

top_movies
#this doesn't really give us the representation we want, we cant easily see how each website is ranked the, lets try a density plot.


#this is the density plot 
star_density <- ggplot(top_rank, aes(x=value)) + 
  geom_density(fill="dodgerblue")  +
  facet_wrap('Website')+
  labs(x="Movies rated Out of 5 Stars", title = "How Different Websites Ranked The Top 15 movies")
star_density

#From the graphs we can see that Rotten tomatoes ranks that top 15 movies higher than the rest, starting just under 4.5 while the other website are more spread out. 