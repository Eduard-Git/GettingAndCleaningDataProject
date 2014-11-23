Code Book
=========

###Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Check the README.txt file to see how the information from this experiment will be used.

### Study Information
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Data Set
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The dataset includes the following files:
------------------------------------------

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

------------------------------------------------------------------------------

###Changes that have been made to the data set
- Data set has been cleaned to only take the mean and std values included in the data sets
- The activity label has been matched with the number included in the data sets
- A new data set was created with only the mean, std
- A tidy data set was created that averaged each variable



Data Dictionary
===============

*subject* - An id to identify the subject. Range [1,30].

*activity* - A descriptive name for the activity done while mesuring the variables in the same row.
    WALKING
    WALKING_UPSTAIRS
    WALKING_DOWNSTAIRS
    SITTING
    STANDING
    LAYING

## Analysis Variables (available in .txt files within dataset)
| Variable | Descritpion
| -------- |---------
| subject | An id to identify the subject. Range [1,30].
| activity | A descriptive name for the activity done while mesuring the variables in the same row.Posible values: [WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING]
| tBodyAccMeanX | Mean time for acceleration of body for X direction.
| tBodyAccMeanY | Mean time for acceleration of body for Y direction.
| tBodyAccMeanZ | Mean time for acceleration of body for Z direction.
| tBodyAccStdX | Standard deviation of time for acceleration of body for X direction.
| tBodyAccStdY | Standard deviation of time for acceleration of body for Y direction.
| tBodyAccStdZ| Standard deviation of time for acceleration of body for Z direction.
| tGravityAccMeanX | Mean time of acceleration of gravity for X direction.
| tGravityAccMeanY | Mean time of acceleration of gravity for Y direction.
| tGravityAccMeanZ | Mean time of acceleration of gravity for Z direction.
| tGravityAccStdX | Standard deviation of time of acceleration of gravity for X direction.
| tGravityAccStdY | Standard deviation of time of acceleration of gravity for Y direction.
| tGravityAccStdZ | Standard deviation of time of acceleration of gravity for Z direction.
| tBodyAccJerkMeanX | Mean time of body acceleration jerk for X direction.
| tBodyAccJerkMeanY | Mean time of body acceleration jerk for Y direction
| tBodyAccJerkMeanZ | Mean time of body acceleration jerk for Z direction
| tBodyAccJerkStdX | Standard deviation of time of body acceleration jerk for X direction.
| tBodyAccJerkStdY | Standard deviation of time of body acceleration jerk for Y direction.
| tBodyAccJerkStdZ | Standard deviation of time of body acceleration jerk for Z direction.
| tBodyGyroMeanX | Mean body gyroscope measurement for X direction.
| tBodyGyroMeanY | Mean body gyroscope measurement for Y direction.
| tBodyGyroMeanZ | Mean body gyroscope measurement for Z direction.
| tBodyGyroStdX | Standard deviation of body gyroscope measurement for X direction.
| tBodyGyroStdY | Standard deviation of body gyroscope measurement for Y direction.
| tBodyGyroStdZ | Standard deviation of body gyroscope measurement for Z direction.
| tBodyGyroJerkMeanX | Mean jerk signal of body for X direction.
| tBodyGyroJerkMeanY | Mean jerk signal of body for Y direction.
| tBodyGyroJerkMeanZ | Mean jerk signal of body for Z direction.
| tBodyGyroJerkStdX | Standard deviation of jerk signal of body for X direction.
| tBodyGyroJerkStdY | Standard deviation of jerk signal of body for Y direction.
| tBodyGyroJerkStdZ | Standard deviation of jerk signal of body for Z direction.
| tBodyAccMagMean | Mean magnitude of body Acc
| tBodyAccMagStd | Standard deviation of magnitude of body Acc
| tGravityAccMagMean | Mean gravity acceleration magnitude.
| tGravityAccMagStd | Standard deviation of gravity acceleration magnitude.
| tBodyAccJerkMagMean | Mean magnitude of body acceleration jerk.
| tBodyAccJerkMagStd | Standard deviation of magnitude of body acceleration jerk.
| tBodyGyroMagMean | Mean magnitude of body gyroscope measurement.
| tBodyGyroMagStd | Standard deviation of magnitude of body gyroscope measurement.
| tBodyGyroJerkMagMean | Mean magnitude of body body gyroscope jerk measurement.
| tBodyGyroJerkMagStd | Standard deviation of magnitude of body body gyroscope jerk measurement.
| fBodyAccMeanX | Mean frequency of body acceleration for X direction.
| fBodyAccMeanY | Mean frequency of body acceleration for Y direction.
| fBodyAccMeanZ | Mean frequency of body acceleration for Z direction.
| fBodyAccStdX | Standard deviation of frequency of body acceleration for X direction.
| fBodyAccStdY | Standard deviation of frequency of body acceleration for Y direction.
| fBodyAccStdZ | Standard deviation of frequency of body acceleration for Z direction.
| fBodyAccJerkMeanX | Mean frequency of body accerlation jerk for X direction.
| fBodyAccJerkMeanY | Mean frequency of body accerlation jerk for Y direction.
| fBodyAccJerkMeanZ | Mean frequency of body accerlation jerk for Z direction.
| fBodyAccJerkStdX | Standard deviation frequency of body accerlation jerk for X direction.
| fBodyAccJerkStdY | Standard deviation frequency of body accerlation jerk for Y direction.
| fBodyAccJerkStdZ | Standard deviation frequency of body accerlation jerk for Z direction.
| fBodyGyroMeanX | Mean frequency of body gyroscope measurement for X direction.
| fBodyGyroMeanY | Mean frequency of body gyroscope measurement for Y direction.
| fBodyGyroMeanZ | Mean frequency of body gyroscope measurement for Z direction.
| fBodyGyroStdX | Standard deviation frequency of body gyroscope measurement for X direction.
| fBodyGyroStdY | Standard deviation frequency of body gyroscope measurement for Y direction.
| fBodyGyroStdZ | Standard deviation frequency of body gyroscope measurement for Z direction.
| fBodyAccMagMean | Mean frequency of body acceleration magnitude.
| fBodyAccMagStd | Standard deviation of frequency of body acceleration magnitude.
| fBodyBodyAccJerkMagMean | Mean frequency of body acceleration jerk magnitude.
| fBodyBodyAccJerkMagStd | Standard deviation of frequency of body acceleration jerk magnitude.
| fBodyBodyGyroMagMean| Mean frequency of magnitude of body gyroscope measurement.
| fBodyBodyGyroMagStd | Standard deviation of frequency of magnitude of body gyroscope measurement.
| fBodyBodyGyroJerkMagMean | Mean frequency of magnitude of body gyroscope jerk measurement.
| fBodyBodyGyroJerkMagStd | Standard deviation of frequency of magnitude of body gyroscope jerk measurement.