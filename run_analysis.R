library(dplyr)

inputDir = "UCI HAR Dataset"

#Function to get data from various input files and assemble them in a proper data frame
getData <- function(xfile, yfile, subjectFile, labels, attrs) {
    dataX <- read.table(xfile, sep = "")
    dataY <- read.table(yfile, sep = "")
    names(dataX) <- attrs
    names(dataY) <- "activity"
    
    #Use descriptive activity names to name the activities in the data set
    dataY$activity <- as.factor(dataY$activity)
    levels(dataY$activity) <- labels$V2
    
    subjects <- read.table(subjectFile, sep = "")
    names(subjects) <- "subject"
    subjects$subject <- as.factor(subjects$subject)
    outdata <- cbind(subjects, dataX, dataY)
    outdata
}

#Get column names and activity descriptions
labels <- read.table(paste0(inputDir, "/activity_labels.txt"), sep = "")
attrs <- read.table(paste0(inputDir, "/features.txt"), sep = "") 
attrs <- attrs[, 2]

#Tidy up column names
#Appropriately label the data set with descriptive variable names.
attrs <- gsub("([0-9]),([0-9])", "\\1to\\2", attrs)
attrs <- gsub("[-(),]", "", attrs) 
attrs <- tolower(attrs)

#Get training data, test data and merge
mergedData <- 
    rbind(
        getData(paste0(inputDir, "/train/X_train.txt"), 
                paste0(inputDir, "/train/y_train.txt"), 
                paste0(inputDir, "/train/subject_train.txt"),
                labels, attrs),
        getData(paste0(inputDir, "/test/X_test.txt"), 
                paste0(inputDir, "/test/y_test.txt"), 
                paste0(inputDir, "/test/subject_test.txt"),
                labels, attrs)
        )        

#Extract only the measurements on the mean and standard deviation for each measurement.
meanstds <- mergedData[c("subject", "activity", grep("mean|std", attrs, value = TRUE))]


#From the data set in step 4, create a second, independent tidy data set with the average 
#of each variable for each activity and each subject.
avgs <- meanstds %>% 
    group_by(subject, activity) %>% 
    summarise_at(grep("mean|std", attrs, value = TRUE), "mean")
