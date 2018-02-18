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

## Creating the tidy dataset

### Guide to create the tidy dataset
Following is a brief outline of the steps to create the tidy dataset (detailed steps about creating the tidy dataset are given in the [readme](https://github.com/krismaitra/getncleandata/blob/master/README.md) of this repository):
1. Download the data file and keep in working directory
2. Run the script run_analysis.R given in this repository

### Cleaning of the data
The script creates a tidy dataset from the original dataset using the following steps (details of the steps are given in the [readme](https://github.com/krismaitra/getncleandata/blob/master/README.md) of this repository):
1. It merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Description of the variables in the tidy dataset

The tidy dataset consists of 180 observations of 88 variables, extracted out of the 10299 observations on 563 variables in the original dataset.

The tidy dataset contains the following variables:

1. subject
2. activity
3. tbodyaccmeanx
4. tbodyaccmeany
5. tbodyaccmeanz
6. tbodyaccstdx
7. tbodyaccstdy
8. tbodyaccstdz
9. tgravityaccmeanx
10. tgravityaccmeany
11. tgravityaccmeanz
12. tgravityaccstdx
13. tgravityaccstdy
14. tgravityaccstdz
15. tbodyaccjerkmeanx
16. tbodyaccjerkmeany
17. tbodyaccjerkmeanz
18. tbodyaccjerkstdx
19. tbodyaccjerkstdy
20. tbodyaccjerkstdz
21. tbodygyromeanx
22. tbodygyromeany
23. tbodygyromeanz
24. tbodygyrostdx
25. tbodygyrostdy
26. tbodygyrostdz
27. tbodygyrojerkmeanx
28. tbodygyrojerkmeany
29. tbodygyrojerkmeanz
30. tbodygyrojerkstdx
31. tbodygyrojerkstdy
32. tbodygyrojerkstdz
33. tbodyaccmagmean
34. tbodyaccmagstd
35. tgravityaccmagmean
36. tgravityaccmagstd
37. tbodyaccjerkmagmean
38. tbodyaccjerkmagstd
39. tbodygyromagmean
40. tbodygyromagstd
41. tbodygyrojerkmagmean
42. tbodygyrojerkmagstd
43. fbodyaccmeanx
44. fbodyaccmeany
45. fbodyaccmeanz
46. fbodyaccstdx
47. fbodyaccstdy
48. fbodyaccstdz
49. fbodyaccmeanfreqx
50. fbodyaccmeanfreqy
51. fbodyaccmeanfreqz
52. fbodyaccjerkmeanx
53. fbodyaccjerkmeany
54. fbodyaccjerkmeanz
55. fbodyaccjerkstdx
56. fbodyaccjerkstdy
57. fbodyaccjerkstdz
58. fbodyaccjerkmeanfreqx
59. fbodyaccjerkmeanfreqy
60. fbodyaccjerkmeanfreqz
61. fbodygyromeanx
62. fbodygyromeany
63. fbodygyromeanz
64. fbodygyrostdx
65. fbodygyrostdy
66. fbodygyrostdz
67. fbodygyromeanfreqx
68. fbodygyromeanfreqy
69. fbodygyromeanfreqz
70. fbodyaccmagmean
71. fbodyaccmagstd
72. fbodyaccmagmeanfreq
73. fbodybodyaccjerkmagmean
74. fbodybodyaccjerkmagstd
75. fbodybodyaccjerkmagmeanfreq
76. fbodybodygyromagmean
77. fbodybodygyromagstd
78. fbodybodygyromagmeanfreq
79. fbodybodygyrojerkmagmean
80. fbodybodygyrojerkmagstd
81. fbodybodygyrojerkmagmeanfreq
82. angletbodyaccmeangravity
83. angletbodyaccjerkmeangravitymean
84. angletbodygyromeangravitymean
85. angletbodygyrojerkmeangravitymean
86. anglexgravitymean
87. angleygravitymean
88. anglezgravitymean

The first two variables in the tidy dataset are "subject" and "activity". The remaining 86 variables in the tidy dataset are actually the values of the corresponding features *averaged over each activity and each subject*.

The description about the corresponding feature variables in the original dataset can be found in the features_info.txt file included with the original dataset. 