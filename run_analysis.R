# Script run_analysis.R creates a tidy data set from a number of files.
#
# It also produces a summary, whre the average of all mean and standard
# deviation statistics are grouped by activity and experimental subject. 
#
# See the associated README.md and CODEBOOK.md for details

#load libraries
  library(dplyr)
  library(data.table)
  library(readr)
  setwd("C:/Users/trish/Desktop/coursera/rprogram/Getting and cleaning")
#  subtrain<-read_table(subtrainfile,col_names=FALSE)
#  subtest<-read_table(subtestfile,col_names=FALSE)
# load training datasets
  xtrainfile="getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt"
  ytrainfile="getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt"
  xtrain<-read_table(xtrainfile,col_names=FALSE)
  ytrain<-read_table(ytrainfile,col_names=FALSE)
  # load test datasets
  xtestfile="getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt"
  ytestfile="getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt"
  xtest<-read_table(xtestfile,col_names=FALSE)
  ytest<-read_table(ytestfile,col_names=FALSE)
  print("HERE 21")   
#
# load description of activity types
  actlabfile="getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt"
  actlabels<-read_table(actlabfile,col_names=FALSE)
 
#load given description of the data variables
  featuresfile="getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt"
  features<-read_table(featuresfile,col_names=FALSE)
#load subject data variable
    subtestfile="getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt"
    subtrainfile="getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt"
    subtrain<-read_table(subtrainfile,col_names=FALSE)
    subtest<-read_table(subtestfile,col_names=FALSE)
  # Merge test and train datasets
   
  totaldataset<-rbind(xtrain, xtest)
  totalsub<-rbind(subtrain, subtest)
  totaly<-rbind(ytrain, ytest)
  
 rmnumbers<-function(s){
   gsub("^[0-9]* ","" ,s)
 }
 
  cnames<-lapply(features$X1, rmnumbers)
  colnames(totaldataset)<-cnames
  colnames(totalsub)<-"subject"
#  
#  Add activity labels to total dataset
#  
    activity<-inner_join(totaly,actlabels) 
    colnames(activity)<-c("Code", "Description")
    totaldataset1<-cbind(activity$Description,totaldataset) 
    colnames(totaldataset1)[1]<-"activity"
  # Add subject to totaldataset
  totaldataset2<-cbind(totalsub,totaldataset1 )
#
# Identify rows where mean() and std() were calculated
  cn2<-colnames(totaldataset2)
  reqcol<-grep("mean\\(\\)|std\\(\\)|subject|activity", cn2)
#  
  totaldataset3<-totaldataset2[, reqcol]
  oldnames<-colnames(totaldataset3)
#  write_lines(as.list(oldnames), "oldnames.csv", append=FALSE)
#
# Create new labels for signals
#
    outname<-function(s){
    a<-gsub("^f","frequency",s)
    b<-gsub("^t","time",a)
    c<-gsub("-mean\\(\\)","average",b)
    d<-gsub("-std\\(\\)","standarddev",c)
    e<-gsub("-Y","y",d)
    f<-gsub("-X","x",e)
    g<-gsub("-Z", "z",f)
    h<-tolower(g)
    return(h)
  }
  outnames<-lapply(oldnames, outname)
  colnames(totaldataset3)<-outnames
# find mean of dataset grouped by activity and subject 
  output<-totaldataset3%>%group_by(subject, activity)%>%summarise_all(mean)
  outputfile<-"meanofsignalsgroupedbyactivityandsubject.csv"
# print output to file
  write_csv(output,outputfile, append=FALSE)

  