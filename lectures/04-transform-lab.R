###----------------------------------------------------------------------------
## 04-transform-lab.R 
## In-class exercises
###----------------------------------------------------------------------------

library(dplyr)
library(nycflights13)

#--------------------------
## Your Turn: Filter
#--------------------------

# Find all the flights that:
  
# a. Departed in July  

# b. That flew to Houston (`IAH` or `HOU`)  

# c. Departed in July and flew to Houston 

# d. Flew to `Hou` or Originated from 'JFK`

# e. That were delayed by more than two hours  

# f. That arrived more than two hours late, but didn't leave late  

# g. Had an arrival time earlier than departure time


#--------------------------
## Your Turn: Arrange
#--------------------------

# a. Sort flights to find the most delayed flights

# b. Sort flights to find the least delayed flights

# c. Sort flights by destination and break ties by descending arrival delay

# d. Sort flights to find highest average flight speed (distance/air_time)



#--------------------------
## Your Turn: Mutate
#--------------------------

# a. Create a new data frame that contains only the flights that were 
#    delayed by more than 1 hour. Keep only the columns: 
#    `dep_delay`, `arr_delay`, `origin`, `dest`, `air_time`, and `distance`. 

# b. Add the $Z$-score for departure delays to the new data frame

# c. Convert the departure and arrival delays into hours

# d. Return only the average flight speed (in mph)

# e. Calculate the mean speed 




