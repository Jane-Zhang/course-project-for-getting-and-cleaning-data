#This Codebook describes the variables, the data, and any transformations or work that was performed in the run_analysis.R file.

##Variables
###'subject_id'
ID of subject(1-30)
###'activity_id'
activity type performed by the subject
###Other variables
**Since these variables are long-name and in some fixed pattern, they are described in a summary way.**<br />
**The Words and their meanings are in correspondence as follow:**<br />
time: time domain<br />
frequency: frequency domain<br />
body: accelerator or Gyroscope signal risen from body motion.<br />
Gravity: accelerator or Gyroscope signal risen from gravity.<br />
Accelerator: accelerator signal<br />
Gyroscope: Gyroscope signal<br />
mean: the average mean value of each variable for each activity and each subject<br />
std: the average standard deviation of each variable for each activity and each subject<br />

##The final data
It is a second, independent tidy data set with the average of each variable for each activity and each subject.

##Work performed
Merges the training and the test sets to create one data set.<br />
Extracts only the measurements on the mean and standard deviation for each measurement.<br /> 
Uses descriptive activity names to name the activities in the data set<br />
Appropriately labels the data set with descriptive variable names. <br />
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

