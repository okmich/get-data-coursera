# get-data-coursera
The course project for the Coursera Specialization Course - Getting and Cleaning Data

The process for generating the tidy data set is as follows;

## Generating the complete data set from test and training datasets
1. read the content of the x test dataset file using the scan function
2. read the content of the x train dataset file using the scan function
3. transform the test and train vectors into matrices using tha matrix funtion as matrix(v, ncol=561)
4. now merge the two datasets using the rbind function and call it x


## we will use the features.txt file to get the list of descriptive fields or variable name

1. we need to extract the rows that apply to mean and std from the features file using the grepl() - grepl('mean()', feat_mat[,2]) | grepl('std()', feat_mat[,2])
2. we need only the index column
3. first, create a logical vector that statisfies the condition
4. Extracts only the measurements on the mean and standard deviation for each measurement in x
    x <- x[,feat_idx]

## Test and training class labels
1. Get the that by reading from the y_test.txt and y_train.txt files from ther respective folders
2. merge both into one data label set using rbind()


##  read the activity label into act_label
##  merge y and act_label to form a labelled classification matrix

## read the subject test and training dataset 

## give the subject vector a name

## create the variable that will form descriptive variable names

## now label the data set with the descriptive variable names.