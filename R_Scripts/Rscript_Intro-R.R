###############################################################
######                  Introduction to R                ######
#########    Osama Mahmoud (o.mahmoud@bristol.ac.uk)   ########
##############     Website: www.osmahmoud.com    ##############
#################      14 November 2019       #################

######################################
# Slide 7 - Help

help.search("sum")                  # search by topic
help(sum)                           # search for usage function
?sum                                # alternative for previous line
example(sum)                        # show examples for a function
demo()                              # show demos for all functions
demo(topic = "lm.glm", package = "stats") # show demo for a specific topic
help.start()                        # search web browser

######################################
# Slide 8 - Assign values

w <- 100                            # assign weight value
h <- 1.75                           # assign height value
BMI <- w/(h^2)                      # calculate BMI
BMI

######################################
# Slide 9 - Vectors

x <- c(2,4,6)
x

days <- c("Monday", "Thursday")
days

x <- 3:5
x

x <- seq(from=10, to=20, by=2)
x

x <- rep(5, times=3)
x

x <- rep(c(1,2,3), each=2)
x

######################################
# Slide 10 - Indexing vector elements

x <- 11 : 20
x
x [3]

x <- seq(0, 1, by=0.1)
x
x [c(1, 2, 5)]

x <- 1 : 5
x [-2]

x <- c(1, 3, 5, 7, 11, 13)
x [-(1 : 3)]

######################################
# Slide 11 - Logical values
3 <= 5
TRUE + TRUE + FALSE
x <- c(1,2,3,4,5); x < 4
sum(x < 4)
any(x < 4)                         # Is there 'any' of the x elements < 4?
all(x < 4)                         # Are 'all' of the x elements < 4?
which(x < 4)                       # Which indices of the x elements whose value is satisfying the given boolean statement?

######################################
# Slide 12 - Missing values

x <- c(2, -1, NA, 5, 0); any(is.na(x))
x[10]

sum(x)
NA & TRUE
NA | TRUE

sum(x, na.rm = TRUE)
na.omit(x)

######################################
# Slide 13 - factor class

Groups <- factor(c("Treatment", "Control", "Treatment",
                   "Control", "Control"))
Groups

# Practical Example: check mode, class, and convert Groups to numerical form
mode(Groups)
class(Groups)
as.numeric(Groups)

######################################
# Slide 15 - Concatenation of structures

Patient <- c(102, 105); gender <- factor(c("F", "M"))
Heart.R <- c(83, 78)
(Rates <- cbind(Patient, Heart.R))
class(Rates)

HeartData <- as.data.frame(Rates)
class(HeartData)

# add the vector gender to data frame Rates
cbind(Rates, gender)
cbind(HeartData, gender)

######################################
# Slide 16 - Data frames

participant <- c(1:4); group <- c("T", "C", "C", "T")
age <- c(22, 18, 33, 45); BMI <- c(25, 18, 32, 36)
(MyData <- data.frame(participant, group, age, BMI))

# Practical Example: structure and attributes of a data frame
str(MyData)
attributes(MyData)

######################################
# Slide 17 - Data frames

MyData$participant <- MyData$participant + 100
MyData

colnames(MyData) <- c("Patient", "Treat.", "Age", "BMI")
MyData[1:2,]

rownames(MyData) <- c("P1", "P2", "P3", "P4")
MyData

######################################
# Slide 18 - Merging of data frames

merge(MyData, HeartData)
merge(MyData, HeartData, all = TRUE)

# Practical Example: merge data frames: (a) with 'all.x=TRUE'; (b) with 'all.y=TRUE'
merge(MyData, HeartData, all.x = TRUE) # extra rows are added to the output, one for each row in x ('MyData' in this example) that has no matching row in y
merge(MyData, HeartData, all.y = TRUE) # extra rows are added to the output, one for each row in y that has no matching row in x

######################################
# Slide 19 - Import data sets

data(iris); head(iris)
iris[c(7,11),]
iris[,3:5]

getwd()                      # Show current working directory
setwd("YOUR_DESIRED_PATH")   # change working directory

######################################
# Slide 20 - Import & export data sets

list.files(getwd())          # List all files in a given path (here, the current working directory is given - however, any other path can be used)

write.csv(iris, "Mydata.csv", row.names = FALSE)        # export data sets to csv
write.table(iris, "Mydata.txt", row.names = FALSE)      # export data sets to txt

Im.data1 = read.csv(file = "Mydata.csv", header = TRUE) # import data from csv file
Im.data2 = read.table("Mydata.txt", header = TRUE)      # import data from txt file

attributes(iris); str(iris)                             # Get more information on a dataset
sapply(iris, class); lapply(iris, class)                # Show class of each variable