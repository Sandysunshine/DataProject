## Tidy Dataset for Human Activity Recognition Using Smartphones Dataset

Using instructions:
========================================================================================
Download the data from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Unzip it under the working directory, so under the working directory there is a folder named by "UCI HAR Dataset".

Run the R Script "run_analysis.R", then the tidy dataset file "TidyData.txt" will be generated under the working directory.


Introduction for the dataset:
========================================================================================
The Tidy dataset contains the average of the mean and standard deviation measurements for each pair of subject and activity type. It is transformed from Human Activity Recognition Using Smartphones Dataset(Version 1.0) in http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.


Dataset details:
=========================================================================================
180 rows for all the pairs of each subject and each activity;
2 columns for the subject number(1:30) and activity names(6 types of activities: WALKING
/ WALKING_UPSTAIRS
/ WALKING_DOWNSTAIRS
/ SITTING
5 STANDING
/ LAYING
);
66 columns features: average of mean and standard deviation measurements;  


Reference:
=========================================================================================
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012