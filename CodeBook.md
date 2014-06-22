## Data
The original source of the data for this project is: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
On this raw data set, run_analysis.R performs the following actions:
### Read Test data set

Read both test and train data sets along with features and activity label files

### Combines, extracts, and cleanup

The script combines the Test and Train data sets; extract only mean and std variables; cleanup and apply variable names.

The script first combines the the test and train data sets for and extracts only the mean and std variables. It then cleans up the variable names by removing "()" and "-" and then assigns the column names.

The script then combines the subject files for test and train data sets followed by the activity files.

### Create the final data set

The script then creates the final data set with descriptive column names

### Create tity data set
The script then creates a tidy data set with averages for each subject, actity and variable. This tidy data set is in the melted down format using the reshape2 package.

The means of variables calculated for each subject, activity are:
* tBodyAccmeanX
*	tBodyAccmeanY
*	tBodyAccmeanZ
*	tBodyAccstdX
*	tBodyAccstdY
*	tBodyAccstdZ
*	tGravityAccmeanX
*	tGravityAccmeanY
*	tGravityAccmeanZ
*	tGravityAccstdX
*	tGravityAccstdY
*	tGravityAccstdZ
*	tBodyAccJerkmeanX
*	tBodyAccJerkmeanY
*	tBodyAccJerkmeanZ
*	tBodyAccJerkstdX
*	tBodyAccJerkstdY
*	tBodyAccJerkstdZ
*	tBodyGyromeanX
*	tBodyGyromeanY
*	tBodyGyromeanZ
*	tBodyGyrostdX
*	tBodyGyrostdY
*	tBodyGyrostdZ
*	tBodyGyroJerkmeanX
*	tBodyGyroJerkmeanY
*	tBodyGyroJerkmeanZ
*	tBodyGyroJerkstdX
*	tBodyGyroJerkstdY
*	tBodyGyroJerkstdZ
*	tBodyAccMagmean
*	tBodyAccMagstd
*	tGravityAccMagmean
*	tGravityAccMagstd
*	tBodyAccJerkMagmean
*	tBodyAccJerkMagstd
*	tBodyGyroMagmean
*	tBodyGyroMagstd
*	tBodyGyroJerkMagmean
*	tBodyGyroJerkMagstd
*	fBodyAccmeanX
*	fBodyAccmeanY
*	fBodyAccmeanZ
*	fBodyAccstdX
*	fBodyAccstdY
*	fBodyAccstdZ
*	fBodyAccmeanFreqX
*	fBodyAccmeanFreqY
*	fBodyAccmeanFreqZ
*	fBodyAccJerkmeanX
*	fBodyAccJerkmeanY
*	fBodyAccJerkmeanZ
*	fBodyAccJerkstdX
*	fBodyAccJerkstdY
*	fBodyAccJerkstdZ
*	fBodyAccJerkmeanFreqX
*	fBodyAccJerkmeanFreqY
*	fBodyAccJerkmeanFreqZ
*	fBodyGyromeanX
*	fBodyGyromeanY
*	fBodyGyromeanZ
*	fBodyGyrostdX
*	fBodyGyrostdY
*	fBodyGyrostdZ
*	fBodyGyromeanFreqX
*	fBodyGyromeanFreqY
*	fBodyGyromeanFreqZ
*	fBodyAccMagmean
*	fBodyAccMagstd
*	fBodyAccMagmeanFreq
*	fBodyBodyAccJerkMagmean
*	fBodyBodyAccJerkMagstd
*	fBodyBodyAccJerkMagmeanFreq
*	fBodyBodyGyroMagmean
*	fBodyBodyGyroMagstd
*	fBodyBodyGyroMagmeanFreq
*	fBodyBodyGyroJerkMagmean
*	fBodyBodyGyroJerkMagstd
*	fBodyBodyGyroJerkMagmeanFreq






