
#Microsoft xlsx files
library(readxl)
LuxuryLoanPortfolio <- read_excel("EDA CIA-1/LuxuryLoanPortfolio.xlsx")
View(LuxuryLoanPortfolio)
#Display the data structure of the object
base::class(LuxuryLoanPortfolio)
#Display the data types of the elements of an R Object
utils::str(LuxuryLoanPortfolio)
# Prints the first six entries of the dataframe
utils::head(LuxuryLoanPortfolio)
# Prints the last six entries of the dataframe
utils::tail(LuxuryLoanPortfolio)
# To get the dimensions of an object
base::dim(LuxuryLoanPortfolio)

#Data cleaning
LuxuryLoanPortfolio0<-LuxuryLoanPortfolio
#select
selected <- select(LuxuryLoanPortfolio, funded_amount)
head(selected, 5)
#summary
summary(LuxuryLoanPortfolio)
#Rename a column name
colnames(LuxuryLoanPortfolio0)[2] = "c2"
print(LuxuryLoanPortfolio0)
summary(LuxuryLoanPortfolio0)
#plot
plot(LuxuryLoanPortfolio$funded_amount, LuxuryLoanPortfolio$funded_date)
#hist
list(LuxuryLoanPortfolio$funded_amount, LuxuryLoanPortfolio$funded_date)

