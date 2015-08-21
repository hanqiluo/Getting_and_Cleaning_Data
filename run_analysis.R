#
# Cleaning Data
# Project 1
#

#
# Misc
#
rm(list = ls())
gc()
options(stringsAsFactors = FALSE)

#
# load libraries 
#
library(data.table)


#
# set working directory
#
setwd("~/git/Getting_and_Cleaning_Data")

# create a folder
if(!(dir.exists("data/"))) {
    dir.create("data/")
}


# download data set
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
if(!(dir.exists("data/UCI HAR Dataset"))){
    download.file(url, destfile = "data/accelerometers.zip")
    
    # unzip the dataset
    unzip("data/accelerometers.zip", exdir = "./data", overwrite=TRUE)
    
    # delete the zipped file
    unlink("data/accelerometers.zip")
}

# remove unneccessary object
rm(url)

# the path for both original and test data
dataDir <- "data/UCI HAR Dataset"

# create path for test and train data
testDir <- paste(dataDir, "test", sep = "/")
trainDir <- paste(dataDir, "train", sep = "/")

#load the feature variable
features <- read.table(paste(dataDir, "features.txt", sep = "/"), sep = "")

# only include data has "mean" and "std"
featureCols <- grepl("mean|std", features$V2)
featureLabels <- features$V2[featureCols]

#
# Test Data
#

# Test: Activity
testActivity <- data.table(read.table(paste(testDir, "Y_test.txt", sep = "/"), 
                                      sep = ""))
setnames(testActivity,colnames(testActivity),"activityID")


# Test: Subject ID
testID <- data.table(read.table(paste(testDir, "subject_test.txt", sep = "/"), 
                                sep = ""))
setnames(testID,colnames(testID),"subjectID")

# bind suject ID with the activity
test <- cbind(testActivity, testID)

# Test: Main data
testMain <- data.table(read.table(paste(testDir, "X_test.txt", sep = "/"), sep = ""))
# 561 variables but we only want to keep the one with means/std

# only include the observation with mean and standard deviation
# column selection: only select column with True in featureColumns
# 
testMain <- testMain[, featureCols, with = F]
# only 79 variables were selected

# give name to the test main
setnames(testMain, colnames(testMain), featureLabels)


# bind testMain, and test
test <- cbind(test, testMain)

#
# train data: same as test data
#
# train: Activity
trainActivity <- data.table(read.table(paste(trainDir, "Y_train.txt", sep = "/"), 
                                       sep = ""))
setnames(trainActivity,colnames(trainActivity), "activityID")


# train: Subject ID
trainID <- data.table(read.table(paste(trainDir, "subject_train.txt", sep = "/"), 
                                 sep = ""))
setnames(trainID,colnames(trainID),"subjectID")

# bind suject ID with the activity
train <- cbind(trainActivity, trainID)

# train: Main data
trainMain <- data.table(read.table(paste(trainDir, "X_train.txt", sep = "/"), 
                                   sep = ""))
# 561 variables but we only want to keep the one with means/std

# only include the observation with mean and standard deviation
# column selection: only select column with True in featureColumns
# 
trainMain <- trainMain[, featureCols, with = F]
# only 79 variables were selected

# give name to the train main
setnames(trainMain, colnames(trainMain), featureLabels)


# bind trainMain, and train
train <- cbind(train, trainMain)

#
# rbind training and test data
#
trainTest <- rbind(test, train)

# read activity labels
activityLabel <- data.table(read.table(paste(dataDir, "activity_labels.txt", sep = "/"), 
                            sep = ""))
setnames(activityLabel, colnames(activityLabel), c("activityID", "activityType"))
setkey(activityLabel, activityID) #activityID is the key

# merge the activity label to the main dataset
tidyData <- merge(trainTest, activityLabel, by = "activityID")

# generate folder: cleanData
if(!(dir.exists("cleanData/"))) {
    dir.create("cleanData/")
}


# write full data
write.table(tidyData, "cleanData/tidy_data.txt")


#
# aggregate data
#

# calculate the average of every variable based on the each activity and each subject
aggData <- tidyData[, lapply(.SD, mean), by= c("activityType", "subjectID")]


# save aggregated data
write.table(aggData, "cleanData/agg_data.txt")

