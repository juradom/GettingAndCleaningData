---
output: html_document
---

=================================================================

COURSERA: Getting And Cleaning Data Course Project

Version 1.0

=================================================================

M Jurado 
https://github.com/juradom/GettingAndCleaningData

Summary: 
This run_analysis.R program is based off of a data set called Human Activity Recognition Using Smartphones Dataset created by:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit? degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

*For more information about the data set please see:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

__________________________________________________________________
Initial Setup:

Download run_analysis.R from github:
https://github.com/juradom/GettingAndCleaningData/run_analysis.R

This program will download the Samsung onto your local directory

General processing:

1. Two R packages are loaded: data.table and plyr

2. The file: http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip is downloaded and unzipped to your local directory

3. The working directory is then reset to the new data folder extracted from the zip

4. The various data sets are extracted into data tables corresponding to the files: (for more information on these data, please see the CodeBook.md in https://github.com/juradom/GettingAndCleaningData/)
* activity_labels
* features
* X_train
* y_train
* subject_train
* X_test
* subject_test
* y_test 

5. Add a sort column to ensure that the data can be re-sorted to align with the X_test and X_train metrics correctly

6. Merge the y_test and y_train data with the activity labels based on the ids

7. Re-order y_test and y_train

8. Add readable column names to the "Y" datasets

9. Add readable column names to the "X" datasets by looping through the features dataset and applying those values to the "X"" dataset columns

10. Merge the training and the test sets to create one data set.

11. Remove any columns that do not contain "mean" or "std" in their column names.  Note: Derived columns from "mean" or "std" columns are not included. Also, the subjectId, activityId,and activityName columns are perserved for grouping and clarity purposes

12. At this point you have the "initial" dataset required (filterMergedYX)

13. Create "second independent set.  Group the single dataset (group.subject.activity) and apply an average of each variable for each activity and each subject

14. Write out the dataset to a text file called: AvgHumanActivityData.txt. 

M Jurado - November 2014
