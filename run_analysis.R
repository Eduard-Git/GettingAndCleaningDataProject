## Remember to set working directory properly. Must be at the same path that
## UCI HAR Dataset folder is located.

## Load training data sets
train <- read.table("UCI\ HAR\ Dataset/train/X_train.txt")
train_activity <- read.table("UCI\ HAR\ Dataset/train/y_train.txt")
train_subject <- read.table("UCI\ HAR\ Dataset/train/subject_train.txt")

## Load test data sets
test <- read.table("UCI\ HAR\ Dataset/test/X_test.txt")
test_activity <- read.table("UCI\ HAR\ Dataset/test/y_test.txt")
test_subject <- read.table("UCI\ HAR\ Dataset/test/subject_test.txt")

## Compatibility checks
dim(train)[1] == dim(train_activity)[1]
dim(train_activity)[1] == dim(train_subject)[1]
dim(test)[1] == dim(test_activity)[1]
dim(test_activity)[1] == dim(test_subject)[1]
dim(train)[2] == dim(test)[2]

## 1. Merges the training and the test sets to create one data set.

train$activity <- train_activity[,1]
train$subject <- train_subject[,1]

test$activity <- test_activity[,1]
test$subject <- test_subject[,1]

# Check merge can be done as expected
setequal(names(train), names(test))

ds <- merge(test, train, all.x = TRUE, all.y = TRUE)

## Check merge has been done as expected
dim(ds)[1] == dim(train)[1] + dim(test)[1]
dim(ds)[2] == dim(train)[2]

## 2. Extracts only the measurements on the mean and standard deviation for each
## measurement.
## Take the features that includes mean() or std() function results.
## meanFreq and gravityMean are not considered the same as mean. Therefore they
## are not going to be included.

## Add features names to dataset columns
features_dict <- read.table("UCI\ HAR\ Dataset/features.txt",
                            stringsAsFactors = FALSE)

## Extract the required features
features_to_keep <- grep("mean\\(\\)|std\\(\\)", features_dict[,2])

## Because they are ordered starting from 1 and in increments of 1,
## features_to_keep already has the needed indexes.

## Just need to add activity and subject columns indexes
columns_to_keep <- c(features_to_keep, dim(ds)[2] - 1, dim(ds)[2])

ds <- ds[,columns_to_keep]

## 3. Uses descriptive activity names to name the activities in the data set
activity_dict <- read.table("UCI\ HAR\ Dataset/activity_labels.txt",
                            stringsAsFactors = FALSE)
ds$activity <- activity_dict[ds$activity, 2]

## 4. Appropriately labels the data set with descriptive variable names.
ds_names <- c(features_dict[features_to_keep,2], c("activity", "subject"))
ds_names <- gsub("\\(\\)", "", ds_names)
ds_names <- gsub("mean", "Mean", ds_names)
ds_names <- gsub("std", "Std", ds_names)
ds_names <- gsub("-", "", ds_names)
names(ds) <- make.names(ds_names)

## 5. From the data set in step 4, creates a second, independent tidy data set
## with the average of each variable for each activity and each subject.
library(reshape2)
ds_melt <- melt(ds, id.vars=c("subject" ,"activity"))
tidy <- dcast(ds_melt, subject + activity ~ variable, mean)

## Output wrote in to a file. Print is not useful at all.
write.table(tidy, file="tidy_dataset.txt", row.names = FALSE)
