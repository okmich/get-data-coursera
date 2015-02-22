# file fo the x_test dataset
x_test_file <- './UCI HAR Dataset/test/X_test.txt'
#file for the x train dataset
x_train_file <- './UCI HAR Dataset/train/X_train.txt'

# read the content of the x test dataset file using the scan function
x_test_vec <- scan(x_test_file, what=numeric())
# read the content of the x train dataset file using the scan function
x_train_vec <- scan(x_train_file, what=numeric() )

#transform the test and train vectors into matrices using tha matrix funtion
x_test <- matrix(x_test_vec, ncol=561, byrow=T)
x_train <- matrix(x_train_vec, ncol=561, byrow=T)

#now merge the two datasets using the rbind function
x <- rbind(x_test, x_train)

#We want to first find the mean and std for each measure.
#we will use the features.txt file to get the list of fields 
feat_file <- './UCI HAR Dataset/features.txt'

feat_mat <- read.delim(feat_file, header=FALSE, sep=' ')

# we need to extract the rows that apply to mean and std from the features file
# we need only the index column
# first, create a logical vector that statisfies the condition
meanorstd <- grepl('mean()', feat_mat[,2]) | grepl('std()', feat_mat[,2])
# now get the index col as a vector
feat_idx <- feat_mat[meanorstd,1]

# Extracts only the measurements on the mean and standard deviation for each measurement in x
x_extract <- x[,feat_idx]
