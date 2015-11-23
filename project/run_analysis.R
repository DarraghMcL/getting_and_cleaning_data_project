#setwd("~/Desktop/getting_and_cleaning_data_project/project/")
library(dplyr)

#Setting up the file locations
test_directory <- "./UCI HAR Dataset/test/X_test.txt"
train_directory <- "./UCI HAR Dataset/train/X_train.txt"
train_labels_directory <- "./UCI HAR Dataset/train/y_train.txt"
test_labels_directory <- "./UCI HAR Dataset/test/y_test.txt"
activity_label_directory <- "./UCI HAR Dataset/activity_labels.txt"
features_directroy <- "./UCI HAR Dataset/features.txt"

#Creating headers for the data sets
activity_label_header <- c("activity_id", "activity_name")
label_headers <- c("activity_id")
features_header <- read.table(features_directroy)

#Reading in the data and applying sensible column names
test_data <- read.csv(test_directory, header=FALSE, sep = "", col.names = features_header[,2])
train_data <- read.csv(train_directory, header=FALSE, sep = "", col.names = features_header[,2])
test_labels <- read.csv(test_labels_directory, header=FALSE, sep = "", col.names = label_headers)
train_labels <- read.csv(train_labels_directory, header=FALSE, sep= "", col.names = label_headers)
activity_labels <- read.csv(activity_label_directory, header=FALSE, sep= "", col.names = activity_label_header)

complete_test <- cbind(test_data, test_labels)
complete_train <- cbind(train_data, train_labels)

complete_data <- rbind(complete_test, complete_train)

#Extracting only the mean and standard deviation columns
complete_data <- select(complete_data, contains("mean"), contains("std"), activity_id)

#Giving activity column descriptive activity names
complete_data <- merge(complete_data, activity_labels)

#Output data set
write.table(complete_data, file = "./tidy_data.txt", row.names = FALSE)
