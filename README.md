# getncleandata

## About this repository
This repository is part of submission of Coursera Data Science course by JHU. It analyses the [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) - downloaded and unzipped.
The dataset contains the readings collected from smartphone sensors of 30 users in the age bracket 19-48 years performing various activities. Detailed information is given in the README.txt files provided along with the dataset. More details about the dataset used for this assignment can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Analysis of the data
The data in this dataset is divided into training and test data, contained in the sub-folders *train* and *test* respectively.
Within the *train* folder: 
* Each row of the file subject_train.txt contains the information about a subject performing an activity
* Each row of the file X_train.txt contains the features, i.e the readings recorded by the sensors for each activity, sampled and aggregated over the period of the activity.
* Each row of the file y_train.txt contains the activity performed corresponding to the row containing features in X_train.txt, by the subject in the corresponding row in subject_train.txt.

Within the *test* folder:
* Each row of the file subject_test.txt contains the information about a subject performing an activity
* Each row of the file X_test.txt contains the features, i.e the readings recorded by the sensors for each activity, sampled and aggregated over the period of the activity.
* Each row of the file y_test.txt contains the activity performed corresponding to the row containing features in X_test.txt, by the subject in the corresponding row in subject_test.txt.

The descriptive activity labels for each of the activities performed by the subjects in y_train.txt and y_test.txt are given in the file activity_labels.txt in the main folder, UCI HAR Dataset.
The labels of the features in X_train.txt and X_test.txt are given in the features.txt file in the main folder, UCI HAR Dataset.
A detailed description of the features is given in the are given in the features_info.txt file in the main folder, UCI HAR Dataset.

Note: The dataset also contains the files of raw data collected from sensors in the "Intertial Signals" subfolder of the train and test folders. For this analysis we do not use these raw data files directly, instead we use the X_train and X_test datasets generated out of these raw data files.

The R script in this repository does the following:
1. Merges the training and the test sets to create one data set. The script does this in 3 steps in the getData() function:
	a. It binds the subject_train, X_train and y_train column-wise and forms a dataset
	b. It binds the subject_test, X_test and y_test column-wise and forms a second dataset
	c. Next, it binds the two datasets created in steps a and b row-wise to generate the merged dataset
2. Extracts only the measurements on the mean and standard deviation for each measurement - the script extracts the columns having the strings "mean" and "std" in them from the features.txt file and creates a subset of the merged data frame
3. Uses descriptive activity names to name the activities in the data set - the script uses the activity_labels.txt to do this, in addition, it names the subject column as "subject" and the activity column as "activity"
4. Appropriately labels the data set with descriptive variable names. The script does this in the following way and passes the cleaned column names to the getData() function:
	* The script gets the column names of the extracted columns from the features.txt file
	* It substitutes any hyphen between two numbers in a column name with "to"
	* Nextt removes any parentheses, comma or hyphen remaining in the column names
	* Finally, it converts all column names to lowercase
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject - the script uses the group_by and summarise_at functions to accomplish this.

## Pre-requisites to run the script
1. R 3.3.0 or above
2. R package [dplyr](http://dplyr.tidyverse.org/) needs to be installed
3. The script, run_analysis.R from this repository should also be stored in the working directory
4. The dataset needs to be downloaded, unzipped and saved in the working directory. If downloading using R, the following set of commands can be used:
```R
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
    "data.zip", "curl", quiet = TRUE, mode = "wb")
unzip("data.zip")
file.remove("data.zip")
```

## Running the script to get the tidy dataset

Run the script run_analysis.R in R as follows:

```R
source("run_analysis.R")
```