# Define a vector of packages to load
libraries <- c("ggplot2", "dplyr", "tidyr", "readr", "purrr", "tibble", "stringr", 
               "forcats" , "vcd" , "psych" , "irr" , "krippendorffsalpha" , "ltm" 
               , "readxl" )

# Function to install and load a package if it is not already installed
lapply(libraries, function(lib) {
  if (!require(lib, character.only = TRUE)) {
    install.packages(lib, dependencies = TRUE)
    library(lib, character.only = TRUE)
  }
})

# reads the excel file containing the 'coded' questionnaire submission
# Yes is coded as '1' and No is coded as '0'
test1 <- read_excel("~/Desktop/test1.xlsx", col_names = TRUE ,
                    range = "B1:C7")
# prints out table of the excel sheet in a view tab
view(test1)
# checks column name
colnames(test1)

# converts the read excel file and reorganize it to a dataframe variable
dftest1 <- data.frame(test1)

# calculates cohen kappa
cohen.kappa(x = dftest1)

