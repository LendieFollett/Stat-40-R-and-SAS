
#exploring the diamonds data

install.packages("ggplot2")
library(ggplot2)

diamonds
head(diamonds)
#head gives the first 6 rows
head(diamonds, n = 20)
#by default head gives 6 rows; we can change this by specifying a second argument n = ?
tail(diamonds)
#similar to head() but it gives the last 6 rows
summary(diamonds)
#gives summary statistics (mean, min, max, median, quantiles)
#very useful for getting an idea of each and every variable, and whether cleaning is necessary (later)
str(diamonds)
#one line for each column; gives type (numeric/character, ..etc, more on that later) also first few rows 
#str also gives the number of rows and number of columns at the very top ([number of rows x number of columns])
#thus, we now know that diamonds has 53,940 rows and 10 columns
#another way to get the dimensions is:
dim(diamonds)
#or
nrow(diamonds)
ncol(diamonds)
#here's a new one:
View(diamonds)

#We used head() before to see the first 6 rows of diamonds. 
#Alternatively, we could do:
diamonds[1, ] #note the comma is necessary since diamonds is a 2-dimensional data frame
diamonds[1:6, ]

#let's say we want to view only the column "carat". Note this is the FIRST (position 1) column in the data. 
diamonds$carat
diamonds[,"carat"]
diamonds[,1] #after the comma denotes the column positions

#If I wanted to look at the first few rows of carat:
diamonds$carat[1:10] #diamonds$carat is a 1-dimensional vector - no comma needed
#or
diamonds[1:10, "carat"]

#does carat influence price?
#look at the first few rows...

diamonds[1:10, c("carat", "price")]
#hard to tell.. look further down the data set

diamonds[100:110, c("carat", "price")]

#certainly seems like carat and price are related. We'll explore this further with visualizations.

ggplot(data = diamonds) +
  geom_bar(aes(x = clarity))

ggplot(data = diamonds) +
  geom_bar(aes(x = clarity, fill = clarity))

#YOUR TURN 
ggplot(data = diamonds) +
     geom_bar(aes(x = clarity, fill = cut))
ggplot(data = diamonds) +
  geom_bar(aes(x = clarity, fill = cut), position = "fill")




