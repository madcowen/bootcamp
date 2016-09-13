#Matrix multiplication, finding inverses of matrices
(M <- matrix(1:4, ncol=2, byrow=T))
(Minv <- solve(M))
M %*% Minv
Minv %*% M

#Factors
(Treatment <- factor(rep(c("Ctrl","Med","High"), each=3)))
stripchart(1:9~Treatment)

#Dependent iterations
gens <- 10
output <- numeric(gens + 1)
output[1] <- 25
##the three commands above create a vector of 11 elements to represent the number of individuals. It starts with 25 individuals and the for loop below will fill in the remaining steps. 
for (t in 1:gens) output[t+1] <- output[t] + round(rnorm(n=1, mean=0, sd=2),0)
output
##round() takes as input the (vector of) integer(s), the number of decimal places

