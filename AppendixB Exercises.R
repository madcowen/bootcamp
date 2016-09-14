#B.1. Help functions
##help pages provide a description of, usage, arguments, and details about the function or object.
##also includes the "value" (the output) and some examples
?mean
help(mean)

#B.2. Assignment
#use the arrox " <- " to assign what is on the right of the arrow to what is on the left
a <- a+1
a
b <- a
b
#can separate commands with ";"
a+a;a+b;a <- a+b;a

#B.3 Data Structures
#B.3.1 Vectors
# use "c()" to combine elements into a vector
vectorExample <- c(1,2,3,4)
#vectors are columns or rows of scalars OR characters OR logical
#if one of the elements is character, it defaults to that. 
vectorExample <- c(1,"hello") #prints "1"  "hello"
vectorExample <- c(1, TRUE) #prints: 1 1
vectorExample <- c(5, TRUE) #prints: 5 1
vectorExample <- c("hello", FALSE) #prints "hello"  "FALSE"

#Sequences are vectors but they are ordered or you can specify their lengths or the intervals etween their elements
seq(1,3)
seq(1,3,by=0.4)
seq(1,3,length=4)
c(1,2,3,4,5,6)/2

#B.3.2 info you can get about vectors
Y <- c(4,5,6,7,8,89)
sum(Y)
mean(Y)
max(Y)
min(Y)
length(Y)
summary(Y) #this will give you the max, min, median, and quartiles
class(Y)
#you can test every element of the vector and it will print the results as a vector
Y>10
Y <- Y>10
Y #now prints: FALSE FALSE FALSE FALSE FALSE  TRUE
#tests include >, <, ==, >=, <=, !=, in
#can do algebra with vectors, again operating on the elements of the vector and printing/returning a vector
#if you do algebra on vectors of unequal length, R will recycle the shorter vector to match the length of the longer vector, and if the longer vector is not a multiple of the shorter one, it will return a warning sign because not all elements were used.
a <- c(1,2,3)
b <- c(1,2)
a*b #prints: 1 4 3 ##it did not have an element from b to multiply with "3" from a. Also printed a warning.

#B.3.3 Extraction and missing values from vectors
#use brackets to extract from a vector using the index of the element
#can also extract given a condition
Y[1]
Y[Y>mean(Y)]
#extract given NA: is.na(), !is.na(), na.exclude() (same as !is.na())
#some functions have na.rm in them
a <- c(1,NA, NA, 4)
mean(a) #won't work
mean(a, na.rm=TRUE) 

#B.3.4. Matrices are 2D sets of elements (columns and rows)
#can make a matrix by specifying number of columns or rows
matrix(letters[1:4],ncol=2)
#automatically fills in down columns, unless you tell it otherwise:
matrix(letters[1:4],ncol=2,byrow=TRUE)

#Extraction of elements from matrices
#specify the row and column
M <- matrix(letters[1:4],ncol=2)
M[2,2]
#or just the row OR column you want. make sure to keep the comma in the brackets!
M[,2] #prints the second column

#Matrix multiplication, finding inverses of matrices
(M <- matrix(1:4, ncol=2, byrow=T))
(Minv <- solve(M))
M %*% Minv
Minv %*% M

#B.3.5 Data Frames are also 2D but columns can be different data types!
#make 'em by labelling each column
data.frame(first = c(1,2,3), second = c("one", "two", "three"), c(2,2,2))
#in the data frame above, the third column won't have a pretty name because I didn't specify one


#Factors are a class of data. You have factor levels (which R orders alphabetically), and elements in the column or vector or whatever are examples of these levels
(Treatment <- factor(rep(c("Ctrl","Med","High"), each=3)))
#you can rearrange the levels though
stripchart(1:9~Treatment)
Treatment <- factor(rep(c("Ctrl","Med","High"), each=3),levels=c("Control","Medium","High"))
stripchart(1:9~Treatment)

#Lists are structures that can be comprised of different types of elements, including scalars, vectors, factors, characters, and even data frames and matrices
#You extract components in the list with brackets
#you can add an extra set of brackets to extract a subset of a component (for example, one element in a vector in a list)
listEx <- list(a = c(1,2,23), b = "hello", M)
listEx$a        #prints: 1 2 23
listEx[1]       #prints: $a; 1 2 23
listEx[[1]]     #prints: 1 2 23
listEx[[1]][2]  #prints: 2

#B.4 Functions!
#B.4.1 Writing your own functions
#give the input variables it takes, and if you specify a value for a variable, that will be the default
BogusMean <- function(x, cheat = 0.05) {
  SumOfX <- sum(x)
  n <- length(x)
  trueMean <- SumOfX/n
  (1+cheat)*trueMean
}
RealSales <- c(100,200,300)
mean(RealSales)      #prints 200
BogusMean(RealSales) #prints 210

#B.6.2. Dependent iterations (use for loops!)
gens <- 10
output <- numeric(gens + 1)
output[1] <- 25
##the three commands above create a vector of 11 elements to represent the number of individuals. It starts with 25 individuals and the for loop below will fill in the remaining steps. 
for (t in 1:gens) output[t+1] <- output[t] + round(rnorm(n=1, mean=0, sd=2),0)
output
##round() takes as input the (vector of) integer(s), the number of decimal places

