library(data.table)
library(plyr)

## download file and unzip file; set working directory
    download.file("http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "./run_analysis.zip")
    unzip("./run_analysis.zip")
    setwd("./UCI HAR Dataset/")

## define datasets
    activity_labels <- read.table("./activity_labels.txt", quote="\"")
    features <- read.table("./features.txt", quote="\"")
    X_train <- read.table("./train/X_train.txt", quote="\"")
    y_train <- read.table("./train/y_train.txt", quote="\"")
    subject_train <- read.table("./train/subject_train.txt", quote="\"")
    X_test <- read.table("./test/X_test.txt", quote="\"")
    subject_test <- read.table("./test/subject_test.txt", quote="\"")
    y_test <- read.table("./test/y_test.txt", quote="\"")

## Since MERGE re-sorts columns, add a sort column 
    ## to y_test and y_train to re-sort after MERGE
    y_test$sortCol <- (1:nrow(y_test))
    y_train$sortCol <- (1:nrow(y_train))
    X_test$sortCol <- (1:nrow(X_test))
    X_train$sortCol <- (1:nrow(X_train))
    subject_test$sortCol <- (1:nrow(subject_test))
    subject_train$sortCol <- (1:nrow(subject_train))

    ## merge activity_labels with y_test and y_train data
    y_test <- merge(x=y_test, y=activity_labels, by = "V1")
    y_train <- merge(x=y_train, y=activity_labels, by = "V1")

    ## resort by sort column
    y_test <- y_test[order(y_test$sortCol),]
    y_train <- y_train[order(y_train$sortCol),]

## Apply readable column names 
    ## set "Y" dataset column names
    y_test <- rename(y_test, replace = c("V1" = "activityId"))
    y_test <- rename(y_test, replace = c("V2" = "activityName"))
    y_train <- rename(y_train, replace = c("V1" = "activityId"))
    y_train <- rename(y_train, replace = c("V2" = "activityName"))
    subject_test <- rename(subject_test, replace = c("V1" = "subjectId"))
    subject_train <- rename(subject_train, replace = c("V1" = "subjectId"))

    ## set "X" dataset column names 
    # Make feature names more readable

    features$V2 <- sub("-mean()-",".Mean.", features$V2, fixed=TRUE)
    features$V2 <- sub("-mean()",".Mean", features$V2, fixed=TRUE)
    features$V2 <- sub("-meanFreq()",".Mean.Frequency", features$V2, fixed=TRUE)
    features$V2 <- sub("-X",".X", features$V2, fixed=TRUE)
    features$V2 <- sub("-Y",".Y", features$V2, fixed=TRUE)
    features$V2 <- sub("-Z",".Z", features$V2, fixed=TRUE)
    features$V2 <- sub("-std()-",".Std.", features$V2, fixed=TRUE)
    features$V2 <- sub("-std()",".Std", features$V2, fixed=TRUE)
    features$V2 <- sub("tBody","Time.Body.", features$V2, fixed=TRUE)
    features$V2 <- sub("tGravity","Time.Gravity.", features$V2, fixed=TRUE)
    features$V2 <- sub("fBody","Frequency.Body.", features$V2, fixed=TRUE)
    features$V2 <- sub("Acc","Acceleration", features$V2, fixed=TRUE)

    ## Loop through the features dataset and apply row attributes to the "X" dataset column names
    for (n in 1:nrow(features)){
        colnames(X_test)[n] <- as.character(features[n,2])
        colnames(X_train)[n] <- as.character(features[n,2])
    }

## Merges the training and the test sets to create one data set.
    ## Initialize mergedYX (in case you've run this more than once)
    mergedYX <- NULL
    
    ## combine y_test to X_test
    mergedYXtest <- cbind(subject_test$subjectId, y_test$activityId, y_test$activityName, X_test)
    
    ## combine y_train to X_train
    mergedYXtrain <- cbind(subject_train$subjectId,y_train$activityId,y_train$activityName, X_train)



    ## rename mergedYXtest and mergedYXtrain column names to normalize column names
    mergedYXtest <- rename(mergedYXtest, replace = c("subject_test$subjectId" = "subjectId"))
    mergedYXtest <- rename(mergedYXtest, replace = c("y_test$activityId" = "activityId"))
    mergedYXtest <- rename(mergedYXtest, replace = c("y_test$activityName" = "activityName"))
    
    mergedYXtrain <- rename(mergedYXtrain, replace = c("subject_train$subjectId" = "subjectId"))
    mergedYXtrain <- rename(mergedYXtrain, replace = c("y_train$activityId" = "activityId"))
    mergedYXtrain <- rename(mergedYXtrain, replace = c("y_train$activityName" = "activityName"))
    
    ## Combine mergedYXtest with mergedYXtrain
    mergedYX <- rbind(mergedYXtest,mergedYXtrain)

    # Keep only mean or std columns & default columns (subjectId, activityId,activityName)
    defaultColList <- c(colnames(mergedYX[1:3]))
    
    # Initialize meanStdColList (for reruns)
    meanStdColList <- NULL

#--Extracts only the measurements on the mean and standard deviation for each measurement. 
# NOTE: EXCLUDES derived columns using mean/std e.g "angle" columns
for (n in 4:ncol(mergedYX)){
    if (colnames(mergedYX[n]) %like% "mean" | colnames(mergedYX[n]) %like% "std" )
        meanStdColList <- c(meanStdColList, colnames(mergedYX[n]))
}

filteredColList <- c(defaultColList, meanStdColList)

# Subset original data
filterMergedYX <- subset(mergedYX, select=filteredColList)

meanSubset <-  subset(mergedYX, select=meanStdColList)



# Creates a second, independent tidy data set with 
# the average of each variable for each activity and each subject.

    # Group the data
    group.subject.activity <- aggregate(filterMergedYX,by=list(filterMergedYX$subjectId,filterMergedYX$activityId, filterMergedYX$activityName), FUN=mean)

    # clean up column names
    ## remove redundant column names
    group.subject.activity$subjectId <- NULL
    group.subject.activity$activityId <- NULL
    group.subject.activity$activityName <- NULL

    group.subject.activity <- rename(group.subject.activity, replace = c("Group.1" = "subjectId"))
    group.subject.activity <- rename(group.subject.activity, replace = c("Group.2" = "activityId"))
    group.subject.activity <- rename(group.subject.activity, replace = c("Group.3" = "activityName"))

## Apply descriptive activity names to name the activities in the data set


# Write out tidy mergedYX data to table
write.table(group.subject.activity, file="./AvgHumanActivityData.txt", row.names=FALSE)




