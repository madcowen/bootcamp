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

#B.3.4. Matrix multiplication, finding inverses of matrices
(M <- matrix(1:4, ncol=2, byrow=T))
(Minv <- solve(M))
M %*% Minv
Minv %*% M

#Factors
(Treatment <- factor(rep(c("Ctrl","Med","High"), each=3)))
stripchart(1:9~Treatment)

#B.6.2. Dependent iterations
gens <- 10
output <- numeric(gens + 1)
output[1] <- 25
##the three commands above create a vector of 11 elements to represent the number of individuals. It starts with 25 individuals and the for loop below will fill in the remaining steps. 
for (t in 1:gens) output[t+1] <- output[t] + round(rnorm(n=1, mean=0, sd=2),0)
output
##round() takes as input the (vector of) integer(s), the number of decimal places

