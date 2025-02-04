#Codebook

##Original data set description (from [UCI website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#))

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Check the README.txt file for further details about this dataset. 

A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: [Web Link]

An updated version of this dataset can be found at [Web Link]. It includes labels of postural transitions between activities and also the full raw inertial signals instead of the ones pre-processed into windows.

##Steps to clean the data

###Merge the training and the test sets to create one data set

The original data set contained many seperate but related tables. These tables were all merged into one complete data set

###Extract only the measurements on the mean and standard deviation for each measurement

The original data set contained variables for many different observations. Only the mean and standard deviations of these observations were required so they were extracted.

###Use descriptive activity names to name the activities in the data set

The original data set used numbers to identify the activity types. A new column was added (activity_name) to help identify the activity type

####Appropriately label the data set with descriptive variable names

The original data set did not have the attached headers for each of the columns. They were extracted from the seperate files and applied to the complete set.

###Create a second independent tidy data set with the average of each variable for each activity and each subject.

A new tidy data set was created and saved as tidy_data.txt