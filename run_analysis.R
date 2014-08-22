run_analysis <- function(fileUrl = NULL, dataAlready = TRUE,...){

## Validate if data has already been placed in working dir, 
## data processing is implemented step-by-step.
  
  if (!dataAlready){
    ##code for downloading data from url and extracting to ./data
    ##"data" folder should be created in working dir after this chunk.
    if (!file.exists("data")){
      dir.create("data")
    }
    
    ##checking defaul Url, NULL = default Url
    if (is.null(fileUrl)){
      fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"  
    }
    
    ##download and extract data files into ./data folder
    print(paste("Please wait for downloading datasets from", fileUrl))
    filename <- "ss-data.zip"
    download.file(fileUrl, destfile = "ss-data.zip",...) ##should be passed method="curl" for MAC OSX
    print("Downloading has been completed.")
    print(paste("Filename ss-data.zip is created at", date()))
    print("Unzipping ss-data.zip into ./data folder.")
    unzip(filename, exdir="./data")
    print("Unzipping is completed")
  }
  
  filedir <- paste0("./", "data", "/UCI HAR Dataset")

##STEP 1: processing data variables
  print("STEP 1 is proceeding...")

  label <- read.table(paste0(filedir,"/activity_labels.txt"))
  colnames(label) <- c("id", "activity")
  
  feature <- read.table(paste0(filedir,"/features.txt"))
  colnames(feature) <- c("featureid", "featurename")
  
  ##get index of variables which contain word "mean" or "std : standard deviation
  mean.idx <- grep("mean", with(feature, featurename), ignore.case=TRUE)
  std.idx <- grep("std", with(feature, featurename), ignore.case=TRUE)
  
  ##cleaning variable names in feature dataframe: removing all "- , ()" and lowering cases
  feature$featurename <- tolower(gsub("[-]|[,]|[\\()]", "", feature[,"featurename"]))
  
##STEP 2: loading and processing "test" datasets
  print("STEP 2 is proceeding...test datasets...")
  
  ##loading "test" data set
  test.y <- read.table(paste0(filedir, "/test/y_test.txt"))
  colnames(test.y) <- "id"
  
  test.subj <- read.table(paste0(filedir, "/test/subject_test.txt"))
  colnames(test.subj) <- c("subjectid")
  test.subj <- paste0("TEST",test.subj[,1])
  
  test.x <- read.table(paste0(filedir, "/test/X_test.txt"))
  ##replaccing default V1..V561 with featurename of feature dataframe
  colnames(test.x) <- feature[, "featurename"]
  ##selecting only variables with "mean" and "std: standard deviation" value
  test.x <- data.frame(test.x[, c(mean.idx, std.idx)])
  
  ##replacing "test.y" activity numeric values by text values from activity_labels.txt file.
  cnt <- as.numeric(levels(factor(test.y[,1])))
  for (i in 1:length(cnt)){
    test.y[with(test.y, id==cnt[i]), "id"] <- as.character(label[label$id == cnt[i], "activity"])
  } ## end of for
  
  ##combining subjectid, activityname and feature variables into test.x dataframe
  colnames(test.y) <- "activity"
  test.x <- cbind(subjectid = test.subj, activity = test.y, test.x)
  
##STEP 3: loading and processing "train" datasets
  print("STEP 3 is proceeding...train datasets...")

  ##loading "train" data set
  train.y <- read.table(paste0(filedir, "/train/y_train.txt"))
  colnames(train.y) <- "id"
  
  train.subj <- read.table(paste0(filedir, "/train/subject_train.txt"))
  colnames(train.subj) <- c("subjectid")
  train.subj <- paste0("TRAIN",train.subj[,1])
  
  ##replacing "train.y" activity numeric values by text values from activity_labels.txt file.
  cnt <- as.numeric(levels(factor(train.y[,1])))
  for (i in 1:length(cnt)){
    train.y[with(train.y, id==cnt[i]), "id"] <- as.character(label[label$id == cnt[i], "activity"])
  } ## end of for
  
  train.x <- read.table(paste0(filedir, "/train/X_train.txt"))
  ##replaccing default V1..V561 with featurename of feature dataframe
  colnames(train.x) <- feature[, "featurename"]
  ##selecting only variables with "mean" and "std: standard deviation" value
  train.x <- data.frame(train.x[, c(mean.idx, std.idx)])
  
  ##combining subjectid, activityname and feature variables into ttrain.x dataframe
  colnames(train.y) <- "activity"
  train.x <- cbind(subjectid = train.subj, activity = train.y, train.x)

##STEP 4: FINALIZING TIDY DATASET
  ##Writing Samsung data into textfile as independent tidy dataset
  ##New file tidy_ss_[My Name]_[Date].txt will be created in working dir.
  print("STEP 4 is proceeding...cleaning data...")

  library(reshape)
  md.test <- melt(test.x, id=c("subjectid", "activity"))
  test.x <- cast(md.test, subjectid+activity~variable, mean)

  md.train <- melt(train.x, id=c("subjectid", "activity"))
  train.x <- cast(md.train, subjectid+activity~variable, mean)

  filename <- paste0("tidy_ss_", "PHAMTHAIBINH_", gsub("-", "", Sys.Date()),".txt")
  write.table(rbind(test.x, train.x), file=filename, row.names = FALSE)
  
  ##Extra Information for user
  print("It is DONE.")
  print(paste("Tidy dataset:", filename,"has been created at", date(), "."))
  print(paste("Total cols:", length(test.x), "." ))
  print(paste("Total rows:", length(test.x[,1])+length(train.x[,1]), "." ))
  rbind(test.x, train.x)
}
