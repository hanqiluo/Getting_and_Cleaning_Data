# Getting_and_Cleaning_Data

## ID
**subjectID**: Participants' ID 
- Range: 1 - 30

**activityID**: different types of activity

 1. WALKING
 2. WALKING_UPSTAIRS
 3. WALKING_DOWNSTAIRS
 4. SITTING
 5. STANDING
 6. LAYING


## Other Variables in "tidy_data.txt"
Variable Name | Units
--- | ---
tBodyAcc-mean()-X | standard gravity units |
tBodyAcc-mean()-Y | standard gravity units
tBodyAcc-mean()-Z | standard gravity units
tBodyAcc-std()-X | standard gravity units
tBodyAcc-std()-Y | standard gravity units
tBodyAcc-std()-Z | standard gravity units
tGravityAcc-mean()-X | standard gravity units
tGravityAcc-mean()-Y | standard gravity units
tGravityAcc-mean()-Z | standard gravity units
tGravityAcc-std()-X | standard gravity units
tGravityAcc-std()-Y | standard gravity units
tGravityAcc-std()-Z | standard gravity units
tBodyAccJerk-mean()-X | standard gravity units
tBodyAccJerk-mean()-Y | standard gravity units
tBodyAccJerk-mean()-Z | standard gravity units
tBodyAccJerk-std()-X | standard gravity units
tBodyAccJerk-std()-Y | standard gravity units
tBodyAccJerk-std()-Z | standard gravity units
tBodyGyro-mean()-X | radians per second
tBodyGyro-mean()-Y | radians per second
tBodyGyro-mean()-Z | radians per second
tBodyGyro-std()-X | radians per second
tBodyGyro-std()-Y | radians per second
tBodyGyro-std()-Z | radians per second
tBodyGyroJerk-mean()-X | radians per second
tBodyGyroJerk-mean()-Y | radians per second
tBodyGyroJerk-mean()-Z | radians per second
tBodyGyroJerk-std()-X | radians per second
tBodyGyroJerk-std()-Y | radians per second
tBodyGyroJerk-std()-Z | radians per second
tBodyAccMag-mean() | standard gravity units
tBodyAccMag-std() | standard gravity units
tGravityAccMag-mean() | standard gravity units
tGravityAccMag-std() | standard gravity units
tBodyAccJerkMag-mean() | standard gravity units
tBodyAccJerkMag-std() | standard gravity units
tBodyGyroMag-mean() | radians per second
tBodyGyroMag-std() | radians per second
tBodyGyroJerkMag-mean() | radians per second
tBodyGyroJerkMag-std() | radians per second
fBodyAcc-mean()-X | standard gravity units
fBodyAcc-mean()-Y | standard gravity units
fBodyAcc-mean()-Z | standard gravity units
fBodyAcc-std()-X | standard gravity units
fBodyAcc-std()-Y | standard gravity units
fBodyAcc-std()-Z | standard gravity units
fBodyAccJerk-mean()-X | standard gravity units
fBodyAccJerk-mean()-Y | standard gravity units
fBodyAccJerk-mean()-Z | standard gravity units
fBodyAccJerk-std()-Y | standard gravity units
fBodyAccJerk-std()-Z | standard gravity units
fBodyGyro-mean()-X | radians per second
fBodyGyro-mean()-Y | radians per second
fBodyGyro-mean()-Z | radians per second
fBodyGyro-std()-X | radians per second
fBodyGyro-std()-Y | radians per second
fBodyGyro-std()-Z | radians per second
fBodyAccMag-mean() | standard gravity units
fBodyAccMag-std() | standard gravity units
fBodyBodyAccJerkMag-mean() | standard gravity units
fBodyBodyAccJerkMag-std() | standard gravity units
fBodyBodyGyroMag-mean() | radians per second
fBodyBodyGyroMag-std() | radians per second
fBodyBodyGyroJerkMag-mean() | radians per second
fBodyBodyGyroJerkMag-std() | radians per second

## Other Variables in "agg_data.txt"
Variable Name | Units | measure
--- | --- | ---
tBodyAcc-mean()-X | standard gravity units | mean
tBodyAcc-mean()-Y | standard gravity units| mean
tBodyAcc-mean()-Z | standard gravity units| mean
tBodyAcc-std()-X | standard gravity units| mean
tBodyAcc-std()-Y | standard gravity units| mean
tBodyAcc-std()-Z | standard gravity units| mean
tGravityAcc-mean()-X | standard gravity units| mean
tGravityAcc-mean()-Y | standard gravity units| mean
tGravityAcc-mean()-Z | standard gravity units| mean
tGravityAcc-std()-X | standard gravity units| mean
tGravityAcc-std()-Y | standard gravity units| mean
tGravityAcc-std()-Z | standard gravity units| mean
tBodyAccJerk-mean()-X | standard gravity units| mean
tBodyAccJerk-mean()-Y | standard gravity units| mean
tBodyAccJerk-mean()-Z | standard gravity units| mean
tBodyAccJerk-std()-X | standard gravity units| mean
tBodyAccJerk-std()-Y | standard gravity units| mean
tBodyAccJerk-std()-Z | standard gravity units| mean
tBodyGyro-mean()-X | radians per second| mean
tBodyGyro-mean()-Y | radians per second| mean
tBodyGyro-mean()-Z | radians per second| mean
tBodyGyro-std()-X | radians per second| mean
tBodyGyro-std()-Y | radians per second| mean
tBodyGyro-std()-Z | radians per second| mean
tBodyGyroJerk-mean()-X | radians per second| mean
tBodyGyroJerk-mean()-Y | radians per second| mean
tBodyGyroJerk-mean()-Z | radians per second| mean
tBodyGyroJerk-std()-X | radians per second| mean
tBodyGyroJerk-std()-Y | radians per second| mean
tBodyGyroJerk-std()-Z | radians per second| mean
tBodyAccMag-mean() | standard gravity units| mean
tBodyAccMag-std() | standard gravity units| mean
tGravityAccMag-mean() | standard gravity units| mean
tGravityAccMag-std() | standard gravity units| mean
tBodyAccJerkMag-mean() | standard gravity units| mean
tBodyAccJerkMag-std() | standard gravity units| mean
tBodyGyroMag-mean() | radians per second| mean
tBodyGyroMag-std() | radians per second| mean
tBodyGyroJerkMag-mean() | radians per second| mean
tBodyGyroJerkMag-std() | radians per second| mean
fBodyAcc-mean()-X | standard gravity units| mean
fBodyAcc-mean()-Y | standard gravity units| mean
fBodyAcc-mean()-Z | standard gravity units| mean
fBodyAcc-std()-X | standard gravity units| mean
fBodyAcc-std()-Y | standard gravity units| mean
fBodyAcc-std()-Z | standard gravity units| mean
fBodyAccJerk-mean()-X | standard gravity units| mean
fBodyAccJerk-mean()-Y | standard gravity units| mean
fBodyAccJerk-mean()-Z | standard gravity units| mean
fBodyAccJerk-std()-Y | standard gravity units| mean
fBodyAccJerk-std()-Z | standard gravity units| mean
fBodyGyro-mean()-X | radians per second| mean
fBodyGyro-mean()-Y | radians per second| mean
fBodyGyro-mean()-Z | radians per second| mean
fBodyGyro-std()-X | radians per second| mean
fBodyGyro-std()-Y | radians per second| mean
fBodyGyro-std()-Z | radians per second| mean
fBodyAccMag-mean() | standard gravity units| mean
fBodyAccMag-std() | standard gravity units| mean
fBodyBodyAccJerkMag-mean() | standard gravity units| mean
fBodyBodyAccJerkMag-std() | standard gravity units| mean
fBodyBodyGyroMag-mean() | radians per second| mean
fBodyBodyGyroMag-std() | radians per second| mean
fBodyBodyGyroJerkMag-mean() | radians per second| mean
fBodyBodyGyroJerkMag-std() | radians per second| mean