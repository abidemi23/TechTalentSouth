#Exercise 1
#List all example files available with the readr library.
library(readr)
read_csv(readr_example())

#Exercise 2
#Read the mtcars.csv file.
cars <- read_csv(readr_example('mtcars.csv'))
cars

#Exercise 3
#Read the first 10 lines from the mtcars.csv file.
head(cars,10)

#Exercise 4
#Read the example.log file.
ex_log <- read_log(readr_example('example.log'))
ex_log

#Excercise 5
#List all sheets in readxl_example("datasets.xlsx").
library(readxl)
excel_sheets(readxl_example('datasets.xlsx'))
#this shows content in data set
path <-readxl_example('datasets.xlsx')
lapply(excel_sheets(path),read_excel, path = path)

#Exercise 6
#Read data from the last sheet.
read_excel(path,sheet = 4)

#Exercise 7
#Load the dplyr package. Install and load the AER package and run the command data("Fertility") which loads the dataset Fertility to your workspace. Take a glimpse() at the data.
library(dplyr)
library(AER)
data('Fertility')
Fertility%>% glimpse()

#Exercise 8
#Select rows 35 to 50 and print to console its age and work entry.

print(Fertility[35:50,c('age','work')])

#Exercise 9
#Select the last row in the dataset and print to console.
tail(Fertility,1)

#Exercise10
#Count how many women proceeded to have a third child.
Fertility%>% filter(morekids=='yes')%>%count()

#Exercise11
#There are four possible gender combinations for the first two children. Which is the most common?
Fertility%>% count(gender1,gender2)%>%filter(n== max(n))

