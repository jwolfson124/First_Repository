## when using R for creating plots and using ggplot2 make sure the + sign is seperate for the title
## and access to properly change
library (datasets)

data("mtcars")

head(mtcars, 5)
##loads the data and allows us to see it

##gives us information about the variables
?mtcars

##uploads the library we are going to use
library(ggplot2)

##this code is going to create a scatter plot of displacement by miles per gallon
ggplot(aes(x=disp, y=mpg,),data=mtcars)+geom_point() + 

##adds title
ggtitle("displacement vs miles per gallon") +

##changes name of axis
labs(x = "Displacement", y = "Miles Per Gallon")

#make vs a factor
mtcars$vs <- as.factor(mtcars$vs)

## creating boxplot ggplot(aes(x=vs, y=mpg,), data=mtcars) + geom_boxplot()

##add color to the boxplots
ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + 
  geom_boxplot(alpha=0.3) + 
  theme(legend.position = "none") + ggtitle("MPG vs Engine Shape")

##create histogram of weight

ggplot(aes(x=wt), data=mtcars) + geom_histogram(binwidth = 0.5)

