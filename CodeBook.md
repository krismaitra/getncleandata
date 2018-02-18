---
title: "Codebook for Getting and Cleaning Data"
author: "Krishanu Maitra"
date: "18th Feb., 2018"
output:
  html_document:
    keep_md: yes
---

## Project Description
This project is part of the Data Science course, Getting and Cleaning Data, offered by John Hopkins University on Coursera.

##Study design and data processing

###Collection of the raw data
The data for this project is that of the UCI HAR project, which is a project on identifying human activity based on the readings collected from the sensors of the smartphones used by the volunteers.
This can be downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Notes on the original (raw) data 
The data is divided into training and test data. Each set contains the raw signals collected using a sampling frequency throughout the duration of the activity performed. This data is then aggregated to create the features data files X_train.txt and X_test.txt, respectively. 
The name of each feature is given in the features.txt file. The features_info.txt file contains detailed information about each feature.
The outcome or the actual activity performed are present in the data files y_train.txt and y_test.txt, respectively. The descriptive labels of each activity is given in the activity_labels.txt file.

##Creating the tidy datafile

###Guide to create the tidy data file
Following is a brief outline of the steps to create the tidy data file (detailed steps about creating the tidy data file are given in the [readme](https://github.com/krismaitra/getncleandata/blob/master/README.md) of this repository):
1. Download the data file and keep in working directory
2. Run the script run_analysis.R given in this repository

###Cleaning of the data
The script creates a tidy dataset from the original dataset using the following steps (details of the steps are given in the [readme](https://github.com/krismaitra/getncleandata/blob/master/README.md) of this repository):
1. It merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Description of the variables in the tidy_data.txt file

The tidy dataset consists of 10299 observations of 88 variables, extracted our of the 563 variables in the original dataset.

The tidy_data.txt file contains the following variables:
 [1] "subject"                           "activity"                         
 [3] "tbodyaccmeanx"                     "tbodyaccmeany"                    
 [5] "tbodyaccmeanz"                     "tbodyaccstdx"                     
 [7] "tbodyaccstdy"                      "tbodyaccstdz"                     
 [9] "tgravityaccmeanx"                  "tgravityaccmeany"                 
[11] "tgravityaccmeanz"                  "tgravityaccstdx"                  
[13] "tgravityaccstdy"                   "tgravityaccstdz"                  
[15] "tbodyaccjerkmeanx"                 "tbodyaccjerkmeany"                
[17] "tbodyaccjerkmeanz"                 "tbodyaccjerkstdx"                 
[19] "tbodyaccjerkstdy"                  "tbodyaccjerkstdz"                 
[21] "tbodygyromeanx"                    "tbodygyromeany"                   
[23] "tbodygyromeanz"                    "tbodygyrostdx"                    
[25] "tbodygyrostdy"                     "tbodygyrostdz"                    
[27] "tbodygyrojerkmeanx"                "tbodygyrojerkmeany"               
[29] "tbodygyrojerkmeanz"                "tbodygyrojerkstdx"                
[31] "tbodygyrojerkstdy"                 "tbodygyrojerkstdz"                
[33] "tbodyaccmagmean"                   "tbodyaccmagstd"                   
[35] "tgravityaccmagmean"                "tgravityaccmagstd"                
[37] "tbodyaccjerkmagmean"               "tbodyaccjerkmagstd"               
[39] "tbodygyromagmean"                  "tbodygyromagstd"                  
[41] "tbodygyrojerkmagmean"              "tbodygyrojerkmagstd"              
[43] "fbodyaccmeanx"                     "fbodyaccmeany"                    
[45] "fbodyaccmeanz"                     "fbodyaccstdx"                     
[47] "fbodyaccstdy"                      "fbodyaccstdz"                     
[49] "fbodyaccmeanfreqx"                 "fbodyaccmeanfreqy"                
[51] "fbodyaccmeanfreqz"                 "fbodyaccjerkmeanx"                
[53] "fbodyaccjerkmeany"                 "fbodyaccjerkmeanz"                
[55] "fbodyaccjerkstdx"                  "fbodyaccjerkstdy"                 
[57] "fbodyaccjerkstdz"                  "fbodyaccjerkmeanfreqx"            
[59] "fbodyaccjerkmeanfreqy"             "fbodyaccjerkmeanfreqz"            
[61] "fbodygyromeanx"                    "fbodygyromeany"                   
[63] "fbodygyromeanz"                    "fbodygyrostdx"                    
[65] "fbodygyrostdy"                     "fbodygyrostdz"                    
[67] "fbodygyromeanfreqx"                "fbodygyromeanfreqy"               
[69] "fbodygyromeanfreqz"                "fbodyaccmagmean"                  
[71] "fbodyaccmagstd"                    "fbodyaccmagmeanfreq"              
[73] "fbodybodyaccjerkmagmean"           "fbodybodyaccjerkmagstd"           
[75] "fbodybodyaccjerkmagmeanfreq"       "fbodybodygyromagmean"             
[77] "fbodybodygyromagstd"               "fbodybodygyromagmeanfreq"         
[79] "fbodybodygyrojerkmagmean"          "fbodybodygyrojerkmagstd"          
[81] "fbodybodygyrojerkmagmeanfreq"      "angletbodyaccmeangravity"         
[83] "angletbodyaccjerkmeangravitymean"  "angletbodygyromeangravitymean"    
[85] "angletbodygyrojerkmeangravitymean" "anglexgravitymean"                
[87] "angleygravitymean"                 "anglezgravitymean" 

The first two variables in the tidy dataset are "subject" and "activity". The remaining 86 variables in the tidy dataset are actually the values of the corresponding features *averaged over each activity and each subject*.
The description about the corresponding feature variables in the original dataset can be found in the features_info.txt file included with the original dataset. 