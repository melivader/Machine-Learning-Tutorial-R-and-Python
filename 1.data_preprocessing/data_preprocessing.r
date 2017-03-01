# Data preprocessing

# Importing the Dataset
dataset = read.csv('./Data.csv')

# Take care of Missing data (n/a | nan)
dataset$Age = ifelse(is.na(dataset$Age),
                     ave(dataset$Age, FUN = function(x) mean(
                       x, na.rm = TRUE)),
                     dataset$Age)

dataset$Salary = ifelse(is.na(dataset$Salary),
                        ave(dataset$Salary, FUN = function(x) mean(
                          x, na.rm = TRUE)),
                        dataset$Salary)
