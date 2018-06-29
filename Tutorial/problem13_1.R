data.13.1 <- read.csv("./Excel/Problem13_1.csv", colClasses = c('factor','factor','numeric'))

result.13.1<- aov( measurement ~ Error(part*operator), data=data.13.1 )

summary(result.13.1)