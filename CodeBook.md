# CodeBook for GettingAndCleaningData

## Data used

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Data format

In zip file we have:

* X_train.txt: contains variable features that are intended for training.
* y_train.txt: contains the activities corresponding to X_train.txt.
* subject_train.txt: contains information on the subjects from whom data is collected.
* X_test.txt: contains variable features that are intended for testing.
* y_test.txt: contains the activities corresponding to X_test.txt.
* subject_test.txt: contains information on the subjects from whom data is collected.
* activity_labels.txt: contains metadata on the different types of activities.
* features.txt: contains the name of the features in the data sets.

## Transformation that was made

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Variables in the Tidy data

* Subject: Value representing a subjetc
* Activity: Name of the activity, can be:
* * WALKING
* * WALKING_UPSTAIRS
* * WALKING_DOWNSTAIRS
* * SITTING
* * STANDING
* * LAYING
* TimeBodyAccelerometerMean()-X: Value of the mean 
* TimeBodyAccelerometerMean()-Y: Value of the mean 
* TimeBodyAccelerometerMean()-Z: Value of the mean 
* TimeBodyAccelerometerSTD()-X: Valeu of the STD
* TimeBodyAccelerometerSTD()-Y: Valeu of the STD
* TimeBodyAccelerometerSTD()-Z: Valeu of the STD
* TimeGravityAccelerometerMean()-X: Value of the mean 
* TimeGravityAccelerometerMean()-Y: Value of the mean 
* TimeGravityAccelerometerMean()-Z: Value of the mean 
* TimeGravityAccelerometerSTD()-X: Valeu of the STD
* TimeGravityAccelerometerSTD()-Y: Valeu of the STD
* TimeGravityAccelerometerSTD()-Z: Valeu of the STD
* TimeBodyAccelerometerJerkMean()-X: Value of the mean 
* TimeBodyAccelerometerJerkMean()-Y: Value of the mean 
* TimeBodyAccelerometerJerkMean()-Z: Value of the mean 
* TimeBodyAccelerometerJerkSTD()-X: Valeu of the STD
* TimeBodyAccelerometerJerkSTD()-Y: Valeu of the STD
* TimeBodyAccelerometerJerkSTD()-Z: Valeu of the STD
* TimeBodyGyroscopeMean()-X: Value of the mean 
* TimeBodyGyroscopeMean()-Y: Value of the mean 
* TimeBodyGyroscopeMean()-Z: Value of the mean 
* TimeBodyGyroscopeSTD()-X: Valeu of the STD
* TimeBodyGyroscopeSTD()-Y: Valeu of the STD
* TimeBodyGyroscopeSTD()-Z: Valeu of the STD
* TimeBodyGyroscopeJerkMean()-X: Value of the mean 
* TimeBodyGyroscopeJerkMean()-Y: Value of the mean 
* TimeBodyGyroscopeJerkMean()-Z: Value of the mean 
* TimeBodyGyroscopeJerkSTD()-X: Valeu of the STD
* TimeBodyGyroscopeJerkSTD()-Y: Valeu of the STD
* TimeBodyGyroscopeJerkSTD()-Z: Valeu of the STD
* TimeBodyAccelerometerMagnitudeMean(): Value of the mean 
* TimeGravityAccelerometerMagnitudeMean(): Value of the mean 
* TimeBodyAccelerometerJerkMagnitudeMean(): Value of the mean 
* TimeBodyAccelerometerMagnitudeSTD(): Valeu of the STD
* TimeGravityAccelerometerMagnitudeSTD(): Valeu of the STD
* TimeBodyAccelerometerJerkMagnitudeSTD(): Valeu of the STD
* TimeBodyGyroscopeMagnitudeMean(): Value of the mean 
* TimeBodyGyroscopeMagnitudeSTD(): Valeu of the STD
* TimeBodyGyroscopeJerkMagnitudeMean(): Value of the mean 
* TimeBodyGyroscopeJerkMagnitudeSTD(): Valeu of the STD
* FrequencyBodyAccelerometerMean()-X: Value of the mean 
* FrequencyBodyAccelerometerMean()-Y: Value of the mean 
* FrequencyBodyAccelerometerMean()-Z: Value of the mean 
* FrequencyBodyAccelerometerSTD()-X: Valeu of the STD
* FrequencyBodyAccelerometerSTD()-Y: Valeu of the STD
* FrequencyBodyAccelerometerSTD()-Z: Valeu of the STD
* FrequencyBodyAccelerometerMeanFreq()-X: Value of the mean 
* FrequencyBodyAccelerometerMeanFreq()-Y: Value of the mean 
* FrequencyBodyAccelerometerMeanFreq()-Z: Value of the mean 
* FrequencyBodyAccelerometerJerkMean()-X: Value of the mean 
* FrequencyBodyAccelerometerJerkMean()-Y: Value of the mean 
* FrequencyBodyAccelerometerJerkMean()-Z: Value of the mean 
* FrequencyBodyAccelerometerJerkSTD()-X: Valeu of the STD
* FrequencyBodyAccelerometerJerkSTD()-Y: Valeu of the STD
* FrequencyBodyAccelerometerJerkSTD()-Z: Valeu of the STD
* FrequencyBodyAccelerometerJerkMeanFreq()-X: Value of the mean 
* FrequencyBodyAccelerometerJerkMeanFreq()-Y: Value of the mean 
* FrequencyBodyAccelerometerJerkMeanFreq()-Z: Value of the mean 
* FrequencyBodyGyroscopeMean()-X: Value of the mean 
* FrequencyBodyGyroscopeMean()-Y: Value of the mean 
* FrequencyBodyGyroscopeMean()-Z: Value of the mean 
* FrequencyBodyGyroscopeSTD()-X: Valeu of the STD
* FrequencyBodyGyroscopeSTD()-Y: Valeu of the STD
* FrequencyBodyGyroscopeSTD()-Z: Valeu of the STD
* FrequencyBodyGyroscopeMeanFreq()-X: Value of the mean 
* FrequencyBodyGyroscopeMeanFreq()-Y: Value of the mean 
* FrequencyBodyGyroscopeMeanFreq()-Z: Value of the mean 
* FrequencyBodyAccelerometerMagnitudeMean(): Value of the mean 
* FrequencyBodyAccelerometerMagnitudeSTD(): Valeu of the STD
* FrequencyBodyAccelerometerMagnitudeMeanFreq(): Value of the mean 
* FrequencyBodyAccelerometerJerkMagnitudeMean(): Value of the mean 
* FrequencyBodyAccelerometerJerkMagnitudeSTD(): Valeu of the STD
* FrequencyBodyAccelerometerJerkMagnitudeMeanFreq(): Value of the mean 
* FrequencyBodyGyroscopeMagnitudeMean(): Value of the mean 
* FrequencyBodyGyroscopeMagnitudeSTD(): Valeu of the STD
* FrequencyBodyGyroscopeMagnitudeMeanFreq(): Valeu of the mean
* FrequencyBodyGyroscopeJerkMagnitudeMean(): Value of the mean 
* FrequencyBodyGyroscopeJerkMagnitudeSTD(): Valeu of the STD
* FrequencyBodyGyroscopeJerkMagnitudeMeanFreq(): Value of the mean 
* Angle(TimeBodyAccelerometerMean,Gravity): Valeu of the angle
* Angle(TimeBodyAccelerometerJerkMean),GravityMean): Valeu of the angle 
* Angle(TimeBodyGyroscopeMean,GravityMean): Valeu of the angle
* Angle(TimeBodyGyroscopeJerkMean,GravityMean): Valeu of the angle
* Angle(X,GravityMean): Valeu of the angle
* Angle(Y,GravityMean): Valeu of the angle
* Angle(Z,GravityMean): Valeu of the angle