###----------------------------------------------------------------------------
## 12-tidy-lab.R 
## In-class exercises
###----------------------------------------------------------------------------

library(tidyverse)



#--------------------------
## Your Turn: Table1
#--------------------------
# What dplyr function can be used to create the rate column?


#--------------------------
## Your Turn: Table2
#--------------------------
# What needs to be done to calculate the rate?


#--------------------------
## Your Turn: Table3
#--------------------------
# What needs to be done to actually calculate the rate? 


#--------------------------
## Your Turn: Table4
#--------------------------
# What needs to be done to calculate the rate? 
# Hint: The info is split between two tables.  Would it help if each table 
#          was in a different form?



#--------------------------
## Your Turn: gather()
#--------------------------



#--------------------------
## Your Turn: Tidy Tornadoes
#--------------------------

# a. Import the tornado data from 
# https://raw.githubusercontent.com/mdporter/ST597/master/data/tornado.csv 


# b. Create a data frame with columns year (`yr`), Fujita score (`f`), and 
#    count (`n`).


# c. Use `spread()` to convert to the required (untidy) table. Note: Some years 
#     have 0 EF-5 tornadoes. 



#--------------------------
## Your Turn: Time-of-Day
#--------------------------

# a. Use the `separate()` function to create three new columns 
#    (*hour*, *min*, *sec*) from the `time` column. 


# b. Add another column, named `time2`, that gives the fractional 
#    number of hours that a tornado occurred. 
  
# c. Generate a density plot of `time2`. 



#--------------------------
## Your Turn: Pew Survey
#
# Results from a pew survey were presented in a non-tidy (table) format where 
# the column headers are *values* instead of *variable names*. That is, the data 
# are in *wide* formate, and we desire the *long* format.
#--------------------------

# a. Load the data into R. The url to the raw data is 
#    https://raw.githubusercontent.com/hadley/tidyr/master/vignettes/pew.csv


# b. What are the three variables in the data?

# c. Use `gather()` to make the data *tidy* (i.e., long format, with one column 
#    for each variable).  


# d. Make a graphic from the long data comparing the distribution 
#    of income between Catholic and Evangelical Prot. 
