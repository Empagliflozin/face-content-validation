# Define a vector of packages to load
libraries <- c("ggplot2", "dplyr", "tidyr" , "tibble", "stringr", 
               "vcd" , "psych" , "irr" , "krippendorffsalpha" , "ltm" 
               , "readxl")

# Function to install and load a package if it is not already installed
lapply(libraries, function(lib) {
  if (!require(lib, character.only = TRUE)) {
    install.packages(lib, dependencies = TRUE)
    library(lib, character.only = TRUE)
  }
})

# reads the excel file containing the 'coded' questionnaire submission
# Rows 1-12 contains number 1 or 2
# Row 1 is set as the column name
# Yes is coded as '1' and No is coded as '0'
test1 <- read_excel("~/Desktop/test1.xlsx", col_names = TRUE ,
                    range = "B1:C17")
# prints out table of the excel sheet in a view tab
view(test1)
# checks column name
colnames(test1)

# converts the read excel file and reorganize it to a data frame variable
dftest1 <- data.frame(test1)

# calculates Cohen's Kappa
cohen.kappa(x = dftest1)

# calculates percentage agreement among two raters
agree(dftest1 , tolerance = 0)
