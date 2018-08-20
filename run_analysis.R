# Getting and Cleaning Data Course Project
# Data description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
# Data source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# 1. Load libraries & set working directory
#=================================================================#
if(!require("dplyr")){
    message("Installing dplyr")
    install.packages("dplyr")
    library(dplyr)
}

setwd("~/Documents/PROGRAMMING/Coursera/DS/assignments/mobile-data")
list.files()

# 2. Create project data directory & download required data
#=================================================================#

# 2.1 Create data directory for project
if (!file.exists("./datax")) {
    # 2.2 download data
    if (!file.exists("./zipData.zip")) {
        message("Downloading dataset")
        download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
                      destfile = "./zipData.zip", 
                      method = "curl",
                      mode = "wb")
        # take a break till the zip file is downloaded
        message("download complete")
        message("Extracting dataset")
        unzip("./zipData.zip", 
              overwrite = FALSE, 
              exdir = "./")
        file.rename("./UCI HAR Dataset", "./datax")
        message("succcessfully renamed")
    } 
    message("another message")
    } else {
    message("folder already exists")
}







# 3. Read training and test data
#=================================================================#
# 3.1 read activity labels
temp <- read.table("data/activity_labels.txt", stringsAsFactors = FALSE)
activityLabels <- tolower(temp$V2)

# 3.2 read features
temp <- read.table("data/features.txt", stringsAsFactors = FALSE)
features <- temp$V2

# 3.3 read training data
subjectTrain <- read.table("data/train/subject_train.txt", colClasses = "factor", col.names="subject")
XTrain <- read.table("data/train/X_train.txt", col.names = features)
yTrain <- read.table("data/train/y_train.txt", colClasses = "factor", col.names = "activity")

# 3.4 read testing data
subjectTest <- read.table("data/test/subject_test.txt", colClasses = "factor", col.names="subject")
XTest <- read.table("data/test/X_test.txt", col.names = features)
yTest <- read.table("data/test/y_test.txt", colClasses = "factor", col.names = "activity")

# 4. Merge train and test data
#---------------------------------------------#
# 4.1 Merge Training Data
train <- cbind(subjectTrain, XTrain, yTrain)

# 4.2 Merge Testing Data
test <- cbind(subjectTest, XTest, yTest)

# 4.3 Merged Training & Testing Data
all <- rbind(train, test)

# 5. Extract only mean and standard deviation(std) variables
#=================================================================#
selective <- all[,grep("subject|mean|Mean|std|activity", names(all))]

# 6. Making variable names more descriptive
#=================================================================#
# change f to freq, t to time
names(selective) <- gsub("^t", "time.", names(selective))
names(selective) <- gsub("^f", "freq.", names(selective))

# change Acc to Acceleration
names(selective) <- gsub("Acc", ".Acceleration", names(selective))

# change mean to Mean, std to Std
names(selective) <- gsub("mean", "Mean", names(selective))

names(selective) <- gsub("std", "Std", names(selective))

# change Jerk to .Jerk, Gyro to .Gyro
names(selective) <- gsub("Jerk", ".Jerk", names(selective))
names(selective) <- gsub("Gyro", ".Gyro", names(selective))
names(selective) <- gsub("Mag", ".Magnitude", names(selective))
names(selective) <- gsub("MeanFreq", "Mean.Freq", names(selective))
names(selective) <- gsub("gravityMean", "Gravity.Mean", names(selective))
names(selective) <- gsub("JerkMean", "Jerk.Mean", names(selective))
names(selective) <- gsub("tBody", "Time.Body", names(selective))
names(selective) <- gsub("BodyBody", "Body", names(selective))
names(selective) <- gsub("GyroMean", "Gyro.Mean", names(selective))

# replace ... or .. with .
names(selective) <- gsub("(\\.{2})|(\\.{3})", "\\.", names(selective))

# remove . at the end of string
names(selective) <- gsub("(\\.$)", "", names(selective))
names(selective)

# 7. Create tidy data set
#=================================================================#
tidydata <- selective %>% group_by(subject, activity) %>% summarise_all(funs(mean))