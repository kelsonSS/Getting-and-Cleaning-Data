#Code Book

This is the code book that accompanies the Tidy Txt Data Set

##Data Aquisition:

 Please refer to the quoted text from the readme associated with the UCI data set on how the data were aquired and their meanings
 Source:
Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Universit�  degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Polit�cnica de Catalunya (BarcelonaTech). Vilanova i la Geltr� (08800), Spain

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six  > activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on >  the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a >  constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly > >  partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
For each record it is provided:

> - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

From this point I combined the test data with the training data to make a single dataset and cleaned the names to make them human readable. Then, I extracted 180 features from the 561 feature vector that had to do with mean or standard deviation measurments. Finally, the mean value of each of those features were calculated and used to create the independent tidy dataset. The names of the features can be found below. 


##Subject
The Test ID of the subject

##Activity 
The type of activity the subject was performing when the measurements were taken, there were six activities which were:
- Walking 
- Standing
- Sitting
- Walking Upstairs
- Walking Downstairs
- Laying

## Measurements
Here is a complete list of the measurements used in the tidy dataset

- "TimeSeriesofBodyAccelerometerMeanX" 
- "TimeSeriesofBodyAccelerometerMeanY" 
- "TimeSeriesofBodyAccelerometerMeanZ" 
- "TimeSeriesofBodyAccelerometerStDevX"
- "TimeSeriesofBodyAccelerometerStDevY" 
- "TimeSeriesofBodyAccelerometerStDevZ" 
- "TimeSeriesofGravityAccelerometerMeanX" 
- "TimeSeriesofGravityAccelerometerMeanY" 
- "TimeSeriesofGravityAccelerometerMeanZ"
- "TimeSeriesofGravityAccelerometerStDevX"
- "TimeSeriesofGravityAccelerometerStDevY" 
- "TimeSeriesofGravityAccelerometerStDevZ" 
- "TimeSeriesofBodyAccelerometerJerkMeanX"
- "TimeSeriesofBodyAccelerometerJerkMeanY"
- "TimeSeriesofBodyAccelerometerJerkMeanZ"
- "TimeSeriesofBodyAccelerometerJerkStDevX"
- "TimeSeriesofBodyAccelerometerJerkStDevY" 
- "TimeSeriesofBodyAccelerometerJerkStDevZ" 
- "TimeSeriesofBodyGyrometerMeanX" 
- "TimeSeriesofBodyGyrometerMeanY" 
- "TimeSeriesofBodyGyrometerMeanZ"
- "TimeSeriesofBodyGyrometerStDevX"
- "TimeSeriesofBodyGyrometerStDevY"
- "TimeSeriesofBodyGyrometerStDevZ"
- "TimeSeriesofBodyGyrometerJerkMeanX" 
- "TimeSeriesofBodyGyrometerJerkMeanY"
- "TimeSeriesofBodyGyrometerJerkMeanZ"
- "TimeSeriesofBodyGyrometerJerkStDevX"
- "TimeSeriesofBodyGyrometerJerkStDevY"
- "TimeSeriesofBodyGyrometerJerkStDevZ" 
- "TimeSeriesofBodyAccelerometerMagnitudeMean"
- "TimeSeriesofBodyAccelerometerMagnitudeStDev"
- "TimeSeriesofGravityAccelerometerMagnitudeMean" 
- "TimeSeriesofGravityAccelerometerMagnitudeStDev"
- "TimeSeriesofBodyAccelerometerJerkMagnitudeMean"
- "TimeSeriesofBodyAccelerometerJerkMagnitudeStDev"
- "TimeSeriesofBodyGyrometerMagnitudeMean"
- "TimeSeriesofBodyGyrometerMagnitudeStDev"
- "TimeSeriesofBodyGyrometerJerkMagnitudeMean"
- "TimeSeriesofBodyGyrometerJerkMagnitudeStDev" 
- "FourierTransformofBodyAccelerometerMeanX" 
- "FourierTransformofBodyAccelerometerMeanY"
- "FourierTransformofBodyAccelerometerMeanZ"
- "FourierTransformofBodyAccelerometerStDevX"
- "FourierTransformofBodyAccelerometerStDevY"
- "FourierTransformofBodyAccelerometerStDevZ"
- "FourierTransformofBodyAccelerometerMeanFrequencyX" 
- "FourierTransformofBodyAccelerometerMeanFrequencyY"
- "FourierTransformofBodyAccelerometerMeanFrequencyZ" 
- "FourierTransformofBodyAccelerometerJerkMeanX" 
- "FourierTransformofBodyAccelerometerJerkMeanY"
- "FourierTransformofBodyAccelerometerJerkMeanZ"
- "FourierTransformofBodyAccelerometerJerkStDevX" 
- "FourierTransformofBodyAccelerometerJerkStDevY" 
- "FourierTransformofBodyAccelerometerJerkStDevZ"
- "FourierTransformofBodyAccelerometerJerkMeanFrequencyX"
- "FourierTransformofBodyAccelerometerJerkMeanFrequencyY"
- "FourierTransformofBodyAccelerometerJerkMeanFrequencyZ"
- "FourierTransformofBodyGyrometerMeanX" 
- "FourierTransformofBodyGyrometerMeanY" 
- "FourierTransformofBodyGyrometerMeanZ"
- "FourierTransformofBodyGyrometerStDevX"
- "FourierTransformofBodyGyrometerStDevY" 
- "FourierTransformofBodyGyrometerStDevZ" 
- "FourierTransformofBodyGyrometerMeanFrequencyX"
- "FourierTransformofBodyGyrometerMeanFrequencyY" 
- "FourierTransformofBodyGyrometerMeanFrequencyZ"
- "FourierTransformofBodyAccelerometerMagnitudeMean" 
- "FourierTransformofBodyAccelerometerMagnitudeStDev"
- "FourierTransformofBodyAccelerometerMagnitudeMeanFrequency" 
- "FourierTransformofBodyAccelerometerJerkMagnitudeMean"
- "FourierTransformofBodyAccelerometerJerkMagnitudeStDev"
- "FourierTransformofBodyAccelerometerJerkMagnitudeMeanFrequency"
- "FourierTransformofBodyGyrometerMagnitudeMean"
- "FourierTransformofBodyGyrometerMagnitudeStDev" 
- "FourierTransformofBodyGyrometerMagnitudeMeanFrequency" 
- "FourierTransformofBodyGyrometerJerkMagnitudeMean"
- "FourierTransformofBodyGyrometerJerkMagnitudeStDev"
- "FourierTransformofBodyGyrometerJerkMagnitudeMeanFrequency"
- "AngletBodyAccelerometerMean,gravity"
- "AngletBodyAccelerometerJerkMean,gravityMean"
- "AngletBodyGyrometerMean,gravityMean"
- "AngletBodyGyrometerJerkMean,gravityMean"
- "AngleX,gravityMean" 
- "AngleY,gravityMean"
- "AngleZ,gravityMean"
