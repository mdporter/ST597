###----------------------------------------------------------------------------
## 07-dataexplore-challenge.R 
## In-class exercises
###----------------------------------------------------------------------------


#--------------------------------------------------
# Level 1: Diamonds are Forever 
#--------------------------------------------------
library(tidyverse)
data(diamonds)

## 1.1 What proportion of diamonds are between .40 and 1.04 carats?


## 1.2 How many of the diamonds have equal x and y dimensions?


## 1.3 How many of the diamonds have a depth less than the mean?
   

## 1.4 How many diamonds have a `Very Good` cut or better?
#     - Note that cut is an *ordered factor* so the levels are in order. 

## 1.5 Which diamond has the highest price per carat? What is the value?


## 1.6 Make boxplots of the diamond price for each cut.


## 1.7 Find the 95th percentile for diamond price.
#    - Try the `quantile()` function.


## 1.8 What proportion of the diamonds with a price above the 95th percentile 
#      have the color `D` or `J`?


## 1.9 What proportion of diamonds with a clarity of VS2 have a Fair cut and a 
#      table below 56.1?


## 1.10 What is the average price per carat for each cut?


#--------------------------------------------------
# Level 2: Diamonds Keep their Value
#--------------------------------------------------
library(tidyverse)
data(diamonds)

## 2.1 Group diamonds by their cut and display the average price of each group. 


## 2.2 Then create a visualization for the last exercise to show the average 
#      price of each group. (Stats students are encouraged to include uncertainty.)


## 2.3 Group diamonds by color and display the average depth and average table 
#      of each group.  


## 2.4 Then create a visualization for the last exercise to show the average 
#      depth and average table of each group.


## 2.5 Add two columns to the diamonds data set. The first column should give 
#      the average *depth* of diamonds in the diamond\'s *color* group. The 
#      second column should give the average *depth* of diamonds in the 
#      diamond\'s *cut* group. Show only the columns `cut`, `color`, and the two 
#      new columns.


## 2.6 Group diamonds by cut, color, and clarity. Show the average price of the 
#      diamonds in each group. Arrange by average price (highest to lowest). 


## 2.7 What is the average price of the diamonds with the best cut, color, and 
#      clarity? Do the results from the previous question show that the diamonds 
#      with the best attributes (i.e., best cut, color, and clarity) have the 
#      highest average price? Please explain. See `?diamonds` for description of 
#      the characteristics. 


## 2.8 Add another column to the diamonds data named `ppc` that records the price 
#      per carat of each diamond. Then group the diamonds by cut, color, and 
#      clarity and display the average price and average ppc in each group. 
#      Arrange by average ppc (highest to lowest).


## 2.9 Create a scatterplot to show the relationship between `carat` and `ppc`. 
#      Also, create another scatterplot to show the relationship between `price` 
#      and `ppc`. Does `carat` or `price` have more predictive power?


## 2.10 Create a rough confidence interval for the true mean ppc in each group by 
#       showing 2 standard errors above and below the sample average ppc. Recall 
#       the standard error is standard deviation divided by square root of sample 
#       size ($se(\bar{x}) = s_x/\sqrt{n}$). Specifically, create new columns 
#       named `lower` and `upper` that give 2 standard errors below and above 
#       (respectively) the sample average ppc. Arrange by `lower` (highest to lowest). 


## 2.11 Add a column named `quartile` to the diamonds data set that displays the 
#       quartile of diamond\'s size (in carats). Label the quartiles 
#       `Q1`, `Q2`, `Q3`, `Q4`. Display all columns except `x, y, and z`. 
#    - Hint: use the function `cut_number()`. 


## 2.12 Show the number and percentage of diamonds in each quartile 
#       (from previous question).


## 2.13 Make a boxplot of diamond price for each quartile of carat.


## 2.14 What is the average and minimum price per carat of the diamonds that cost 
#       more than \$10000? 


## 2.15 Of the diamonds costing less than \$5000, what cut, color, and clarity 
#       combination has the most diamonds? What percentage of diamonds costing less than \$5000 does this represent?


#--------------------------------------------------
# Level 3: Finding Inequalities
# Universities (and corporations) are often concerned about gender inequality. 
# The file <"http://mdporter.github.io/ST597/data/ucb.csv"> contains a sample of 
# $n=4526$ students admittance decisions at a university by academic department.
#--------------------------------------------------

## Task 1

# Using only aggregate data (i.e., ignore department), do you think there is 
#  evidence of gender discrimination? 

# - Read in the data using `read_csv()`. 

library(tidyverse)
ucb = read_csv("http://mdporter.github.io/ST597/data/ucb.csv")

# - Create a new data frame that contains frequency and relative frequency of 
#   admittance by `Gender`. Show the data frame.


# - Make a relative frequency bar graph of admittance by `Gender`


# - Based on this information, indicate if you think there is gender 
#   discrimination. Provide justification.  


# - Especially for statistics students: Use statistical methods (confidence 
#   intervals or hypothesis test) to support your claims. See: `binom.test()` 
#   and `prop.test()`


## Task 2

# Now use the department information. Do you find evidence of gender 
# discrimination for a particular department?

# - create a new data frame that contains frequency and relative frequency of 
#   admittance by `Gender` for each `Dept`. Show the full data frame.


# - Make a bar graph with `Gender` on the x-axis, proportion admitted on the 
#   y-axis, and faceted by `Dept`


# - Make a side-by-side bar graph with `Dept` on the x-axis, proportion admitted 
#   on the y-axis, and `Gender` as the side-by-side.


# - Based on the Department level information, indicate if you think there is 
#   gender discrimination. If so, list the guilty departments. 


# - Hint: Always keep uncertainty of the estimates in mind (and hence sample size).



## Task 3

# Summarize your findings.   

