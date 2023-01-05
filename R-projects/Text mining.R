install.packages("tm")
library(tm)

docs <- Corpus(DirSource ("C:\\Users\\Amar\\OneDrive\\Desktop\\MMSO Subjects\\Data Science\\Assignments\\Week 5\\texts", encoding ="UTF-8"))
docs

str(docs)

summary(docs)

docs=tm_map(docs,content_transformer(tolower))
docs[1]$content

docs=tm_map(docs,removeWords,stopwords("english"))
docs[[1]]$content

docs=tm_map(docs,removePunctuation)
docs[[1]]$content


trumpDTM=DocumentTermMatrix(docs)
trumpDTM

inspect(trumpDTM)
View(inspect(trumpDTM))

inspect(trumpDTM[,c("free","russia","news")])
