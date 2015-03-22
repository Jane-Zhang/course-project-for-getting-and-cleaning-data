# course-project-for-getting-and-cleaning-data
##This is a repo for the course project for the Johns Hopkins Getting and Cleaning Data course on Coursera.
The main goal of this project is to process data gained from the accelerometers from the Samsung Galaxy S smartphone.
The dataset can be downloaded from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

##Files
###CodeBook.md 
describes the variables, the data, and any transformations or work that was performed to clean up the data.
###run_analysis.R 
contains all the code to perform the analyses described in the 5 steps. They can be launched in RStudio by just importing the file.

##run_analysis.R does the following.

1.Merges the training and the test sets to create one data set.<br />
2.Extracts only the measurements on the mean and standard deviation for each measurement.<br />
3.Uses descriptive activity names to name the activities in the data set<br />
4.Appropriately labels the data set with descriptive activity names.<br />
5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject.<br />

The output of the 5th step is called tidyData.txt
