data.8.11 <- read.csv("./Excel/Problem8_11.csv", colClasses = c('factor','factor','factor','factor','factor','numeric'))

fit = aov(Value ~ A*B*C*D*E, data = data.8.11)

result = summary(fit)

listOfSS = result[[1]][, 'Sum Sq']

totalSS = Reduce("+",listOfSS)

for (SS in listOfSS){
  print(SS/totalSS * 100) 
}

fitsmall = lm(Value ~ A+B+C+D+E, data = data.8.11)

anova(fit,fitsmall)