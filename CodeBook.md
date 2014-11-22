
title: "CodeBook for Coursera Getting & Cleaning Course Project"
author: "M Jurado"
date: "November 22, 2014"

Note: The information for this code book was based on the contents of features_info.txt from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Modifications have been made to the original document for clarity purposes.

For more information see: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

The naming convention was changed such that:
- t% = Time
- f% = Frequency
- %Acc% = Acceleration

The resulting data points were converted to the following values:

 [1] "subjectId"                                        
 [2] "activityId"                                       
 [3] "activityName"                                     
 [4] "Time.Body.AccelerationMag.mean.."                 
 [5] "Time.Body.AccelerationMag.std.."                  
 [6] "Time.Gravity.AccelerationMag.mean.."              
 [7] "Time.Gravity.AccelerationMag.std.."               
 [8] "Time.Body.AccelerationJerkMag.mean.."             
 [9] "Time.Body.AccelerationJerkMag.std.."              
[10] "Time.Body.GyroMag.mean.."                         
[11] "Time.Body.GyroMag.std.."                          
[12] "Time.Body.GyroJerkMag.mean.."                     
[13] "Time.Body.GyroJerkMag.std.."                      
[14] "Frequency.Body.Acceleration.meanFreq...X"         
[15] "Frequency.Body.Acceleration.meanFreq...Y"         
[16] "Frequency.Body.Acceleration.meanFreq...Z"         
[17] "Frequency.Body.AccelerationJerk.meanFreq...X"     
[18] "Frequency.Body.AccelerationJerk.meanFreq...Y"     
[19] "Frequency.Body.AccelerationJerk.meanFreq...Z"     
[20] "Frequency.Body.Gyro.meanFreq...X"                 
[21] "Frequency.Body.Gyro.meanFreq...Y"                 
[22] "Frequency.Body.Gyro.meanFreq...Z"                 
[23] "Frequency.Body.AccelerationMag.mean.."            
[24] "Frequency.Body.AccelerationMag.std.."             
[25] "Frequency.Body.AccelerationMag.meanFreq.."        
[26] "Frequency.Body.BodyAccelerationJerkMag.mean.."    
[27] "Frequency.Body.BodyAccelerationJerkMag.std.."     
[28] "Frequency.Body.BodyAccelerationJerkMag.meanFreq.."
[29] "Frequency.Body.BodyGyroMag.mean.."                
[30] "Frequency.Body.BodyGyroMag.std.."                 
[31] "Frequency.Body.BodyGyroMag.meanFreq.."            
[32] "Frequency.Body.BodyGyroJerkMag.mean.."            
[33] "Frequency.Body.BodyGyroJerkMag.std.."             
[34] "Frequency.Body.BodyGyroJerkMag.meanFreq.." 