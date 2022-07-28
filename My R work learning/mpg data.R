

# first loads the tidyvrese packages


library(tidyverse)
# Here we are using mpg data set for making plots

df<-mpg
df

#Here we aim to produce a scatter plot of the engine volume displacement vs
#fuel efficiency mileage in the city cty for each class of vehicle. 
#The points on the plot will be colored based on the vehicle class right-most column
df<-ggplot()
df
#We can call in different columns of data from mpgdf based on their column names
#Column names are given as aesthetic elements to the ggplot function
#and are wrapped in the aes function
df <- mpg
df %>% ggplot(aes(x = displ,y = cty))
df
#Geometric representations geom
df %>% ggplot(aes(x = displ,y = cty))+geom_point()
#From this we can see that vehicles with smaller engines lower displacement tend
#to have higher mileage in the city
df%>% ggplot(aes(x = displ,y = cty))+ geom_point(aes(colour=class))
#Adding layers
#The geom_smooth function draws a trend line through the data
df%>% ggplot(aes(x = displ,y = cty))+geom_point(aes(colour = class))+
  geom_smooth(formula = y~x,method = "lm")
#Facets
#In some cases we want to break up a single plot into sub-plots, called faceting
#Facets are commonly used when there is too much data
#to display clearly in a single plot
df%>% ggplot(aes(x= displ,y = cty))+geom_point(aes(colour = class))+
  geom_smooth(formula = y~x,method = "lm")+facet_wrap(~class)
#Coordinate space
#For the mpgdf plot, we want the x and y origin to be set at 0
#To do this we can add in xlim and ylim functions
#which define the limits of the axes
df%>% ggplot(aes(x = displ,y = cty))+ 
  geom_point(aes(colour =class))+
  geom_smooth(formula = y~x, method = "lm") +
  xlim(0,7)+ylim(0,40)
#Further, we can control the coordinate space using coord functions 
# we want to flip the x and y axes
#we add coord flip
df%>% ggplot(aes(x = displ,y = cty))+ 
  geom_point(aes(colour =class))+
  geom_smooth(formula = y~x, method = "lm") +
  xlim(0,7)+ylim(0,40)+
  coord_flip()
 # Axis labels
#By default, the axis labels will be the column names we gave as aesthetics aes 
#We can change the axis labels using the xlab and ylab functions 
df%>% ggplot(aes(x = displ,y = cty))+ 
  geom_point(aes(colour =class))+
  geom_smooth(formula = y~x, method = "lm") +
  xlim(0,7)+ylim(0,40)+
  xlab("Engine size[Volume](l)")+
  ylab("Miles per gallon in city")
#We can also add a title and subtitle with ggtitle
df%>% ggplot(aes(x = displ,y = cty))+ 
  geom_point(aes(colour =class))+
 theme_classic()
#You may prefer a classic theme a black and white theme or even theme void 
#Try them out
df%>% ggplot(aes(x = displ,y = cty))+ 
  geom_point(aes(colour =class))+
  geom_smooth(formula = y~x, method = "lm") +
  xlim(0,7)+ylim(0,40)+
  xlab("Engine size[Volume](l)")+
  ylab("Miles per gallon in city")+
  ggtitle(label = "Engine size affects millage",subtitle = "Some extra info here too")
  theme_classic()
