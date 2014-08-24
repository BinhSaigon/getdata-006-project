Human Activity Recognition Using Smartphones Tidy Dataset (tidy-ss-[MYNAME]-[DateCreated].txt)
========================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Tidy dataset provide cleaning data from raw sources (as presented above) in which only the mean and standard deviation are recorded.

For each record (88 variables) it is provided:
-------------------------------

- Its activity label
- An identifier of the subject who carried out the experiment.
- A 86-feature mean and standard deviation value. 

Variable description (all are in lower case)
-------------------------------

1. Subjectid : An identifier of the subject who carried out the experiment.   
Values = TEST[digit number] or TRAIN[digit number] which indicate as Test identifiers or Train identidiers.
1. Activitity : name of subject action.   
Values = WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
1. 86 sensors data with mean and standard devation provided. For each variable that its name has **"mean"** word indicating to mean value, **"std"** word to standard deviation value. Those values are calculated from the set of recorded data through run_analysis.R code.

### Name and range value, in bracket (), of 86 sensor variables. All names are in lowercase.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

1. tbodyaccmeanx (-1, 1)
1. tbodyaccmeany (-1, 1)
1. tbodyaccmeanz (-1, 1)
1. tgravityaccmeanx (-1, 1)
1. tgravityaccmeany (-1, 1)
1. tgravityaccmeanz (-1, 1)
1. tbodyaccjerkmeanx (-1, 1)
1. tbodyaccjerkmeany (-1, 1)
1. tbodyaccjerkmeanz (-1, 1)
1. tbodygyromeanx (-1, 1)
1. tbodygyromeany (-1, 1)
1. tbodygyromeanz (-1, 1)
1. tbodygyrojerkmeanx (-1, 1)
1. tbodygyrojerkmeany (-1, 1)
1. tbodygyrojerkmeanz (-1, 1)
1. tbodyaccmagmean (-1, 1)
1. tgravityaccmagmean (-1, 1)
1. tbodyaccjerkmagmean (-1, 1)
1. tbodygyromagmean (-1, 1)
1. tbodygyrojerkmagmean (-1, 1)
1. fbodyaccmeanx (-1, 1)
1. fbodyaccmeany (-1, 1)
1. fbodyaccmeanz (-1, 1)
1. fbodyaccmeanfreqx (-1, 1)
1. fbodyaccmeanfreqy (-1, 1)
1. fbodyaccmeanfreqz (-1, 1)
1. fbodyaccjerkmeanx (-1, 1)
1. fbodyaccjerkmeany (-1, 1)
1. fbodyaccjerkmeanz (-1, 1)
1. fbodyaccjerkmeanfreqx (-1, 1)
1. fbodyaccjerkmeanfreqy (-1, 1)
1. fbodyaccjerkmeanfreqz (-1, 1)
1. fbodygyromeanx (-1, 1)
1. fbodygyromeany (-1, 1)
1. fbodygyromeanz (-1, 1)
1. fbodygyromeanfreqx (-1, 1)
1. fbodygyromeanfreqy (-1, 1)
1. fbodygyromeanfreqz (-1, 1)
1. fbodyaccmagmean (-1, 1)
1. fbodyaccmagmeanfreq (-1, 1)
1. fbodybodyaccjerkmagmean (-1, 1)
1. fbodybodyaccjerkmagmeanfreq (-1, 1)
1. fbodybodygyromagmean (-1, 1)
1. fbodybodygyromagmeanfreq (-1, 1)
1. fbodybodygyrojerkmagmean (-1, 1)
1. fbodybodygyrojerkmagmeanfreq (-1, 1)
1. angletbodyaccmeangravity (-1, 1)
1. angletbodyaccjerkmeangravitymean (-1, 1)
1. angletbodygyromeangravitymean (-1, 1)
1. angletbodygyrojerkmeangravitymean (-1, 1)
1. anglexgravitymean (-1, 1)
1. angleygravitymean (-1, 1)
1. anglezgravitymean (-1, 1)
1. tbodyaccstdx (-1, 1)
1. tbodyaccstdy (-1, 1)
1. tbodyaccstdz (-1, 1)
1. tgravityaccstdx (-1, 1)
1. tgravityaccstdy (-1, 1)
1. tgravityaccstdz (-1, 1)
1. tbodyaccjerkstdx (-1, 1)
1. tbodyaccjerkstdy (-1, 1)
1. tbodyaccjerkstdz (-1, 1)
1. tbodygyrostdx (-1, 1)
1. tbodygyrostdy (-1, 1)
1. tbodygyrostdz (-1, 1)
1. tbodygyrojerkstdx (-1, 1)
1. tbodygyrojerkstdy (-1, 1)
1. tbodygyrojerkstdz (-1, 1)
1. tbodyaccmagstd (-1, 1)
1. tgravityaccmagstd (-1, 1)
1. tbodyaccjerkmagstd (-1, 1)
1. tbodygyromagstd (-1, 1)
1. tbodygyrojerkmagstd (-1, 1)
1. fbodyaccstdx (-1, 1)
1. fbodyaccstdy (-1, 1)
1. fbodyaccstdz (-1, 1)
1. fbodyaccjerkstdx (-1, 1)
1. fbodyaccjerkstdy (-1, 1)
1. fbodyaccjerkstdz (-1, 1)
1. fbodygyrostdx (-1, 1)
1. fbodygyrostdy (-1, 1)
1. fbodygyrostdz (-1, 1)
1. fbodyaccmagstd (-1, 1)
1. fbodybodyaccjerkmagstd (-1, 1)
1. fbodybodygyromagstd (-1, 1)
1. fbodybodygyrojerkmagstd (-1, 1)

Notes: 
======
- Features are normalized and bounded within [-1,1].

For more information about this dataset contact: activityrecognition@smartlab.ws
