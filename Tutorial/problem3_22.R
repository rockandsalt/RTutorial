
data.3.23 <- read.csv("./Excel/Problem3_23.csv", colClasses = c('factor','numeric'))

result.3.23 <- aov(Life ~ Fluid.Type , data=data.3.23)

summary(result.3.23)

