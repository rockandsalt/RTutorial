data.8.6 <- read.csv("./Excel/Problem8_6.csv", colClasses = c('factor','factor','factor','factor','numeric','numeric'))

fit = aov(Response ~ A*B*C*D, data = data.8.6)

result = summary(fit)

listOfSS = result[[1]][, 'Sum Sq']

totalSS = Reduce("+",listOfSS)

for (SS in listOfSS){
 print(SS/totalSS * 100) 
}

fitsmall = lm(Response ~ A+B+C+D, data = data.8.6)

anova(fit,fitsmall)