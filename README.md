# README.md  week4_proj
# For "Getting and Cleaning data" project, week 4. by trishag
This describes the process used to create a clean data set for the week 4 
course project
## Source data
The data come [from  here:](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
a description of the data is found [here:](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
There is a readme.txt with the data which should be read to understand the data gathered. For clarity, I will not repeat the information here. 
## Output data
The clean, summarised data set is created in a file named *eanofsignalsgroupedbyactivityandsubject.csv*
It can be read using the R command: 
'read_csv("meanofsignalsgroupedbyactivityandsubject.csv")'

##Scripts used

*run_analysis.R* 

## Processing performed
The input datasets of the signals (X_train.txt and X_test.txt) were joined, as were the activity information
 (y_train.txt and y_test.txt)) and the subject data (subject_train.txt and subject_test.txt). 
 
 Descriptive labels were made to replace the
 activity codes, and these labels, the subject data and the signal data were all joined together.
 
 The final data required was only those data which represented mean and standard deviation calculations.
 This data was identified, then grouped by subject and activity and averaged. 
 The resulting table was written to the output file.# week4_proj
Getting and Cleaning data week 4 project
