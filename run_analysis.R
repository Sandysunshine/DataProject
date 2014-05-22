library(data.table)
library(reshape2)

subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt")
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")

test<- read.table("UCI HAR Dataset/test/X_test.txt")
train<- read.table("UCI HAR Dataset/train/X_train.txt")

labelTest <- read.table("UCI HAR Dataset/test/y_test.txt")
labelTrain <- read.table("UCI HAR Dataset/train/y_train.txt")

features<- read.table("UCI HAR Dataset/features.txt")

activityName<- read.table("UCI HAR Dataset/activity_labels.txt")

names(test)<- features[,2]
names(train)<- features[,2]


test$subject <- subjectTest[,1]
test$activity <- labelTest[,1]

train$subject <- subjectTrain[,1]
train$activity <- labelTrain[,1]

data <- rbind(train, test)

vars1<-grepl("mean()", names(data), fixed=TRUE)
vars2<-grepl("std()", names(data), fixed=TRUE)
vars<- vars1|vars2
vars[dim(data)[2]]<-vars[dim(data)[2]-1]<-TRUE
extractedData<- data[vars]
names(activityName) = c("activity","activityName")
mergedData<- merge(extractedData, activityName, by="activity")
meltData<- melt(mergedData, id=c("subject","activity","activityName"))
tidydf<- dcast(meltData, activityName+subject~variable, mean)
write.table(tidydf, "TidyData.txt", sep="\t")