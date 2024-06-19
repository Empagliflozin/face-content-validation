#define vector of packages to load
# Define a vector of packages to load
libraries <- c("ggplot2", "dplyr", "tidyr", "readr", "purrr", "tibble", "stringr", "forcats" , "vcd" , "psych" , "irr" , "krippendorfsalpha" , "ltm" )

# Function to install and load a package if it is not already installed
lapply(libraries, function(lib) {
  if (!require(lib, character.only = TRUE)) {
    install.packages(lib, dependencies = TRUE)
    library(lib, character.only = TRUE)
  }
})


