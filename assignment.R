# a3-using-data

################################### Set up (2 Points) ###################################

# Before you get started, make sure to set your working directory using the tilde (~)

################################### DataFrame Manipulation (20 Points) ###################################

# Create a vector `first.names` with 5 names in it

# Create a vector `math.grades` with 5 hypothetical grades (0 - 100) in a math course (that correspond to the 5 names above)

# Create a vector `spanish.grades` with 5 hypothetical grades (0 - 100) in a Spanish course (that correspond to the 5 names above)

# Create a data.frame variable `students` by combining your vectors `first.names`, `math.grades`, and `spanish.grades`

# Create a variable `num.students` that contains the number of rows in your data.frame `students`

# Create a variable `num.courses` that contains the number of columns in your data.frame `students` minus one (b/c of their names)

# Add a new column `grade.diff` to your dataframe, which is equal to `students$math.grades` minus `students$spanish.grades`

# Add another column `better.at.math` as a boolean (TRUE/FALSE) variable that indicates that a student got a better grade in math

# Create a variable `num.better.at.math` that is the number (i.e., one numeric value) of students better at math

# Write your `students` data.frame to a new .csv file inside your data/ directory with the filename `grades.csv`. Make sure not to write row names.


################################### Loading R Data (28 points) ###################################

# In this section, you'll work with some data that comes built into the RStudio environment.
# Load the `Titanic` data set. You may also want to use RStudio to `View()` it to learn about its rows and columns.

# This data set actually loads in a format called a *table*
# Table documentation: https://cran.r-project.org/web/packages/data.table/data.table.pdf
# This is slightly different than a data frame. Use the `is.data.frame()` function to confirm this.

# You should convert the `Titanic` variable into a data frame; you can use the `data.frame()` function or `as.data.frame()`
# Be sure to **not** treat strings as factors!

# Create a variable `children` that are the rows of the data frame with information about children on the Titanic.

# Create a variable `num.children` that is the total number of children on the Titanic.
# Hint: remember the `sum()` function!

# Create a variable `most.lost` which has row with the largest absolute number of losses (people who did not survive).
# Tip: you can use multiple statements (lines of code), such as to make "intermediate" sub-frames (similar to what you did with the `children` variables)

# Define a function called `SurvivalRate` that takes in a ticket class (e.g., "1st", "2nd") as an argument.
# This function should return a sentence describing the total survival rate of men vs. "women and children" in that ticketing class.
# For example: `"Of Crew class, 87% of women and children survived and 22% of men survived."`
# The approach you take to generating the sentence to return is up to you. A good solution will likely utilize 
# intermediate variables (subsets of data frames) and filtering to produce the required data.
# Avoid using a "loop" in R!

# Call your `SurvivalRate()` function on each of the ticketing classes (`Crew`, `1st`, `2nd`, and `3rd`)


################################### Reading in Data (40 points) ###################################
# In this section, we'll read in a .csv file, which is essentially a tabular row/column layout 
# This is like Microsoft Excel or Google Docs, but without the formatting. 
# The .csv file we'll be working with has the life expectancy for each country in 1960 and 2013. 
# We'll ask real-world questions about the data by writing the code that answers our question. Here are the steps you should walk through:

# Using the `read.csv` funciton, read the life_expectancy.csv file into a variable called `life.expectancy`
# Makes sure not to read strings as factors

# Determine if life.expectancy is a data.frame by using the is.data.frame function. You may also want to View() it.

# Create a column `life.expectancy$change` that is the change in life expectancy from 1960 to 2013

# Create a variable `most.improved` that is the name of the country with the largest gain in life expectancy

# Create a variable `num.small.gain` that has the number of countries whose life expectance has improved fewer than 5 years between 1960 and 2013

# Write a function `CountryChange` that takes in a country's name as a parameter, and returns it's change in life expectancy from 1960 to 2013

# Using your `CountryChange` funciton, create a variable `sweden.change` that is the change in life expectancy from 1960 to 2013 in Sweden

# Define a function `LowestLifeExpInRegion` that takes in a **region** as an argument, and returns 
# the **name of the country** with the lowest life expectancy in 2013 (in that region)

# Using the function you just wrote, create a variable `lowest.in.south.asia` that is the country with the lowest life expectancy in 2013 in South Asia

# Write a function `BiggerChange` that takes in two country names as parameters, and returns a sentence that 
# describes which country experienced a larger gain in life expectancy (and by how many years). 
# For example, if you passed the values "China", and "Bolivia" into your function, it would return this:
# "The country with the bigger change in life expectancy was China (gain=31.9), whose life expectancy grew by 7.4 years more than Bolivia's (gain=24.5)."
# Make sure to round your numbers.

# Using your `BiggerChange` funciton, create a variable `usa.or.france` that describes who had a larger gain in life expectancy (the United States or France)

# Write your `life.expectancy` data.frame to a new .csv file to your data/ directory with the filename `life_expectancy_with_change.csv`. Make sure not to write row names.

################################### Challenge (10 points) ###################################

# Create a variable that has the name of the region with the 
# highest average change in life expectancy between the two time points. 
# To do this, you'll need to compute the average change across the countries in each region, and then 
# compare the averages across regions. Feel free to use any library of your choice, or base R functions.


# Create a *well labeled* plot (readable title, x-axis, y-axis) showing
# Life expectancy in 1960 v.s. Change in life expectancy
# Programmatically save (i.e., with code, not using the Export button) your graph as a .png file in your repo 
# Then, in a comment below, provide an *interpretation* of the relationship you observe
# Feel free to use any library of your choice, or base R functions.

# What is your interpretation of the observed relationship?
