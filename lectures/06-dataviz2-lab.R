###----------------------------------------------------------------------------
## 06-dataviz2-lab.R 
## In-class exercises
###----------------------------------------------------------------------------

library(tidyverse)
library(gcookbook)
library(Lahman)



#--------------------------
## Your Turn #1: Dot Plot vs. Bar Plot
#--------------------------
library(Lahman)     # load the Lahman package
data(Batting)       # load the Batting data  
H = Batting %>% 
  filter(yearID == 2014) %>% 
  group_by(teamID) %>% 
  summarize(teamHR = sum(HR), teamBA=sum(H)/sum(AB), teamR = sum(R)) 

#- (left) bar graph
ggplot(H) + geom_col(aes(x=reorder(teamID, -teamHR), y=teamHR)) 

#- (right) corresponding dot plot
ggplot(H) + geom_point(aes(x=reorder(teamID, -teamHR), y=teamHR)) 

# 1. What are the differences between the two plots? 



# 2. What aspects can be improved with the dot plot?  


#--------------------------
## Your Turn #2: Stock Price
#--------------------------

# 1. Check out the yahoo webpage of historical stock price data for Netflix (NFLX)
#    http://finance.yahoo.com/quote/NFLX/history?p=NFLX).

# 2. Notice the url from the `Download Data` link. 
#    There is a pattern in requesting dates (a,d are month-1). 
#    Here is the link I used from 1/1/16-2/4/17 where the:
#    FROM date is: &a=11&b=15&c=2016 
#    TO date is: &d=11&e=19&f=2016 
#    Be careful, fields a and d use index of month and not number, 
#    so for December use 11, and for January use 00.

url = "http://chart.finance.yahoo.com/table.csv?s=NFLX&a=00&b=01&c=2016&d=01&e=04&f=2017&g=d&ignore=.csv"

# 3. Read the data into R as a tibble:
NFLX = read_csv(url)

# 4. Examine the data, then create a line plot of the `Close` price by `Date`. 
#    Color the line darkgreen.


# 5. Use `geom_area()` to fill the area below the line with lightgreen. 



	
	
#--------------------------
## Your Turn #3: Old Faithful
#--------------------------

# The `geyser` data from the `MASS` package gives duration and waiting times 
# for The Old Faithful Geyser in Yellowstone National Park, Wyoming. 
# Load the `geyser` data. (Remember `install.packages()` if you don\'t have 
# `MASS` loaded)

library(MASS)
data(geyser)

# 1. Estimate the *density* of `duration` with a histogram.
#     - What did you choose for binwidth and/or origin and/or bins?


# 2. Add a KDE of `duration` to the histogram
#     - What did you choose for adjust (i.e., kernel bandwidth)?


# 3. Estimate the bivariate density of `duration` and `waiting`. 
#    Do you see how `duration` can have two groups?


# 4. Overlay two KDE density curves by creating a discrete variable for `fill=` 
#    by splitting the `waiting` time into two equally sized bins with 
#   `cut_number(waiting, n=2)`. (Make the plot below (ignore colors):)


