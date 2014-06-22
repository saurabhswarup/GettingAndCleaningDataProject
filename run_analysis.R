# run_analysis.R: completed as part of project for Getting and Cleaning Data
# packages needed to run the scripts
library(reshape2)
library(dplyr)

# read Test data set
subjectTest <- read.table("test/subject_test.txt")
xTest <- read.table("test/X_test.txt")
yTest <- read.table("test/Y_test.txt")

# read Train data set
subjectTrain <- read.table("train/subject_train.txt")
xTrain <- read.table("train/X_train.txt")
yTrain <- read.table("train/Y_train.txt")

# read features and activity lable files
features <- read.table("features.txt")
activities <- read.table("activity_labels.txt")

# combine the Test and Train data sets; extract only mean and std variables; cleanup and apply variable names
X <- rbind(xTest, xTrain)
featuresMeanStd <- features[grepl("mean", features$V2) | grepl("std", features$V2), ]
extractedX <- X[, featuresMeanStd$V1]
featuresMeanStd$V2 <- gsub("()","",featuresMeanStd$V2,fixed=TRUE)
featuresMeanStd$V2 <- gsub("-","",featuresMeanStd$V2,fixed=TRUE)
names(extractedX) <- featuresMeanStd$V2

subject <- rbind(subjectTest, subjectTrain)
names(subject) <- c("subjectID")

Y <- rbind(yTest, yTrain)
names(Y) <- c("activityID")

names(activities) <- c("activityID", "activityLabel")

enhancedY <- merge(Y, activities, by.x = "activityID", by.y = "activityID")

# create the final data set with descriptive column names
finalDataSet <- cbind(subject, enhancedY, extractedX)

# melting, grouping, and summarizing data to create the tidy data set  with the average of each variable for each activity and each subject
meltedDataSet <- melt(finalDataSet, id=c("subjectID", "activityID", "activityLabel"), measure.vars = featuresMeanStd$V2)
grouped <- group_by(meltedDataSet, subjectID, activityID, activityLabel, variable)
tidyData <- summarise(grouped, mean=mean(value))

# writing the tidy data set output
write.table(tidyData, "tidyData.txt")