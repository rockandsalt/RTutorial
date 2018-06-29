data <- read.csv("./Excel/A1Data.csv",header=TRUE)

X1 = matrix(as.numeric(unlist(data)),nrow=nrow(data))

X2 = X1[,2]*X1[,3]

f = solve(t(X1)%*%X1)
l = t(X1)%*%X2

A = f%*%l

