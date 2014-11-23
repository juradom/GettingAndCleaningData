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
 [4] "Average.Of.Time.Body.Acceleration.Mean.X"                        
 [5] "Average.Of.Time.Body.Acceleration.Mean.Y"                        
 [6] "Average.Of.Time.Body.Acceleration.Mean.Z"                        
 [7] "Average.Of.Time.Body.Acceleration.Std.X"                         
 [8] "Average.Of.Time.Body.Acceleration.Std.Y"                         
 [9] "Average.Of.Time.Body.Acceleration.Std.Z"                         
[10] "Average.Of.Time.Gravity.Acceleration.Mean.X"                     
[11] "Average.Of.Time.Gravity.Acceleration.Mean.Y"                     
[12] "Average.Of.Time.Gravity.Acceleration.Mean.Z"                     
[13] "Average.Of.Time.Gravity.Acceleration.Std.X"                      
[14] "Average.Of.Time.Gravity.Acceleration.Std.Y"                      
[15] "Average.Of.Time.Gravity.Acceleration.Std.Z"                      
[16] "Average.Of.Time.Body.AccelerationJerk.Mean.X"                    
[17] "Average.Of.Time.Body.AccelerationJerk.Mean.Y"                    
[18] "Average.Of.Time.Body.AccelerationJerk.Mean.Z"                    
[19] "Average.Of.Time.Body.AccelerationJerk.Std.X"                     
[20] "Average.Of.Time.Body.AccelerationJerk.Std.Y"                     
[21] "Average.Of.Time.Body.AccelerationJerk.Std.Z"                     
[22] "Average.Of.Time.Body.Gyro.Mean.X"                                
[23] "Average.Of.Time.Body.Gyro.Mean.Y"                                
[24] "Average.Of.Time.Body.Gyro.Mean.Z"                                
[25] "Average.Of.Time.Body.Gyro.Std.X"                                 
[26] "Average.Of.Time.Body.Gyro.Std.Y"                                 
[27] "Average.Of.Time.Body.Gyro.Std.Z"                                 
[28] "Average.Of.Time.Body.GyroJerk.Mean.X"                            
[29] "Average.Of.Time.Body.GyroJerk.Mean.Y"                            
[30] "Average.Of.Time.Body.GyroJerk.Mean.Z"                            
[31] "Average.Of.Time.Body.GyroJerk.Std.X"                             
[32] "Average.Of.Time.Body.GyroJerk.Std.Y"                             
[33] "Average.Of.Time.Body.GyroJerk.Std.Z"                             
[34] "Average.Of.Time.Body.AccelerationMag.Mean"                       
[35] "Average.Of.Time.Body.AccelerationMag.Std"                        
[36] "Average.Of.Time.Gravity.AccelerationMag.Mean"                    
[37] "Average.Of.Time.Gravity.AccelerationMag.Std"                     
[38] "Average.Of.Time.Body.AccelerationJerkMag.Mean"                   
[39] "Average.Of.Time.Body.AccelerationJerkMag.Std"                    
[40] "Average.Of.Time.Body.GyroMag.Mean"                               
[41] "Average.Of.Time.Body.GyroMag.Std"                                
[42] "Average.Of.Time.Body.GyroJerkMag.Mean"                           
[43] "Average.Of.Time.Body.GyroJerkMag.Std"                            
[44] "Average.Of.Frequency.Body.Acceleration.Mean.X"                   
[45] "Average.Of.Frequency.Body.Acceleration.Mean.Y"                   
[46] "Average.Of.Frequency.Body.Acceleration.Mean.Z"                   
[47] "Average.Of.Frequency.Body.Acceleration.Std.X"                    
[48] "Average.Of.Frequency.Body.Acceleration.Std.Y"                    
[49] "Average.Of.Frequency.Body.Acceleration.Std.Z"                    
[50] "Average.Of.Frequency.Body.Acceleration.Mean.Frequency.X"         
[51] "Average.Of.Frequency.Body.Acceleration.Mean.Frequency.Y"         
[52] "Average.Of.Frequency.Body.Acceleration.Mean.Frequency.Z"         
[53] "Average.Of.Frequency.Body.AccelerationJerk.Mean.X"               
[54] "Average.Of.Frequency.Body.AccelerationJerk.Mean.Y"               
[55] "Average.Of.Frequency.Body.AccelerationJerk.Mean.Z"               
[56] "Average.Of.Frequency.Body.AccelerationJerk.Std.X"                
[57] "Average.Of.Frequency.Body.AccelerationJerk.Std.Y"                
[58] "Average.Of.Frequency.Body.AccelerationJerk.Std.Z"                
[59] "Average.Of.Frequency.Body.AccelerationJerk.Mean.Frequency.X"     
[60] "Average.Of.Frequency.Body.AccelerationJerk.Mean.Frequency.Y"     
[61] "Average.Of.Frequency.Body.AccelerationJerk.Mean.Frequency.Z"     
[62] "Average.Of.Frequency.Body.Gyro.Mean.X"                           
[63] "Average.Of.Frequency.Body.Gyro.Mean.Y"                           
[64] "Average.Of.Frequency.Body.Gyro.Mean.Z"                           
[65] "Average.Of.Frequency.Body.Gyro.Std.X"                            
[66] "Average.Of.Frequency.Body.Gyro.Std.Y"                            
[67] "Average.Of.Frequency.Body.Gyro.Std.Z"                            
[68] "Average.Of.Frequency.Body.Gyro.Mean.Frequency.X"                 
[69] "Average.Of.Frequency.Body.Gyro.Mean.Frequency.Y"                 
[70] "Average.Of.Frequency.Body.Gyro.Mean.Frequency.Z"                 
[71] "Average.Of.Frequency.Body.AccelerationMag.Mean"                  
[72] "Average.Of.Frequency.Body.AccelerationMag.Std"                   
[73] "Average.Of.Frequency.Body.AccelerationMag.Mean.Frequency"        
[74] "Average.Of.Frequency.Body.BodyAccelerationJerkMag.Mean"          
[75] "Average.Of.Frequency.Body.BodyAccelerationJerkMag.Std"           
[76] "Average.Of.Frequency.Body.BodyAccelerationJerkMag.Mean.Frequency"
[77] "Average.Of.Frequency.Body.BodyGyroMag.Mean"                      
[78] "Average.Of.Frequency.Body.BodyGyroMag.Std"                       
[79] "Average.Of.Frequency.Body.BodyGyroMag.Mean.Frequency"            
[80] "Average.Of.Frequency.Body.BodyGyroJerkMag.Mean"                  
[81] "Average.Of.Frequency.Body.BodyGyroJerkMag.Std"                   
[82] "Average.Of.Frequency.Body.BodyGyroJerkMag.Mean.Frequency"        
[83] "Average.Of.Angle.Time.Body.AccelerationMean.gravity."            
[84] "Average.Of.Angle.Time.Body.AccelerationJerk.Mean.gravityMean."   
[85] "Average.Of.Angle.Time.Body.GyroMean.gravity.Mean"                
[86] "Average.Of.Angle.Time.Body.GyroJerkMean.gravity.Mean"            
[87] "Average.Of.Angle.X.gravity.Mean"                                 
[88] "Average.Of.Angle.Y.gravity.Mean"                                 
[89] "Average.Of.Angle.Z.gravity.Mean"    