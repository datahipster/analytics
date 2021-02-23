library(readr)
library(tidyverse)
neworleanscsv<-   read_csv("Working with Columns/neworleanscrime.csv")
view(neworleanscsv)
glimpse(neworleanscsv)
### Using Select 
### Most Common Ways to use select
### 1. Select Columns you want for Analysis
### - column  1:3
neworleanscsv %>%
  select(1:5)

neworleanscsv %>%
  select(-Priority)

neworleanscsv %>% 
  select(TypeText,BLOCK_ADDRESS,Location)
### 2. Reorder Columns for Analysis 
neworleanscsv %>% 
  select(TimeCreate,TimeArrive,BLOCK_ADDRESS)

neworleanscsv %>% 
  select(TimeCreate,TimeArrive,BLOCK_ADDRESS,everything())
?select_helpers
### 3.  Using Select Helpers

## starts_with, ends_with, contains, everything
neworleanscsv %>% 
  
  select(starts_with("Type"))

neworleanscsv %>% 
select(-starts_with("Type"))

neworleanscsv %>% 
  select(contains("Map"))

neworleanscsv %>% 
  
  select(ends_with("Type"))

need= c('NOPD_Item', 'Type' ,'TypeText' ,'Priority', 'InitialType' ,'InitialTypeText' ,'InitialPriority')

neworleanscsv %>% 
  select(one_of(need))
