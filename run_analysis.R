library(dplyr)
library(tools)


# First we will grab all the labels that we will need for the data
ActivityLabels <-read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)
measurements   <-read.table("UCI HAR Dataset/features.txt" , stringsAsFactors = FALSE)

#obtain all the names/rows relating to mean and standard deviation 
# and clean the names
ActivityLabels <- ActivityLabels$V2
ActivityLabels <- gsub('_', " ", ActivityLabels)
ActivityLabels <- toTitleCase(ActivityLabels)
measurementsIndx <- grep("(std|[Mm]ean)",measurements$V2)
#Clean measurement names to make them more human readable
measurements <- measurements[measurementsIndx,2]
measurements <- gsub("[() -]", "", measurements)
measurements <- gsub("mean", "Mean",measurements)
measurements <- gsub("std", "StDev",measurements)
measurements <- gsub("Acc", "Accelerometer",measurements)
measurements <- gsub("Gyro", "Gyrometer", measurements)
measurements <- gsub("mag", "Magnitude",measurements)
measurements <- gsub("BodyBody", "Body",measurements)
measurements <- gsub("Freq", "Frequency", measurements)
measurements <- gsub("angle", "Angle", measurements)
measurements <- gsub("^t", "TimeSeriesof", measurements)
measurements <- gsub("^f", "FourierTransformof", measurements)
measurements <- gsub("Mag", "Magnitude", measurements)

# collect all the test data and merge it into one dataset
Fullset <- combine.sets(measurementsIndx)
Fullset$Activity         <- as.factor(Fullset$Activity)
levels(Fullset$Activity) <- ActivityLabels

# internal validation to ensure all data was created
# There are 30 subjects and 6 activities so if all data was correctly merged
# we should have that many unique columns in our data frame 
#sum(distinct(Fullset,Subject,Activity)$Subject)== sum(1:30*6)


#Aggregate the data and write it to file  
MeanData <- aggregate(.~Subject+Activity,Fullset, mean)

write.table(MeanData, file = "UCI HAR Dataset/Tidy Data", row.name = FALSE)



combine.sets<-function(measurementsIndx){
  #collect test data and merge it into one dataset
  testMeasurements <- read.table ("UCI HAR Dataset/test/X_test.txt")[measurementsIndx]
  testActivities   <- read.table("UCI HAR Dataset/test/y_test.txt", as.is = TRUE)
  testSubjects     <- read.table("UCI HAR Dataset/test/Subject_test.txt",as.is = TRUE)
  testSet          <- cbind(testSubjects,testActivities,testMeasurements)
  names(testSet)   <- c("Subject","Activity", measurements)
  
  #collect all the training data similarly and then merge it into one dataset
  
  trainMeasurements <- read.table ("UCI HAR Dataset/train/X_train.txt")[measurementsIndx]
  trainActivities   <- read.table("UCI HAR Dataset/train/y_train.txt", as.is = TRUE)
  trainSubjects     <- read.table("UCI HAR Dataset/train/Subject_train.txt",as.is = TRUE)
  trainSet          <- cbind(trainSubjects,trainActivities,trainMeasurements)
  names(trainSet)   <- c("Subject","Activity", measurements)
  
  #combine/order datasets
  
  Fullset <- full_join(testSet,trainSet) %>% arrange(Subject,Activity)
  return(Fullset) 
}
