Getting And Cleaning Data Project
=================================

This repository contains this REAMDE (REAMDE.md), a codebook and an R script for the project from Coursera, Getting and Cleaning data.

https://class.coursera.org/getdata-009/

Project instructions
-------------------

> The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected. 

> One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

> http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

> Here are the data for the project:

> https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

 > You should create one R script called run_analysis.R that does the following. 

  > 1. Merges the training and the test sets to create one data set.
  > 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  > 3. Uses descriptive activity names to name the activities in the data set
  > 4. Appropriately labels the data set with descriptive variable names. 
  > 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

How to execute this project
----------------------------

1. Set your working directoy for your R environment/tool to be on the same path as the dataset "UCI HAR Dataset" folder. More details on first line of run_analysis.R script.

2. Execute run_analysis.R.


Outputs produced
----------------
* Tidy dataset file `tidy_dataset.txt` (tab-delimited text).
This output can be loaded in R using the following line:

> read.table("tidy_dataset.txt")

Tidy Dataset Justification
--------------------------

 It is in a wide form because I find it easier to perform analysis with a wider variety of languages than just R.

This is a tidy data set because is achieving all the characteristics of a data set:

1. Each variable you measure should be in one column.
**Justification:** There is no more than one measure per column.

2. Each different observation of that variable should be in a different row.
**Justification:** There is no more than one observation of the SAME variable per row.

3. There should be one table for each "kind" of variable.
**Justification:** We have only one table (dataset) for all the variables that are measuring relations with the subjects movement in relation with some activty.

4. If you have multiple tables, they should include a column in the table that allows them to be linked.
**Justification:** s we have only one table, this doesn't apply.


Some other important charactersitiques:


5. Include a row top at the top of each file with variable names.
**Justification:** The variable names (column labels) are in the data set at the top.

6. Make variable names human readable AgeAtDiagnosis instead of AgeDx.
**Justification:** The variable names (column labels) are understandable and human readable. Doesn't contain any ilegal character (i.e. -, ., etc). And they follow a Camel case approach (i.e. fooVar). I have not extended the abreviature because is understandable enough and writing the full word will be counterproductive.

7. In general data should be saved in one file per table.
**Justification:** There is only one table in this file.