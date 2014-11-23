=================================================================

# COURSERA: Getting And Cleaning Data Course Project
CodeBook.md
Version 1.0

=================================================================

Note: The information for this code book was based on the contents of features_info.txt from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Modifications have been made to the original document for clarity purposes.

For more information see: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

### Feature Selection

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
(Note: Columns 4:89 represent averages of the original metric)

 [1] "subjectId"                                            
 [2] "activityId"                                           
 [3] "activityName"                                         
 [4] "Time.Body.Acceleration.Mean.X"                        
 [5] "Time.Body.Acceleration.Mean.Y"                        
 [6] "Time.Body.Acceleration.Mean.Z"                        
 [7] "Time.Body.Acceleration.Std.X"                         
 [8] "Time.Body.Acceleration.Std.Y"                         
 [9] "Time.Body.Acceleration.Std.Z"                         
[10] "Time.Gravity.Acceleration.Mean.X"                     
[11] "Time.Gravity.Acceleration.Mean.Y"                     
[12] "Time.Gravity.Acceleration.Mean.Z"                     
[13] "Time.Gravity.Acceleration.Std.X"                      
[14] "Time.Gravity.Acceleration.Std.Y"                      
[15] "Time.Gravity.Acceleration.Std.Z"                      
[16] "Time.Body.AccelerationJerk.Mean.X"                    
[17] "Time.Body.AccelerationJerk.Mean.Y"                    
[18] "Time.Body.AccelerationJerk.Mean.Z"                    
[19] "Time.Body.AccelerationJerk.Std.X"                     
[20] "Time.Body.AccelerationJerk.Std.Y"                     
[21] "Time.Body.AccelerationJerk.Std.Z"                     
[22] "Time.Body.Gyro.Mean.X"                                
[23] "Time.Body.Gyro.Mean.Y"                                
[24] "Time.Body.Gyro.Mean.Z"                                
[25] "Time.Body.Gyro.Std.X"                                 
[26] "Time.Body.Gyro.Std.Y"                                 
[27] "Time.Body.Gyro.Std.Z"                                 
[28] "Time.Body.GyroJerk.Mean.X"                            
[29] "Time.Body.GyroJerk.Mean.Y"                            
[30] "Time.Body.GyroJerk.Mean.Z"                            
[31] "Time.Body.GyroJerk.Std.X"                             
[32] "Time.Body.GyroJerk.Std.Y"                             
[33] "Time.Body.GyroJerk.Std.Z"                             
[34] "Time.Body.AccelerationMag.Mean"                       
[35] "Time.Body.AccelerationMag.Std"                        
[36] "Time.Gravity.AccelerationMag.Mean"                    
[37] "Time.Gravity.AccelerationMag.Std"                     
[38] "Time.Body.AccelerationJerkMag.Mean"                   
[39] "Time.Body.AccelerationJerkMag.Std"                    
[40] "Time.Body.GyroMag.Mean"                               
[41] "Time.Body.GyroMag.Std"                                
[42] "Time.Body.GyroJerkMag.Mean"                           
[43] "Time.Body.GyroJerkMag.Std"                            
[44] "Frequency.Body.Acceleration.Mean.X"                   
[45] "Frequency.Body.Acceleration.Mean.Y"                   
[46] "Frequency.Body.Acceleration.Mean.Z"                   
[47] "Frequency.Body.Acceleration.Std.X"                    
[48] "Frequency.Body.Acceleration.Std.Y"                    
[49] "Frequency.Body.Acceleration.Std.Z"                    
[50] "Frequency.Body.Acceleration.Mean.Frequency.X"         
[51] "Frequency.Body.Acceleration.Mean.Frequency.Y"         
[52] "Frequency.Body.Acceleration.Mean.Frequency.Z"         
[53] "Frequency.Body.AccelerationJerk.Mean.X"               
[54] "Frequency.Body.AccelerationJerk.Mean.Y"               
[55] "Frequency.Body.AccelerationJerk.Mean.Z"               
[56] "Frequency.Body.AccelerationJerk.Std.X"                
[57] "Frequency.Body.AccelerationJerk.Std.Y"                
[58] "Frequency.Body.AccelerationJerk.Std.Z"                
[59] "Frequency.Body.AccelerationJerk.Mean.Frequency.X"     
[60] "Frequency.Body.AccelerationJerk.Mean.Frequency.Y"     
[61] "Frequency.Body.AccelerationJerk.Mean.Frequency.Z"     
[62] "Frequency.Body.Gyro.Mean.X"                           
[63] "Frequency.Body.Gyro.Mean.Y"                           
[64] "Frequency.Body.Gyro.Mean.Z"                           
[65] "Frequency.Body.Gyro.Std.X"                            
[66] "Frequency.Body.Gyro.Std.Y"                            
[67] "Frequency.Body.Gyro.Std.Z"                            
[68] "Frequency.Body.Gyro.Mean.Frequency.X"                 
[69] "Frequency.Body.Gyro.Mean.Frequency.Y"                 
[70] "Frequency.Body.Gyro.Mean.Frequency.Z"                 
[71] "Frequency.Body.AccelerationMag.Mean"                  
[72] "Frequency.Body.AccelerationMag.Std"                   
[73] "Frequency.Body.AccelerationMag.Mean.Frequency"        
[74] "Frequency.Body.BodyAccelerationJerkMag.Mean"          
[75] "Frequency.Body.BodyAccelerationJerkMag.Std"           
[76] "Frequency.Body.BodyAccelerationJerkMag.Mean.Frequency"
[77] "Frequency.Body.BodyGyroMag.Mean"                      
[78] "Frequency.Body.BodyGyroMag.Std"                       
[79] "Frequency.Body.BodyGyroMag.Mean.Frequency"            
[80] "Frequency.Body.BodyGyroJerkMag.Mean"                  
[81] "Frequency.Body.BodyGyroJerkMag.Std"                   
[82] "Frequency.Body.BodyGyroJerkMag.Mean.Frequency"        
[83] "angle.Time.Body.AccelerationMean.gravity."            
[84] "angle.Time.Body.AccelerationJerkMean..gravityMean."   
[85] "angle.Time.Body.GyroMean.gravityMean."                
[86] "angle.Time.Body.GyroJerkMean.gravityMean."            
[87] "angle.X.gravityMean."                                 
[88] "angle.Y.gravityMean."                                 
[89] "angle.Z.gravityMean."     