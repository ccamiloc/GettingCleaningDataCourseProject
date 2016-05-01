##
## Autor: Cassio Camilo
## Date: 2016-04-30
##
## Companies like FitBit, Nike, and Jawbone Up are racing to develop the most 
## advanced algorithms to attract new users. The data linked are collected from
## the accelerometers from the Samsung Galaxy S smartphone.
##
## A full description is available at the site where the data was obtained:
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
## The data is available at:
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## 
## The aim of the project is to clean and extract usable data from the above zip file. R 
## script called run_analysis.R that does the following: - Merges the training and the test
## sets to create one data set. - Extracts only the measurements on the mean and standard 
## deviation for each measurement. 
## - Uses descriptive activity names to name the activities in the data set 
## - Appropriately labels the data set with descriptive variable names. 
## - From the data set in step 4, creates a second, independent tidy data set with the average 
## of each variable for each activity and each subject.
##
library(data.table)
library(dplyr)

#STEP 0
features <- read.table("UCI HAR Dataset/features.txt")
activitys <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)
Train.subject <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
Train.activity <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
Train.feature <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
Test.subject <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
Test.activity <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
Test.feature <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)

#STEP 1
Merge.subject <- rbind(Train.subject, Test.subject)
Merge.activity <- rbind(Train.activity, Test.activity)
Merge.features <- rbind(Train.feature, Test.feature)
colnames(Merge.features) <- t(features[2])
colnames(Merge.activity) <- "Activity"
colnames(Merge.subject) <- "Subject"
All.data <- cbind(Merge.features,Merge.activity,Merge.subject)

#STEP 2
columnsSelected <- grep(".*Mean.*|.*Std.*", names(All.data), ignore.case=TRUE)
requiredColumns <- c(columnsSelected, 562, 563)
selectedData <- All.data[,requiredColumns]

#SETP 3
selectedData$Activity <- as.character(selectedData$Activity)
for (i in 1:6){
  selectedData$Activity[selectedData$Activity == i] <- as.character(activitys[i,2])
}
selectedData$Activity <- as.factor(selectedData$Activity)


#STEP 4
names(selectedData)<-gsub("Acc", "Accelerometer", names(selectedData))
names(selectedData)<-gsub("Gyro", "Gyroscope", names(selectedData))
names(selectedData)<-gsub("BodyBody", "Body", names(selectedData))
names(selectedData)<-gsub("Mag", "Magnitude", names(selectedData))
names(selectedData)<-gsub("^t", "Time", names(selectedData))
names(selectedData)<-gsub("^f", "Frequency", names(selectedData))
names(selectedData)<-gsub("tBody", "TimeBody", names(selectedData))
names(selectedData)<-gsub("-mean()", "Mean", names(selectedData), ignore.case = TRUE)
names(selectedData)<-gsub("-std()", "STD", names(selectedData), ignore.case = TRUE)
names(selectedData)<-gsub("-freq()", "Frequency", names(selectedData), ignore.case = TRUE)
names(selectedData)<-gsub("angle", "Angle", names(selectedData))
names(selectedData)<-gsub("gravity", "Gravity", names(selectedData))

#STEP 5
selectedData$Subject <- as.factor(selectedData$Subject)
selectedData <- data.table(selectedData)
tidyData <- aggregate(. ~Subject + Activity, selectedData, mean)
tidyData <- tidyData[order(tidyData$Subject,tidyData$Activity),]
write.table(tidyData, file = "Tidy.txt", row.names = FALSE)
