data.5.8 <- read.csv("./Excel/Problem5_8.csv", colClasses = c('factor','factor','numeric'))

result.6.36 <- aov( strength ~ Machine*Operator, data=data.5.8 )

summary(result.6.36)