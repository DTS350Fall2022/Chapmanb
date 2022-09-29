#case Study #2

library(tidyverse)

urlfile="https://github.com/WJC-Data-Science/DTS350/raw/master/coral.csv"
mydata <- read_csv(url(urlfile))

#Look at the data 
head(mydata)
tail(mydata)
str(mydata)
dim(mydata)

#creat a graph that represents what coral bleaching has done to each location by time
ggplot(data = mydata, aes(x = Year, y = Value, fill = Event)) +
  facet_wrap(~Entity, nrow = 3, scales = "free") +
  geom_col() +
  labs(title = "Coral Bleaching Events", 
       subtitle = "The number of moderate (up to 30% of corals affected) and severe bleaching events (more than 30% corals) measured at 100 \nfixed global locations.", 
       caption = "Source: Hughes, T. P., et al. (2018). Spatial and temporal patterns of mass bleaching of corals in the Anthropocene. Science. \nOurWorldInData.org/biodiversity ? CC BY") +
  theme(legend.title = element_blank(), legend.justification = c(0, 1), 
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        plot.caption = element_text(hjust = 0, size = 8, color = 'gray40'),
        plot.title = element_text(size = 16, family = 'serif', color = "grey37", margin = margin(t = 1)),
        plot.subtitle = element_text(size = 8, color = "grey40"), 
        axis.ticks.x = element_line(color = "black"),
        axis.ticks.y = element_line(color = "white"),
        axis.text.y = element_text(color = "grey 40"),
        axis.text.x = element_text(color = "grey40"),
        panel.background = element_rect(fill = "white"),
        panel.grid.major.y = element_line(color = "gray", linetype = "dotted"))
