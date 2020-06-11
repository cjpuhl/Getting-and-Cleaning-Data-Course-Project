library(dplyr)

## reads activities into R
activities.read <- function(){
       data <- read.table(file = "UCI HAR Dataset/activity_labels.txt")
       names(data) <- c("activity_id", "activity_label")
       data
}


## generic function that loads data from test and train folders
read.bind <- function(testFile, trainFile){
        
        test <- read.table(paste("UCI HAR Dataset/test/", testFile, sep = ""))
        names(test) <- c(1 : ncol(test))
        
        train <- read.table(paste("UCI HAR Dataset/train/", trainFile, sep = ""))
        names(train) <- c(1 : ncol(train))
        
        data <- bind_rows(test, train)
        
}

subjects <- read.bind("subject_test.txt", "subject_train.txt")

activity <- read.bind("y_test.txt", "y_train.txt")

## reads smartphone accelerometer and gyroscope data
sag <- read.bind("X_test.txt", "X_train.txt")

## labels the data sets with descriptive variable names
names(subjects) <- c("subject_id")

names(activity) <- c("activity_id")


## reads The complete list of variables 
## of each feature vector from the accelerometer and gyroscope
sag_names <- read.table(file = "UCI HAR Dataset/features.txt")
names(sag) <- sag_names[, 2]
rm(sag_names)

## Extracts only the measurements on the mean 
## and standard deviation for each measurement.
sag <- sag[, grep(pattern = "mean\\(\\)|std\\(\\)", x = names(sag))]

## Merges the training and the test sets to create one data set.
merged <- bind_cols(subjects, activity, sag)
rm(sag, subjects, activity)

## Uses descriptive activity names to name the activities in the data set
activities <- activities.read()
merged <- merge(x = activities, y = merged)

## From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject.
tidy <- merged  %>%
        group_by(activity_id) %>%
        group_by(subject_id) %>%
        summarise_at(.vars = names(merged[4: ncol(merged)]), .funs = mean)

rm(merged)

tidy <- merge(x = activities, y = tidy)
rm(activities)

names(tidy)[4 : ncol(tidy)] <- paste("average", 
                                     names(tidy)[4 : ncol(tidy)], sep = " ")

write.table(tidy, "tidy.txt", row.names = FALSE)