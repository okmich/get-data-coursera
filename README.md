# get-data-coursera
The course project for the Coursera Specialization Course - Getting and Cleaning Data

The process for generating the tidy data set is as follows;

## Generating the complete data set from test and training datasets
1. read the content of the x test dataset file using the scan function
2. read the content of the x train dataset file using the scan function
3. transform the test and train vectors into matrices using tha matrix funtion as matrix(v, ncol=561)
4. now merge the two datasets using the rbind function and call it x

## Feature variables
we will use the features.txt file to get the list of descriptive fields or variable name
1. we need to extract the rows that apply to mean and std from the features file using the grepl() - grepl('mean()', feat_mat[,2]) | grepl('std()', feat_mat[,2])
2. we need only the index column
3. first, create a logical vector that statisfies the condition. Call it feat_idx
4. Extracts only the measurements on the mean and standard deviation for each measurement in x
    x <- x[,feat_idx]
5. format the names to form a more descriptive variable names
    header.names <- feat_mat[feat_idx,2]
    header.names <- gsub('^t', 'Time.', header.names)
    header.names <- gsub('^f', 'Frequency.', header.names)
    header.names <- gsub('BodyBody', 'Body', header.names)
    header.names <- gsub('Body', 'Body.', header.names)
    header.names <- gsub('-std()', '', header.names)
    header.names <- gsub('-mean()', '', header.names)
    header.names <- gsub('\\-[X|Y|Z]', '', header.names)
    header.names <- gsub('\\(\\)', '', header.names)

## Test and training class labels
1. Get the that by reading from the y_test.txt and y_train.txt files from ther respective folders
2. merge both into one data label set using rbind()


##  Activity fields and name
1. read the activity label into act_label from the file activity_labels.txt
2. using the merge function, join y and act_label using V1 from y and V1 from act_label. Name the resulting variable as y_label
3. label y_label by giving the variable a good name - names(y_label) <- c('activity.code','activity.desc')

## Subjects
1. Read the subject data files - subject_test.txt and subject_train.txt from their respective folders.
2. merge both into a single character vector called s
3. label s with the form names(s) <- 'subject'


### now label the data set with the descriptive variable names.