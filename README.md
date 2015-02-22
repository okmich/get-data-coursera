# get-data-coursera
The course project for the Coursera Specialization Course - Getting and Cleaning Data

The process for generating the tidy data set is as follows;

# read the content of the x test dataset file using the scan function

# read the content of the x train dataset file using the scan function


# transform the test and train vectors into matrices using tha matrix funtion

# now merge the two datasets using the rbind function


# We want to first find the mean and std for each measure.
# we will use the features.txt file to get the list of fields 

# we need to extract the rows that apply to mean and std from the features file
# we need only the index column
# first, create a logical vector that statisfies the condition

# now get the index col as a vector


# Extracts only the measurements on the mean and standard deviation for each measurement in x


## get the test and training class labels

## merge both into one data label set


# read the activity label into act_label

# merge y and act_label to form a labelled classification matrix

# give the variables a good name


# read the subject test and training dataset 

# give the subject vector a name

# create the variable that will form descriptive variable names

# now label the data set with the descriptive variable names.