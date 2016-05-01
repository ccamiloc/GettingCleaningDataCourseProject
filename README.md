# GettingCleaningDataCourseProject

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.

This archive contains a Goal and the analisys done.

## Goal

Companies like FitBit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked are collected from the accelerometers from the Samsung Galaxy S smartphone.

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data is available at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The aim of the project is to clean and extract usable data from the above zip file. R script called run_analysis.R that does the following:

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Transformations

The script contains 5 steps:

### STEP 0

In this step all the file are read.

### STEP 1

Merge the training and test data into one data set.

### STEP 2

Select the variables with mean and STD measures.

### STEP 3

Define a descritive active name to the activities.

### STEP 4

Define names to the variables.

### STEP 5

Write the tidy data.


















