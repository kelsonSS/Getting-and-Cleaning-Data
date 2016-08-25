# Getting-and-Cleaning-Data
Part of the Johns Hopkins Data Science Specialization
run_analysis is an R script to be used in Conjuction with the Human Activity Recognition Using Smartphones Data Set  available [here] 
(https://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip)

Make sure that the data is unzipped and the file is in your R working directory before running the script

This script will: 
-  Load the activity and measurement labels 
-  Extract all Data pertaining to the mean and the standard deviation 
-  Clean the measurement names to make them human readable
-  Merge the training and test sets
-  write a tidy data set with an average of each extracted variable

The tidy dataset is loaded as Tidy Data.txt
