
#'---
install.packages("tidyverse")
library(tidyverse)
mpg_df <- mpg
mpg_df
# Make a new data frame with new variable and assign to the old data set
mpg_slim <- mpg_df %>% filter(class=="midsize") %>% 
  select(class,manufacturer,displ,year) %>% 
  arrange(displ)
mpg_slim
#Chaining dplyr and ggplot
mpg_df %>% filter(class=="midsize") %>% 
  select(class,manufacturer,displ,year) %>% 
  arrange(displ) %>% 
  ggplot(aes(x=class,y=displ))+geom_boxplot()
mpg_slim %>% ggplot(aes(x=class,y=displ))+geom_boxplot()
#What does the density distribution of z scores look like for each cut?
diamonds_df <- diamonds
diamonds_df
diamonds_df %>% group_by(clarity) %>% summarise(maxprice= max(price))
diamonds_df %>% group_by(cut) %>% summarise(sdwt=sd(carat))
weight_z <- diamonds_df %>% group_by(cut) %>% 
  mutate(Mean_weight=mean(carat),sd_weight=sd(carat),
         z=(carat-Mean_weight/sd_weight))
weight_z %>% ggplot(aes(x=z))+geom_density(aes(col=cut))
e <- ggplot(mpg, aes(cty,hwy))
e + geom_text(aes(label = cty), nudge_x = 1, nudge_y = 1, check_overlap = TRUE)
#'---