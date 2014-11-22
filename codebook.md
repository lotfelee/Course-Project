---
Title: "codebook.md."
Author: "LOTFI ALSOUKI"
Date: "Saturday, November 22, 2014"
Output: html_document
---
#ACTIVITY 

##Activity being monitored

##1 WALKING
##2 WALKING_UPSTAIRS
##3 WALKING_DOWNSTAIRS
##4 SITTING
##5 STANDING
##6 LAYING

----------------------------------------------------

#SUBJECTID 

##SubjectID is a unique id number for the person who has been monitored  ,total 30 persons.

###1
###2
###3
###4
###5
###6
###7
###8
###9
###10
###11
###12
###13
###14
###15
###16
###17
###18
###19
###20
###21
###22
###23
###24
###25
###26
###27
###28
###29
###30
------------------------------------------------------------------

#variable:

##signals collected for every subject for each activity during differnets spans of time ,as in Featrue selection section below then mean and stadnard diviation calcluated 

Feature Selection 
=================

###The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

###Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk 

### signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals 

### were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, 

### tBodyGyroJerkMag). 

###Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, 

### fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to 

### indicate frequency domain signals). 

###These signals were used to estimate variables of the feature vector for each pattern:  

###'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

###tBodyAcc-XYZ
###tGravityAcc-XYZ
###tBodyAccJerk-XYZ
###tBodyGyro-XYZ
###tBodyGyroJerk-XYZ
###tBodyAccMag
###tGravityAccMag
###tBodyAccJerkMag
###tBodyGyroMag
###tBodyGyroJerkMag
###fBodyAcc-XYZ
###fBodyAccJerk-XYZ
###fBodyGyro-XYZ
###fBodyAccMag
###fBodyAccJerkMag
###fBodyGyroMag
###fBodyGyroJerkMag

##The set of variables that were estimated from these signals are: 

###mean(): Mean value
###std(): Standard deviation
###meanFreq(): Weighted average of the frequency components to obtain a mean frequency

##VARIBALE LEVELS 
                                 
### fBodyAcc-mean()-X
### fBodyAcc-mean()-Y
### fBodyAcc-mean()-Z
### fBodyAcc-meanFreq()-X
### fBodyAcc-meanFreq()-Y
### fBodyAcc-meanFreq()-Z
### fBodyAcc-std()-X
### fBodyAcc-std()-Y
### fBodyAcc-std()-Z
### fBodyAccJerk-mean()-X
### fBodyAccJerk-mean()-Y
### fBodyAccJerk-mean()-Z
### fBodyAccJerk-meanFreq()-X
### fBodyAccJerk-meanFreq()-Y
### fBodyAccJerk-meanFreq()-Z
### fBodyAccJerk-std()-X
### fBodyAccJerk-std()-Y
### fBodyAccJerk-std()-Z
### fBodyAccMag-mean()
### fBodyAccMag-meanFreq()
### fBodyAccMag-std()
### fBodyBodyAccJerkMag-mean()
### fBodyBodyAccJerkMag-meanFreq()
### fBodyBodyAccJerkMag-std()
### fBodyBodyGyroJerkMag-mean()
### fBodyBodyGyroJerkMag-meanFreq()
### fBodyBodyGyroJerkMag-std()
### fBodyBodyGyroMag-mean()
### fBodyBodyGyroMag-meanFreq()
### fBodyBodyGyroMag-std()
### fBodyGyro-mean()-X
### fBodyGyro-mean()-Y
### fBodyGyro-mean()-Z
### fBodyGyro-meanFreq()-X
### fBodyGyro-meanFreq()-Y
### fBodyGyro-meanFreq()-Z
### fBodyGyro-std()-X
### fBodyGyro-std()-Y
### fBodyGyro-std()-Z
### tBodyAcc-mean()-X
### tBodyAcc-mean()-Y
### tBodyAcc-mean()-Z
### tBodyAcc-std()-X
### tBodyAcc-std()-Y
### tBodyAcc-std()-Z
### tBodyAccJerk-mean()-X
### tBodyAccJerk-mean()-Y
### tBodyAccJerk-mean()-Z
### tBodyAccJerk-std()-X
### tBodyAccJerk-std()-Y
### tBodyAccJerk-std()-Z
### tBodyAccJerkMag-mean()
### tBodyAccJerkMag-std()
### tBodyAccMag-mean()
### tBodyAccMag-std()
### tBodyGyro-mean()-X
### tBodyGyro-mean()-Y
### tBodyGyro-mean()-Z
### tBodyGyro-std()-X
### tBodyGyro-std()-Y
### tBodyGyro-std()-Z
### tBodyGyroJerk-mean()-X
### tBodyGyroJerk-mean()-Y
### tBodyGyroJerk-mean()-Z
### tBodyGyroJerk-std()-X
### tBodyGyroJerk-std()-Y
### tBodyGyroJerk-std()-Z
### tBodyGyroJerkMag-mean()
### tBodyGyroJerkMag-std()
### tBodyGyroMag-mean()
### tBodyGyroMag-std()
### tGravityAcc-mean()-X
### tGravityAcc-mean()-Y
### tGravityAcc-mean()-Z
### tGravityAcc-std()-X
### tGravityAcc-std()-Y
### tGravityAcc-std()-Z
### tGravityAccMag-mean()
### tGravityAccMag-std()

--------------------------------------------------------------------------------
#MEAN

##IS THE average of each variable for each activity and each subject.

##14220 diffiernt values for diffiernt variable for different subjcet

