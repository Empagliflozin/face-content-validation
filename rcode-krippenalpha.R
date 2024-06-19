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

