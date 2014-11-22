---
title: "README"
author: "LOTFI ALSOUKI"
date: "Saturday, November 22, 2014"
output: html_document
---

HI below the steps i followed to finish Gettign and cleaning Data course's project:

1- Reading the raw data,assignign them to R dataframes with the same raw files names (to keep things simple).

2-Reading Activity labels and features files without headers .

3-Giving a descreptive name to the variables in both training and testing test ,i got the same name 

used in featrues.csv

4-Joining the both training and test observations sets and removing the original after joining to

free the memory .

5-Assigning the descriptive name "SubjectID" to subject for both test and training sets

and then joining them togther in subject_total .

6-Assigning the descriptive name "Activity" to the Activities labels for both training and testing sets

and then joining them togther in y_total .

7-Giving a descreptive names to the the Activities in y_total from the activity labels dataframe

1->walking 2->.....

8-Getting the mean and std observations only from our data sets

I matched the observation text to find the word "std()" ,"mean" or "meanFreq"

whenever the check return positive TRUE i bind that column to  New_X_total

9-creating one dataframe contain in every row the subject id , the activity we are monitoring,and the 

observations for this activity for this person during the observation window .

10-Creating "meleted data" by melting all the data and leave only SubjectID and Activity into 

a dataframe "melted_Data" .

11-creating independent tidy data set with the average of each variable for each activity and each subject.

using ddply from plyr library .

12-finally writing the final tidy data to a txt file in the working directory with the name

"final_tidy_data.txt"

Note : I didn,t write a code to download the zip file and then unzip it because
 
 I assumed the raw data is in the working directory