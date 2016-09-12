#Matrix multiplication, finding inverses of matrices
(M <- matrix(1:4, ncol=2, byrow=T))
(Minv <- solve(M))
M %*% Minv
Minv %*% M

#Factors
(Treatment <- factor(rep(c("Ctrl","Med","High"), each=3)))
stripchart(1:9~Treatment)

