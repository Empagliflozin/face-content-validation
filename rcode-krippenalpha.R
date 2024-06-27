# Define a vector of packages to load
libraries <- c("ggplot2", "dplyr", "tidyr" , "tibble", "stringr", 
               "vcd", "psych", "irr", "krippendorffsalpha", "ltm", 
               "readxl")

# Function to install and load a package if it is not already installed
lapply(libraries, function(lib) {
  if (!require(lib, character.only = TRUE)) {
    install.packages(lib, dependencies = TRUE)
    library(lib, character.only = TRUE)
  }
})

# range variable (C4:N20) covers the spreadsheet cells 
# containing the 13 raters who participated in the face validation process

library(readxl)
test1 <- read_excel("~/Desktop/test1.xlsx", 
                    sheet = "Sheet2", 
                    range = "C4:N20")

View(test1)
# 1 = yes 
# 2 = no

# converts test1 into a matrix 
matrix1 <- as.matrix(test1)

# views matrix created from test1
view(matrix1)

# employs a customary or an analytical method on nominal data
# un-comment the control variable and change the method to customary if a confidence interval is needed
finalalpha <- krippendorffs.alpha(matrix1 , 
                                  level = "nominal", 
                                  method = "analytical",
                                  confint = FALSE)
                                  #control = list(bootit = 100000 , parallel = FALSE))

# prints out the summarized form of the alpha value and its 95% CI
summary(finalalpha)