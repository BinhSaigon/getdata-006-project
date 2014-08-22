getdata-006-project
Code: run_analysis.R
===================
Before running this code, you should download run_analysis.R into current working directory.
Code description: 
                  run_analysis <- function(fileUrl = NULL, dataAlready = TRUE,...)
Dataset issues:
                  Datasets should be downloaded and extracted in to ./data from the Url:
                  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Working directory should be: ./data/UCI HAR Dataset

[RUNNING CODE]
1./ If you have already downloaded project's datasets and extracted in [WORKING DIR]/data correctly, running code is quite easy as:

>source("run_analysis.R")
>run_analysis()
>df <- run_analysis() ##if you want to get back a dataframe referring to tidy datasets.

After running this code you should have a tidy dataset is ss-data-[My Name]-[Date Created].txt in your ./ dir.

2/ If you have no datasets or not be sure getting datasets correctly, please run code as below:

>source("run_analysis.R")
>run_analysis(dataAlready = FALSE)
>df <- run_analysis(dataAlready = FALSE) ##if you want to get back a dataframe referring to tidy datasets.

If you are running Mac OSX you should pass addtional param method = "curl"
>run_analysis(dataAlready = FALSE, method = "curl") ## for Mac OS X

3/ If default fileUrl is broken or changed, please tell the function what is the new fileUrl for getting data:

>source("run.analysis.R")
>newfileUrl <- https://.... ## the current changed fileUrl
>run_analysis(newfileUrl, dalaAlready = FALSE)
>df <- run_analysis(newfileUrl, dalaAlready = FALSE) ##if you want to get back a dataframe referring to tidy datasets.

[BUG]
In case of any unexpected halting when running code please check your current working dir for correct folder structure as described in top section.
