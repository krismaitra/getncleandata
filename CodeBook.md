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

## Study design and data processing

### Collection of the raw data
The data for this project is that of the UCI HAR project, which is a project on identifying human activity based on the readings collected from the sensors of the smartphones used by the volunteers.
This can be downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Notes on the original (raw) data 
The data is divided into training and test data. Each set contains the raw signals collected using a sampling frequency throughout the duration of the activity performed. This data is then aggregated to create the features data files X_train.txt and X_test.txt, respectively. 
The name of each feature is given in the features.txt file. The features_info.txt file contains detailed information about each feature.
The outcome or the actual activity performed are present in the data files y_train.txt and y_test.txt, respectively. The descriptive labels of each activity is given in the activity_labels.txt file.

## Creating the tidy datafile

### Guide to create the tidy data file
Following is a brief outline of the steps to create the tidy data file (detailed steps about creating the tidy data file are given in the [readme](https://github.com/krismaitra/getncleandata/blob/master/README.md) of this repository):
1. Download the data file and keep in working directory
2. Run the script run_analysis.R given in this repository

### Cleaning of the data
The script creates a tidy dataset from the original dataset using the following steps (details of the steps are given in the [readme](https://github.com/krismaitra/getncleandata/blob/master/README.md) of this repository):
1. It merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Description of the variables in the tidy_data.txt file

The tidy dataset consists of 10299 observations of 88 variables, extracted our of the 563 variables in the original dataset.

The tidy_data.txt file contains the following variables:

---
 "subject"                           "activity"                         
 "tbodyaccmeanx"                     "tbodyaccmeany"                    
 "tbodyaccmeanz"                     "tbodyaccstdx"                     
 "tbodyaccstdy"                      "tbodyaccstdz"                     
 "tgravityaccmeanx"                  "tgravityaccmeany"                 
 "tgravityaccmeanz"                  "tgravityaccstdx"                  
 "tgravityaccstdy"                   "tgravityaccstdz"                  
 "tbodyaccjerkmeanx"                 "tbodyaccjerkmeany"                
 "tbodyaccjerkmeanz"                 "tbodyaccjerkstdx"                 
 "tbodyaccjerkstdy"                  "tbodyaccjerkstdz"                 
 "tbodygyromeanx"                    "tbodygyromeany"                   
 "tbodygyromeanz"                    "tbodygyrostdx"                    
 "tbodygyrostdy"                     "tbodygyrostdz"                    
 "tbodygyrojerkmeanx"                "tbodygyrojerkmeany"               
 "tbodygyrojerkmeanz"                "tbodygyrojerkstdx"                
 "tbodygyrojerkstdy"                 "tbodygyrojerkstdz"                
 "tbodyaccmagmean"                   "tbodyaccmagstd"                   
 "tgravityaccmagmean"                "tgravityaccmagstd"                
 "tbodyaccjerkmagmean"               "tbodyaccjerkmagstd"               
 "tbodygyromagmean"                  "tbodygyromagstd"                  
 "tbodygyrojerkmagmean"              "tbodygyrojerkmagstd"              
 "fbodyaccmeanx"                     "fbodyaccmeany"                    
 "fbodyaccmeanz"                     "fbodyaccstdx"                     
 "fbodyaccstdy"                      "fbodyaccstdz"                     
 "fbodyaccmeanfreqx"                 "fbodyaccmeanfreqy"                
 "fbodyaccmeanfreqz"                 "fbodyaccjerkmeanx"                
 "fbodyaccjerkmeany"                 "fbodyaccjerkmeanz"                
 "fbodyaccjerkstdx"                  "fbodyaccjerkstdy"                 
 "fbodyaccjerkstdz"                  "fbodyaccjerkmeanfreqx"            
 "fbodyaccjerkmeanfreqy"             "fbodyaccjerkmeanfreqz"            
 "fbodygyromeanx"                    "fbodygyromeany"                   
 "fbodygyromeanz"                    "fbodygyrostdx"                    
 "fbodygyrostdy"                     "fbodygyrostdz"                    
 "fbodygyromeanfreqx"                "fbodygyromeanfreqy"               
 "fbodygyromeanfreqz"                "fbodyaccmagmean"                  
 "fbodyaccmagstd"                    "fbodyaccmagmeanfreq"              
 "fbodybodyaccjerkmagmean"           "fbodybodyaccjerkmagstd"           
 "fbodybodyaccjerkmagmeanfreq"       "fbodybodygyromagmean"             
 "fbodybodygyromagstd"               "fbodybodygyromagmeanfreq"         
 "fbodybodygyrojerkmagmean"          "fbodybodygyrojerkmagstd"          
 "fbodybodygyrojerkmagmeanfreq"      "angletbodyaccmeangravity"         
 "angletbodyaccjerkmeangravitymean"  "angletbodygyromeangravitymean"    
 "angletbodygyrojerkmeangravitymean" "anglexgravitymean"                
 "angleygravitymean"                 "anglezgravitymean" 
---
The first two variables in the tidy dataset are "subject" and "activity". The remaining 86 variables in the tidy dataset are actually the values of the corresponding features *averaged over each activity and each subject*.
The description about the corresponding feature variables in the original dataset can be found in the features_info.txt file included with the original dataset. 