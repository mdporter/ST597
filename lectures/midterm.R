###############################################################################
# NAME: 

# Instructions:
# - Enter your name above
# - Clear your environment: Session -> Restart R
# - Clear your History: Go to History Tab and click on the Broom to clear all
# - Load required packages (tidyverse)
# - Do not change the filename or move out of C:/Insight Files/midterm.R. 
#
# After completing exam:
# - When you are finished you must save your History:
#   - Go to History Tab
#   - Click on Save Button
#   - save into C:/Insight Files/history
# - save midterm.R file
# - raise you hand to indicate you are finished
# - email midterm.R and history to me at mporter@cba.ua.edu
# - I will automatically retrieve the files at the end of class. 
#    DO NOT LOGOUT until you confirm that I have the exam.
#
#
# - If a solution is one element in a data frame or vector, then specify which 
#    element is the solution. E.g. 
#    ## df = data %>% filter(...) %>% mutate(...) %>% arrange(...)
#    ## The answer is 24 (1st row of df)
###############################################################################

#===================================#
#-- Load the Data
#===================================#
library(tidyverse)
data(diamonds)
load("C:/Insight Files/examdata.RData")
# this should load offers, people, scores, and yelp into the Environment

## backup solution:
# load(url("https://github.com/mdporter/ST597/blob/master/data/examdata.RData?raw=true",
#          method="libcurl"))


#===================================#
#-- PART 1: More Diamonds
#===================================#

# Use the diamonds data from the ggplot2 package (part of tidyverse).

#-------------------------------------------------------------------------------
# 1. Create a scatterplot to show the relationship between carat and price.
#   - put `carat` on x-axis and `price` on the y-axis
#   - color all of the points blue
#   - set the shape of the points according to `cut`
#   - set the size of the points according to `clarity`
#   - add a smooth curve fit with line color of `orange` and fill color of `black`
#-------------------------------------------------------------------------------






#-------------------------------------------------------------------------------
# 2. Make this boxplot of diamond price for each quartile of carat.
#    (See the pdf for image of boxplot.) 
#-------------------------------------------------------------------------------





#===================================#
#-- PART 2: The Perfect Job
#===================================#

# Use the three data sets: offers, people, and scores
#   - `offers`: job offers made to applicants
#   - `people`: applicants and their personalities
#   - `scores`: score (utility) for jobtype - personality combinations


#-------------------------------------------------------------------------------
# 3. How many offers did each person (`name`) receive? 
#   - Create a tibble (or data frame) that shows the number of offers per person
#   - order the table so the person with the most offers is first 
#   - Resolve any ties by reverse alphabetical order (so Bob would come before 
#     Amy if both have same number of offers)
#-------------------------------------------------------------------------------




#-------------------------------------------------------------------------------
# 4. Find the best job offer for each person.
#   - Create a tibble (or data frame) that shows the best offer for each person
#   - The best offer is the offer with the highest score
#   - Hint: you need to combine the data so the score for the `jobtype` and 
#     `personality` can be determined for each offer
#   - some people have multiple offers with same best score. You can return one 
#      or all of these offers. 
#-------------------------------------------------------------------------------






#===================================#
#-- PART 3: Yelp
#===================================#

# Use the yelp dataset
#   - `review_id`: the id for the review
#   - `user_id`: the reviewer\'s id
#   - `date`: date of review
#   - `stars`: the star rating (1-worst, 5-best)
#   - `bus_category`: the type of business being reviewed
#   - `bus_id`: the id for the business being reviewed


#-------------------------------------------------------------------------------
# 5. Create a tibble (or data frame) of all 4-star (`stars`) reviews of 
#     restaurants and nightlife (`bus_category`) businesses. 
#-------------------------------------------------------------------------------





#-------------------------------------------------------------------------------
# 6. Average Star Rating
#    a. Calculate the average star rating (`stars`) from all reviews. Report the answer. 
#-------------------------------------------------------------------------------
## Answer: 



#-------------------------------------------------------------------------------
# 6. Average Star Rating
#     b. Calculate the average stars rating (`stars`) for every business category 
#       (`bus_category`) and report the category with the largest average 
#       star rating. 
#-------------------------------------------------------------------------------
## Answer: 




#-------------------------------------------------------------------------------
# 7. Which business category (`bus_category`) has the highest proportion of 
#      1-star (`stars`) reviews?  
#-------------------------------------------------------------------------------
## Answer: 




#-------------------------------------------------------------------------------
# 8. Produce a plot that shows the number of reviews in each `bus_category` and 
#     `stars` pair. 
#     - Use any method you want, but the resulting graphic should enable me to 
#       see at a glance e.g. the approximate number of *2-star restaurant* 
#       reviews. 
#-------------------------------------------------------------------------------










