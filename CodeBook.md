#This Codebook describes the variables, the data, and any transformations or work that was performed in the run_analysis.R file.

##Variables
###'subject_id'
ID of subject(1-30)
###'activity_id'
activity type performed by the subject
###Other variables
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).<br />

Baed on the naming rule from the original dataset, all the variable names has been organized to a more descriptive manner as below.<br />

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

**Note: features are normalized and bounded within [-1,1].**

##The final data
It is a second, independent tidy data set with the average of each variable for each activity and each subject.

##Work performed
Merges the training and the test sets to create one data set.<br />
Extracts only the measurements on the mean and standard deviation for each measurement.<br /> 
Uses descriptive activity names to name the activities in the data set<br />
Appropriately labels the data set with descriptive variable names. <br />
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

