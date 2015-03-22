# Clean up workspace
rm(list=ls())

# 1. Merges the training and the test sets to create one data set.
#set working directory

setwd("E:\\0coursera\\getting and cleaning data\\course project\\UCI HAR Dataset")

# read in the data
# read in general info 
features=read.table('./features.txt')
activity=read.table('./activity_labels.txt') 

#read in training data
subject_train=read.table('./train/subject_train.txt')
activityType_train=read.table('./train/x_train.txt') 
activity_id_train=read.table('./train/y_train.txt')

#read in test data
subject_test=read.table('./test/subject_test.txt') #imports subject_test.txt
activityType_test=read.table('./test/x_test.txt') #imports x_test.txt
activity_id_test=read.table('./test/y_test.txt') #imports y_test.txt

#standardize variable names
colnames(activity)=c('activity_id','activity')
colnames(subject_train)="subject_id"
colnames(activityType_train)=features[,2]
colnames(activity_id_train)="activity_id"
colnames(subject_test)="subject_id"
colnames(activityType_test)=features[,2] 
colnames(activity_id_test)="activity_id"

# create the complete training&test dataset and merge them to get the mergerd dataset
training_data=cbind(subject_train,activity_id_train,activityType_train)
test_data=cbind(subject_test,activity_id_test,activityType_test)
mergedData=rbind(training_data,test_data)

# 2. Extract only the measurements on the mean and standard deviation for each measurement. 
# generate a logical vector 'flag' to extracts the mean and std.
flag1<-grepl("mean|std", features$V2)
flag2<-!grepl("meanFreq", features$V2)
flag<-flag1&flag2
flag<-c(T,T,flag)
mergedData=mergedData[flag]

# 3. Use descriptive activity names to name the activities in the data set
mergedData$activity_id <- as.character(mergedData$activity_id)
mergedData$activity_id[mergedData$activity_id== 1] <- "Walking"
mergedData$activity_id[mergedData$activity_id== 2] <- "Walking Upstairs"
mergedData$activity_id[mergedData$activity_id== 3] <- "Walking Downstairs"
mergedData$activity_id[mergedData$activity_id== 4] <- "Sitting"
mergedData$activity_id[mergedData$activity_id== 5] <- "Standing"
mergedData$activity_id[mergedData$activity_id== 6] <- "Laying"

# 4. Appropriately label the data set with descriptive activity names. 
names(mergedData) <- gsub("^t", "time_", names(mergedData))
names(mergedData) <- gsub("^f", "frequency_", names(mergedData))
names(mergedData) <- gsub("Acc", "Accelerator", names(mergedData))
names(mergedData) <- gsub("Mag", "Magnitude", names(mergedData))
names(mergedData) <- gsub("Gyro", "Gyroscope", names(mergedData))

# 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject. 
library(data.table)
data_temp <- data.table(mergedData)

#take the mean of each column broken down by participants and activities
tidyData <- data_temp[, lapply(.SD, mean), by='subject_id,activity_id']

# export the final tidy data 
write.table(tidyData, './tidyData.txt',row.names=F)
