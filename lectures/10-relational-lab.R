###----------------------------------------------------------------------------
## 10-relational-lab_solutions.R 
## In-class exercises
###---------------


library(tidyverse)
library(nycflights13)
library(Lahman)
library(babynames)
library(fueleconomy)
library(nasaweather)

###-----------------------------###
### Exercises: Relations 1.2
###-----------------------------###

# 1. Imagine you want to draw (approximately) the route each plane flies from
# its origin to its destination. What variables would you need? What tables
# would you need to combine?

# 2. I forgot to draw the a relationship between `weather` and `airports`.  
# What is the relationship and what should it look like in the diagram?

 
# 3. `weather` only contains information for the origin (NYC) airports. If
# it contained weather records for all airports in the USA, what additional
# relation would it define with `flights`?

###-----------------------------###
### Your Turn: Relations 1.2.1
###-----------------------------###

# 1. You might expect that there is an implicit relationship between `planes` and
# `airlines`, because each plane is flown by a single airline. Confirm or 
# reject this hypothesis using data.
# - Can `planes` and `airlines` be directly connected?
# - How could `planes` and `airlines` be connected from the `flights` data?
# - Do some planes (`tailnum`) have multiple carriers? How can we find out with the `flights` data?
 
# 2.  We know that some days of the year are ``special", and fewer people than
#     usual fly on them. 
#     - Represent this data as a data frame?
#     - What would be the primary keys of that table? How would it connect to the
#     existing tables?


###-----------------------------###
### Exercises: Keys 1.3.1
###-----------------------------###

# 1. What is the primary key for flights dataset?
 
# 2. Add a surrogate key to flights.
 
# 3. Identify the keys in the `Lahman::Batting` dataset. Hint, convert `Batting` to tibble to help with printing. 
 
# 4.  Draw a diagram illustrating the connections between the `Batting`,
# `Master`, and `Salaries` tables in the Lahman package. 
 
# 5. How would you characterise the relationship between the `Batting`,
# `Pitching`, and `Fielding` tables?


###-----------------------------###
### Your Turn: Keys 1.3.2
###-----------------------------###

# Identify the keys in the following datasets:
  
# 1. `babynames::babynames`
 
# 2.  `nasaweather::atmos`
 
# 3.  `fueleconomy::vehicles`

###-----------------------------###
## Exercises: 2.1.2
###-----------------------------###

# 1.  Compute the average delay by destination, then join on the `airports`
# data frame so you can show the spatial distribution of delays. 

dest_delays = ????

ggplot(dest_delays, aes(x=lon, y=lat, size=n.flights, color=avg.delay)) + 
  geom_point() + 
  scale_size_area() + 
  scale_color_gradient2(low='#91bfdb', mid='#ffffbf', high='#fc8d59') +  # color gradient
  borders("state") +                                # add map outline
  coord_quickmap(xlim=c(-125, -68), ylim=c(25, 50)) # mainland US only


###-----------------------------###
### Your Turn: Joins 2.2.1
###-----------------------------###

# 1.  Is there a relationship between the age of a plane and its *average* delays?

# 2. What does `anti_join(flights, airports, by = c("dest" = "faa"))` tell you?
# What does  `anti_join(airports, flights, by = c("faa" = "dest"))` tell you?
 
# 3. Filter `flights` to only show flights with planes that have flown at least 100 flights.
 
# 4. Find all the planes (`tailnum`) manufacturered by `AIRBUS` and flown by `Delta`. 

