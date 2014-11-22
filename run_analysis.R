run_analysis<-function()
{
        
        #Note I didn,t write a code to download the zip file and then unzip it because
        #I assumed the raw data is in the working directory
       
        #Reading the raw data,assignign them to R dataframes with the same raw files names (to keep things simple)
        
        X_train<-read.table("UCI HAR Dataset/train/X_train.txt",header=TRUE)
        y_train<-read.table("UCI HAR Dataset/train/y_train.txt",header=TRUE)
        subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt",header=TRUE)
        X_test<-read.table("UCI HAR Dataset/test/X_test.txt",header=TRUE)
        y_test<-read.table("UCI HAR Dataset/test/y_test.txt",header=TRUE)
        subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt",header=TRUE)
        
        #Reading Activity labels and features files without headers
        
        activity_labels<-read.table("UCI HAR Dataset/activity_labels.txt",header=FALSE)
        features<-read.table("UCI HAR Dataset/features.txt",header=FALSE)
        
        #Giving a descreptive name to the variables in both training and testing test ,i got the same name 
        #used in featrues.csv
        
        names(X_test)<-features[,2]
        names(X_train)<-features[,2]
        
        #joining the both training and test observations sets and removing the original after joining to
        #free the memory
        
        X_total<-rbind(X_train,X_test)
        rm(X_train)
        rm(X_test)
        rm(features)
        
        #Assigning the descriptive name "SubjectID" to subject for both test and training sets
        #and then joining them togther in subject_total
        
        names(subject_test)<-c("SubjectID")
        names(subject_train)<-c("SubjectID")
        subject_total<-rbind(subject_train,subject_test)
        rm(subject_train)
        rm(subject_test)
        
        #Assigning the descriptive name "Activity" to the Activities labels for both training and testing sets
        #and then joining them togther in y_total
       
        names(y_test)<-c("Activity")
        names(y_train)<-c("Activity")
        y_total<-rbind(y_test,y_train)
        rm(y_test)
        rm(y_train)
        
        #Giving a descreptive names to the the Activities in y_total from the activity labels dataframe
        #1->walking 2->.....
        
        y_total$Activity<-activity_labels[y_total$Activity,2]
        
        #Getting the mean and std observations only from our data sets
        #I matched the observation text to find the word "std()" ,"mean" or "meanFreq"
        #whenever the check return positive TRUE i bind that column to  New_X_total
        
        New_X_total<-data.frame(X_total[,0])
       
        for(i in 1:ncol(X_total)){
                
                
                start<-as.numeric(regexec("-",names(X_total)[i]))+1
                
                end<-as.numeric(regexec(")",names(X_total)[i]))
                
                text<-substr(names(X_total)[i],start,end)
                
                if(text=="std()"||text=="mean()"||text=="meanFreq()"){
                        
               New_X_total<-cbind(New_X_total,X_total[,i])
                
               names(New_X_total)[ncol(New_X_total)]<-names(X_total)[i]
              
                }
        }
        
        #creating one dataframe contain in every row the subject id , the activity we are monitoring,and the 
        #observations for this activity for this person during the observation window
        
        final_data<-cbind(subject_total,y_total,New_X_total)
        rm(subject_total)
        rm(y_total)
        rm(X_total)
        rm(New_X_total)
        
        #Creating "meleted data" by melting all the data and leave only SubjectID and Activity into 
        #one dataframe "melted_Data"
        
        melted_Data<-melt(final_data,id.vars = c("SubjectID","Activity"))
        
        #creating independent tidy data set with the average of each variable for each activity and each subject.
        #using ddply from plyr library
        
        library(plyr)
        
        final_tidy_data<-ddply(melted_Data,c("SubjectID","Activity","variable"),summarize,mean=mean(value))
        
        #finally writing the final tidy data to a txt file in the working directory with the name
        #"final_tidy_data.txt"
        
        write.table(final_tidy_data,file = "final_tidy_data.txt",row.name=FALSE)
}