medals <-data.frame ( Country =c("NOR", "GER ", " CHN"),Gold =c(16 ,12 ,9) ,Silver =c(8 ,10 ,4) ,Bronze =c(13 ,5 ,2))
medals

#1:Select the first and third rows and the first and third columns
medals[c(1,3),]
medals[,1:1]

#2: Return a data frame that contains just the CHN row.
medals[3,]

#3:Return a data frame that contains the medals of Norway and Germany.
medals[1:2,]

#4:Select countries who won ten or more gold medals and return the Country and Gold columns using the subset() command.
subset(medals,Gold>10)[,'Country']

#5.Sort the medals by bronze (descending).
df=medals[order(medals$Bronze,decreasing=TRUE),]
df



setwd('MacintoshHD\\Users\\anchal\\Desktop\\DATA SCIENCE\\TUTORIAL')
data = read.csv("Beijing2022(1).csv")
data

#1: Similar to what we did before try and compute the total number of medals won for each country and add this as a fifth column to beijing2022Medals.
Total_medals=data$Gold+data$Silver+data$Bronze
Total_medals
data_mod=cbind(data,Total_medals)
data_mod

#2: Order the rows by the total number of medals won.
# since it is not mentioned to order in descending or ascending hence total number of medals won are ordered in ascending manner.
data_mod_des= data_mod[order(data_mod$Total_medals,decreasing = FALSE),]
data_mod_des

#3:Sort the data first by the number of total medals won (in descending order) and then by the number of gold medals won (also in descending order).
# for descending order
data_mod_des= data_mod[order(data_mod$Total_medals,decreasing = TRUE),]
data_mod_des
# for ascending order
data_mod_des= data_mod[order(data_mod$Gold,decreasing = FALSE),]
data_mod_des

#4.Calculate the total number of gold, silver and bronze medals won at Beijing 2022.
# total number of gold medals
total_goldmedals=data_mod[c("Gold")]
colSums(total_goldmedals,na.rm=TRUE)

# total number of silver medals
total_Silvermedals=data_mod[c("Silver")]
colSums(total_Silvermedals,na.rm=TRUE)

# total number of Bronze medals
total_Bronzemedals=data_mod[c("Bronze")]
colSums(total_Bronzemedals,na.rm=TRUE)

#5.Work out the overall number of medals won by all countries in the Olympic Games in 2022?
total_numberof_medals = data_mod[c("Total_medals")]
total_numberof_medals
colSums(total_numberof_medals,na.rm=TRUE)
  