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

1. activity
2. tbodyaccmeany
3. tbodyaccstdx
4. tbodyaccstdz
5. tgravityaccmeany
6. tgravityaccstdx
7. tgravityaccstdz
8. tbodyaccjerkmeany
9. tbodyaccjerkstdx
10. tbodyaccjerkstdz
11. tbodygyromeany
12. tbodygyrostdx
13. tbodygyrostdz
14. tbodygyrojerkmeany
15. tbodygyrojerkstdx
16. tbodygyrojerkstdz
17. tbodyaccmagstd
18. tgravityaccmagstd
19. tbodyaccjerkmagstd
20. tbodygyromagstd
21. tbodygyrojerkmagstd
22. fbodyaccmeany
23. fbodyaccstdx
24. fbodyaccstdz
25. fbodyaccmeanfreqy
26. fbodyaccjerkmeanx
27. fbodyaccjerkmeanz
28. fbodyaccjerkstdy
29. fbodyaccjerkmeanfreqx
30. fbodyaccjerkmeanfreqz
31. fbodygyromeany
32. fbodygyrostdx
33. fbodygyrostdz
34. fbodygyromeanfreqy
35. fbodyaccmagmean
36. fbodyaccmagmeanfreq
37. fbodybodyaccjerkmagstd
38. fbodybodygyromagmean
39. fbodybodygyromagmeanfreq
40. fbodybodygyrojerkmagstd
41. angletbodyaccmeangravity
42. angletbodygyromeangravitymean
43. anglexgravitymean
44. anglezgravitymean
45. activity
46. tbodyaccmeany
47. tbodyaccstdx
48. tbodyaccstdz
49. tgravityaccmeany
50. tgravityaccstdx
51. tgravityaccstdz
52. tbodyaccjerkmeany
53. tbodyaccjerkstdx
54. tbodyaccjerkstdz
55. tbodygyromeany
56. tbodygyrostdx
57. tbodygyrostdz
58. tbodygyrojerkmeany
59. tbodygyrojerkstdx
60. tbodygyrojerkstdz
61. tbodyaccmagstd
62. tgravityaccmagstd
63. tbodyaccjerkmagstd
64. tbodygyromagstd
65. tbodygyrojerkmagstd
66. fbodyaccmeany
67. fbodyaccstdx
68. fbodyaccstdz
69. fbodyaccmeanfreqy
70. fbodyaccjerkmeanx
71. fbodyaccjerkmeanz
72. fbodyaccjerkstdy
73. fbodyaccjerkmeanfreqx
74. fbodyaccjerkmeanfreqz
75. fbodygyromeany
76. fbodygyrostdx
77. fbodygyrostdz
78. fbodygyromeanfreqy
79. fbodyaccmagmean
80. fbodyaccmagmeanfreq
81. fbodybodyaccjerkmagstd
82. fbodybodygyromagmean
83. fbodybodygyromagmeanfreq
84. fbodybodygyrojerkmagstd
85. angletbodyaccmeangravity
86. angletbodygyromeangravitymean
87. anglexgravitymean
88. anglezgravitymean

The first two variables in the tidy dataset are "subject" and "activity". The remaining 86 variables in the tidy dataset are actually the values of the corresponding features *averaged over each activity and each subject*.

The description about the corresponding feature variables in the original dataset can be found in the features_info.txt file included with the original dataset. 