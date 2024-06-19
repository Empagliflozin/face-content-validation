#define vector of packages to load
# List of libraries to load
libraries <- c("ggplot2", "dplyr", "tidyr", "readr", "purrr", "tibble", "stringr", "forcats" , "vcd" , "psych" , "irr" , "krippendorfsalpha" , "ltm" )

# Function to load each library
lapply(libraries, function(lib) {
  if (!require(lib, character.only = TRUE)) {
    install.packages(lib, dependencies = TRUE)
    library(lib, character.only = TRUE)
  }
})


