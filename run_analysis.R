setwd("C:/Users/gubingjing/Downloads/UCI HAR Dataset")# set the directory
library(dplyr)
library(plyr) 

###read the data###

features <- read.table("features.txt") # read the features
X.train <- read.table("train/X_train.txt") #read the train data
X.test <- read.table("test/X_test.txt") #read the test data
X <- rbind(X.train,X.test) # put these data together
colnames(X) <- features[,2] # name the data set by features 
mean.pos <- grep("mean",features[,2],ignore.case=T)# find the column number of those names containing mean
std.pos <- grep("std",features[,2],ignore.case=T)# find the column number of those names containing std
newx <- X[,c(mean.pos,std.pos)] # generate the new dataset


activity.labels <-read.table("activity_labels.txt") # read the activity labels
colnames(activity.labels) <- c("activity","labels") # name the activity data set
y.train <- read.table("train/y_train.txt") # read the activity train data
y.test <- read.table("test/y_test.txt") # read the activity test data
y <- rbind(y.train,y.test) # put the activity data together
colnames(y) <- "activity"  # name the activity data set

subject.train <- read.table("train/subject_train.txt") #read the train subject data
subject.test <- read.table("test/subject_test.txt") #read the test subject data
subject <- rbind(subject.train,subject.test) #put the subject data together


act.merge <- join(y,activity.labels) # merge the labels into activity data sets

data <- cbind(subject=subject[,1],activity=act.merge[,2],newx) # put all data together
colnames(data) <- gsub("\\W*","",colnames(data)) # get rid of the special character in the column names

subdata <- group_by(data, subject, activity) %>% summarise_each(c("mean")) # calculation by groups

write.table(subdata,file="subdata.txt",row.name=FALSE) # creat the txt file
