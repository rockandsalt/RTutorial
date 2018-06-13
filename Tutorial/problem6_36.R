data.6.36 <- read.csv("./Excel/Problem6_36.csv", colClasses = c('factor','factor','factor','factor','numeric'))

result.6.36 <- aov( Resistivity ~ A*B*C*D, data=data.6.36 )

summary(result.6.36)

regression = lm(Resistivity ~ A*B*C*D,data=data.6.36)

summary(regression)




