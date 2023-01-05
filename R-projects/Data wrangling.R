install.packages("tidyverse")
library(tidyverse)

write.csv(mpg,"C:\\Users\\Amar\\OneDrive\\Desktop\\MMSO Subjects\\Data Science\\Assignments\\Week 3\\mpg.csv")

#3.1.1 Filter rows where the manufacturer is Audi or the year of production (year)is 1999.
mpg
dplyr::filter (mpg , manufacturer=="audi" | year==1999)

#3.1.2 Filter rows where the year of production (year) is 1999 and the manufacturer is NOT Audi

dplyr::filter (mpg , manufacturer!="audi" & year==1999)

#3.2 To better view the ordered tibble, pipe the results of the arrange function into the function View. Make sure that ties between countries with the same number of gold and silver medals are sorted based on the number of bronze medals.

setwd('C:\\Users\\Amar\\OneDrive\\Desktop\\MMSO Subjects\\Data Science\\Assignments\\Week 3')
beijing2022Medals = read.csv("Beijing2022.csv")
beijing2022Medals
dplyr::arrange(beijing2022Medals , desc ( Gold ), desc ( Silver ), desc (Bronze ))

#3.3 Selecting columns - select

select (mpg , manufacturer , hwy)
select (mpg , starts_with ("d"))

#3.4 Creating new variables – mutate

mutate(beijing2022Medals , Total = Gold + Silver + Bronze)

#3.5.1 How many unique models do each manufacturer produce

by_model<-group_by(mpg, manufacturer,model, add = TRUE)
summarise(by_model,noofuniquemodel=length(model))

#3.5.2 Create a new column with a ratio of highway (hwy) vs city (cty) range called HwyCtyRatio.

dplyr::mutate(mpg, HwyCtyRatio.=hwy/cty)