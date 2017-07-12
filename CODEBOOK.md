# Code Book for "Getting and Cleaning Data" week 4 project task.

##
## Overview
This projects uses script *runanalysis.R* to read in data from the files described in the README.md
It tidies the data by joining experimental data files from training and testing sets with other data to provide activity labels and an identifier
 of the subject of the experiment. Data related to average and standard deviation measures on experimental data were identified and the average of these measures were calcualted for each subject and activity, this data was written to the output file. 

 ## Output
 Data related to average and standard deviation measures on experimental data were identified.
 The average of the measures were calculated by subject and by activity. 
The output is written to a file called *meanofsignalsgroupedbyactivityandsubject.csv*.
These results are in the same normalised units as the signal data.  
This file can be read into R using the R command:

'read_csv("meanofsignalsgroupedbyactivityandsubject.csv")'




### Description of field in outputfile

|	Column name	|	names in features_info.txt	|	Description	|	DomainTime/Freq	|	Statistic applied	|	Direction |
|--------------|-------|------|------|-----|-----|-----|
|	subject				|		|	Experimental subject (integer)	|	n/a	|	n/a	|	n/a
|	activity			|		|	Activity (character)	|	n/a	|	n/a	|	n/a
|	timebodyaccaveragex	|	tBodyAcc-mean()-X	|	Body acceleration	|	time	|	average	|	x
|	timebodyaccaveragey	|	tBodyAcc-mean()-Y	|	Body acceleration	|	time	|	average	|	y
|	timebodyaccaveragez	|	tBodyAcc-mean()-Z	|	Body acceleration	|	time	|	average	|	z
|	timebodyaccstandarddevx	|	tBodyAcc-std()-X	|	Body acceleration	|	time	|	standard deviation	|	x
|	timebodyaccstandarddevy	|	tBodyAcc-std()-Y	|	Body acceleration	|	time	|	standard deviation	|	y
|	timebodyaccstandarddevz	|	tBodyAcc-std()-Z	|	Body acceleration	|	time	|	standard deviation	|	z
|	timegravityaccaveragex	|	tGravityAcc-mean()-X	|	Gravity Acceleration	|	time	|	average	|	x
|	timegravityaccaveragey	|	tGravityAcc-mean()-Y	|	Gravity Acceleration	|	time	|	average	|	y
|	timegravityaccaveragez	|	tGravityAcc-mean()-Z	|	Gravity Acceleration	|	time	|	average	|	z
|	timegravityaccstandarddevx	|	tGravityAcc-std()-X	|	Gravity Acceleration	|	time	|	standard deviation	|	x
|	timegravityaccstandarddevy	|	tGravityAcc-std()-Y	|	Gravity Acceleration	|	time	|	standard deviation	|	y
|	timegravityaccstandarddevz	|	tGravityAcc-std()-Z	|	Gravity Acceleration	|	time	|	standard deviation	|	z
|	timebodyaccjerkaveragex	|	tBodyAccJerk-mean()-X	|	Body acceleration jerk	|	time	|	average	|	x
|	timebodyaccjerkaveragey	|	tBodyAccJerk-mean()-Y	|	Body acceleration jerk	|	time	|	average	|	y
|	timebodyaccjerkaveragez	|	tBodyAccJerk-mean()-Z	|	Body acceleration jerk	|	time	|	average	|	z
|	timebodyaccjerkstandarddevx	|	tBodyAccJerk-std()-X	|	Body acceleration jerk	|	time	|	standard deviation	|	x
|	timebodyaccjerkstandarddevy	|	tBodyAccJerk-std()-Y	|	Body acceleration jerk	|	time	|	standard deviation	|	y
|	timebodyaccjerkstandarddevz	|	tBodyAccJerk-std()-Z	|	Body acceleration jerk	|	time	|	standard deviation	|	z
|	timebodygyroaveragex	|	tBodyGyro-mean()-X	|	Body Gyro	|	time	|	average	|	x
|	timebodygyroaveragey	|	tBodyGyro-mean()-Y	|	Body Gyro	|	time	|	average	|	y
|	timebodygyroaveragez	|	tBodyGyro-mean()-Z	|	Body Gyro	|	time	|	average	|	z
|	timebodygyrostandarddevx	|	tBodyGyro-std()-X	|	Body Gyro	|	time	|	standard deviation	|	x
|	timebodygyrostandarddevy	|	tBodyGyro-std()-Y	|	Body Gyro	|	time	|	standard deviation	|	y
|	timebodygyrostandarddevz	|	tBodyGyro-std()-Z	|	Body Gyro	|	time	|	standard deviation	|	z
|	timebodygyrojerkaveragex	|	tBodyGyroJerk-mean()-X	|	Body Gyro Jerk	|	time	|	average	|	x
|	timebodygyrojerkaveragey	|	tBodyGyroJerk-mean()-Y	|	Body Gyro Jerk	|	time	|	average	|	y
|	timebodygyrojerkaveragez	|	tBodyGyroJerk-mean()-Z	|	Body Gyro Jerk	|	time	|	average	|	z
|	timebodygyrojerkstandarddevx	|	tBodyGyroJerk-std()-X	|	Body Gyro Jerk	|	time	|	standard deviation	|	x
|	timebodygyrojerkstandarddevy	|	tBodyGyroJerk-std()-Y	|	Body Gyro Jerk	|	time	|	standard deviation	|	y
|	timebodygyrojerkstandarddevz	|	tBodyGyroJerk-std()-Z	|	Body Gyro Jerk	|	time	|	standard deviation	|	z
|	timebodyaccmagaverage	|	tBodyAccMag-mean()	|	Body acceleration magnitude	|	time	|	average	|	
|	timebodyaccmagstandarddev	|	tBodyAccMag-std()	|	Body acceleration magnitude	|	time	|	standard deviation	|	
|	timegravityaccmagaverage	|	tGravityAccMag-mean()	|	Gravity acceleration magnitude	|	time	|	average	|	
|	timegravityaccmagstandarddev	|	tGravityAccMag-std()	|	Gravity acceleration magnitude	|	time	|	standard deviation	|	
|	timebodyaccjerkmagaverage	|	tBodyAccJerkMag-mean()	|	Body jerk magnitude	|	time	|	average	|	
|	timebodyaccjerkmagstandarddev	|	tBodyAccJerkMag-std()	|	Body jerk magnitude	|	time	|	standard deviation	|	
|	timebodygyromagaverage	|	tBodyGyroMag-mean()	|	Body gyro magnitude	|	time	|	average	|	
|	timebodygyromagstandarddev	|	tBodyGyroMag-std()	|	Body gyro magnitude	|	time	|	standard deviation	|	
|	timebodygyrojerkmagaverage	|	tBodyGyroJerkMag-mean()	|	Body gyro jerk magnitude	|	time	|	average	|	
|	timebodygyrojerkmagstandarddev	|	tBodyGyroJerkMag-std()	|	Body gyro jerk magnitude	|	time	|	standard deviation	|	
|	frequencybodyaccaveragex	|	fBodyAcc-mean()-X	|	Body acceleration	|	frequency	|	average	|	
|	frequencybodyaccaveragey	|	fBodyAcc-mean()-Y	|	Body acceleration	|	frequency	|	average	|	
|	frequencybodyaccaveragez	|	fBodyAcc-mean()-Z	|	Body acceleration	|	frequency	|	average	|	
|	frequencybodyaccstandarddevx	|	fBodyAcc-std()-X	|	Body acceleration	|	frequency	|	standard deviation	|	x
|	frequencybodyaccstandarddevy	|	fBodyAcc-std()-Y	|	Body acceleration	|	frequency	|	standard deviation	|	y
|	frequencybodyaccstandarddevz	|	fBodyAcc-std()-Z	|	Body acceleration	|	frequency	|	standard deviation	|	z
|	frequencybodyaccjerkaveragex	|	fBodyAccJerk-mean()-X	|	Body acceleration jerk	|	frequency	|	average	|	x
|	frequencybodyaccjerkaveragey	|	fBodyAccJerk-mean()-Y	|	Body acceleration jerk	|	frequency	|	average	|	y
|	frequencybodyaccjerkaveragez	|	fBodyAccJerk-mean()-Z	|	Body acceleration jerk	|	frequency	|	average	|	z
|	frequencybodyaccjerkstandarddevx	|	fBodyAccJerk-std()-X	|	Body acceleration jerk	|	frequency	|	standard deviation	|	x
|	frequencybodyaccjerkstandarddevy	|	fBodyAccJerk-std()-Y	|	Body acceleration jerk	|	frequency	|	standard deviation	|	y
|	frequencybodyaccjerkstandarddevz	|	fBodyAccJerk-std()-Z	|	Body acceleration jerk	|	frequency	|	standard deviation	|	z
|	frequencybodygyroaveragex	|	fBodyGyro-mean()-X	|	Body Gyro	|	frequency	|	average	|	x
|	frequencybodygyroaveragey	|	fBodyGyro-mean()-Y	|	Body Gyro	|	frequency	|	average	|	y
|	frequencybodygyroaveragez	|	fBodyGyro-mean()-Z	|	Body Gyro	|	frequency	|	average	|	z
|	frequencybodygyrostandarddevx	|	fBodyGyro-std()-X	|	Body Gyro	|	frequency	|	standard deviation	|	x
|	frequencybodygyrostandarddevy	|	fBodyGyro-std()-Y	|	Body Gyro	|	frequency	|	standard deviation	|	y
|	frequencybodygyrostandarddevz	|	fBodyGyro-std()-Z	|	Body Gyro	|	frequency	|	standard deviation	|	z
|	frequencybodyaccmagaverage	|	fBodyAccMag-mean()	|	Body acceleration magnitude	|	frequency	|	average	|	n/a
|	frequencybodyaccmagstandarddev	|	fBodyAccMag-std()	|	Body acceleration magnitude	|	frequency	|	standard deviation	|	n/a
|	frequencybodybodyaccjerkmagaverage	|	fBodyBodyAccJerkMag-mean()	|	Body body acceleration jerk magnitude	|	frequency	|	average	|	n/a
|	frequencybodybodyaccjerkmagstandarddev	|	fBodyBodyAccJerkMag-std()	|	Body body acceleration jerk magnitude	|	frequency	|	standard deviation	|	n/a
|	frequencybodybodygyromagaverage	|	fBodyBodyGyroMag-mean()	|	Body body acceleration gyro magnitude	|	frequency	|	average	|	n/a
|	frequencybodybodygyromagstandarddev	|	fBodyBodyGyroMag-std()	|	Body body acceleration gyro magnitude	|	frequency	|	standard deviation	|	n/a
|	frequencybodybodygyrojerkmagaverage	|	fBodyBodyGyroJerkMag-mean()	|	Body body acceleration gyro jerk magnitude	|	frequency	|	average	|	n/a
|	frequencybodybodygyrojerkmagstandarddev	|	fBodyBodyGyroJerkMag-std()	|	Body body acceleration gyro jerk magnitude	|	frequency	|	standard deviation	|	n/a


