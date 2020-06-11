Getting and Cleaning Data Course Project
================

## Source of the Data

The data linked to from the course website represent data collected from
the accelerometers from the Samsung Galaxy S smartphone. A full
description is available at the site where the data was obtained:

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Here are the data for the project:

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

The basic descriprion of the data acquisition process (quoted from their
README):

> The experiments have been carried out with a group of 30 volunteers
> Each person performed six activities (WALKING, WALKING\_UPSTAIRS,
> WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone
> (Samsung Galaxy S II) on the waist. Using its embedded accelerometer
> and gyroscope, we captured 3-axial linear acceleration and 3-axial
> angular velocity at a constant rate of 50Hz. The obtained dataset has
> been randomly partitioned into two sets, where 70% of the volunteers
> was selected for generating the training data and 30% the test data.

More information about the data in the Readme.txt and features\_info.txt
avaiable in the original [data
set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Loading the data into R

As explained the data dataset has been randomly partitioned into two
sets, called train and test data. Both train and test foulders have 3
txt files used in this project:

  - the subject that was monitored from the group of 30 volunteers
  - the activity the subject was doing
  - the data obtained on the smartphone’s accelerometer and gyroscope

The data was loaded into R folowing these steps:

1.  read the txt file in the test folder and assign it tho a variable
    called test
2.  read the txt file in the train folder and assign it tho a variable
    called train
3.  set the same column names for both data frames
4.  merge the two data frames using bind\_rows

Instead of repeating these steps 3 times in R code, once for subject,
once for activity and once for data, one more clean way was to do it
with dplyr package and a function named read.bind:

``` r
read.bind <- function(testFile, trainFile){
        
        test <- read.table(paste("UCI HAR Dataset/test/", testFile, sep = ""))
        names(test) <- c(1 : ncol(test))
        
        train <- read.table(paste("UCI HAR Dataset/train/", trainFile, sep = ""))
        names(train) <- c(1 : ncol(train))
        
        data <- bind_rows(test, train)
        
}
```

All three data sets have been loaded into R using this function by
passing the name of the file in the test and train folders.

``` r
subjects <- read.bind("subject_test.txt", "subject_train.txt")

activity <- read.bind("y_test.txt", "y_train.txt")

## reads smartphone accelerometer and gyroscope data
sag <- read.bind("X_test.txt", "X_train.txt")
```

## The assignement objective

Create one R script called run\_analysis.R that:

1.  Merges the training and the test sets to create one data set.
2.  Extracts only the measurements on the mean and standard deviation
    for each measurement.
3.  Uses descriptive activity names to name the activities in the data
    set
4.  Appropriately labels the data set with descriptive variable names.
5.  From the data set in step 4, creates a second, independent tidy data
    set with the average of each variable for each activity and each
    subject.

It appears more simple to start with step 4 because having descriptive
column names in the data allows you to extract only the mean and
standard deviations and by this having a smaller data set to do the
merge.

### 4\. Appropriately labels the data set with descriptive variable names

For the subject and activity data frames just using subject\_id or
activity\_id. The smartphone’s accelerometer and gyroscope data has a
txt file called features.txt with the complete list of variables of each
feature vector from the accelerometer and gyroscope. Reading this file
into a data frame and seting the second column to the names(data) solves
this issue.

``` r
## labels the data sets with descriptive variable names
names(subjects) <- c("subject_id")

names(activity) <- c("activity_id")

## reads The complete list of variables 
## of each feature vector from the accelerometer and gyroscope
sag_names <- read.table(file = "UCI HAR Dataset/features.txt")
names(sag) <- sag_names[, 2]
```

Now, with all pieces of data having descriptive variable names, it is
possible to filter by column names.

### 2\. Extracts only the measurements on the mean and standard deviation for each measurement.

Using grep function to subset only the columns that have mean() or std()
in its name

``` r
## Extracts only the measurements on the mean 
## and standard deviation for each measurement.
sag <- sag[, grep(pattern = "mean\\(\\)|std\\(\\)", x = names(sag))]
```

### 1\. Merges the training and the test sets to create one data set.

The training and test set rows have been merged by the read.bind
function. The sets have been merged using bind\_rows function.

``` r
## Merges the training and the test sets to create one data set.
merged <- bind_cols(subjects, activity, sag)
```

### 3\. Uses descriptive activity names to name the activities in the data set

One way to solve this part of the assignement is to read the activity
labels avaiable in activity\_labels.txt and use basic R merge function
to join the activity labels with the smartphone data by activity\_id

``` r
## read the activity labels avaiable in activity_labels.txt
activities.read <- function(){
       data <- read.table(file = "UCI HAR Dataset/activity_labels.txt")
       names(data) <- c("activity_id", "activity_label")
       data
}

## Uses descriptive activity names to name the activities in the data set
activities <- activities.read()
merged <- merge(x = activities, y = merged)
```

As a result each row of the merged data frame has now the activity id
and its label.

### 5\. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

As the assignement is asking for the average for each activity and each
subject the merged data was grouped by activity and subject. The
summarise\_at function allows you to subset the columns that will be
processed by the mean function. Since the tidy data set has only average
values for each activity and subject the word “average” vas added to the
numeric collumn names

``` r
## From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject.
tidy <- merged  %>%
        group_by(activity_id) %>%
        group_by(subject_id) %>%
        summarise_at(.vars = names(merged[4: ncol(merged)]), .funs = mean)

(...)

names(tidy)[4 : ncol(tidy)] <- paste("average", 
                                     names(tidy)[4 : ncol(tidy)], sep = " ")
```

The result is tidy because:

1.  Each variable forms a column.
2.  Each observation forms a row.
