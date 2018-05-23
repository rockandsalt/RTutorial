data.3.34 <- read.csv("./Excel/Problem3_34.csv", colClasses = c('factor','numeric'))

result.3.34 <- aov( Temperature ~ Oven, data=data.3.34)

summary(result.3.34)
