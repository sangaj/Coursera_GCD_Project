# Course project for Getting and Cleaning Data
The goal of this course project is to prepare a tidy data set for later analysis.

# Data background

Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit?degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## What I have
1. run_analysis.R script
  - you could open it to read how I get the tidy data set, and some simple explanation for code in it.
  - Please note that, you should set  your own directory first.
  - first of all, read the data from txt files
  - put the test and train file together and rename the dataset 
  - join the label into the data set
  - get the tidy data set
2. Codebook
  - you could know how the variables are described.
3. output   
  - an txt file called subdata is the output of the code while it is my tidy data set.

## Project extension
I did it according to the questions. Due to the limited time I have, I didn't think it could be finished here. So this part I may give some project extension thinking to show a potential excellent dataset. After I did for these questions, I may use reshape package to melt the features because of the long name by setting this variables as features, and then seperate two calculation methods mean and sd by giving the variable methods. I may also set a variable axis to distinguish X,Y,Z and others. I guess this kind of data set would be more easily reading and understanding. 
