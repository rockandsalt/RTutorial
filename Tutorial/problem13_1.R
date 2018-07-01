data.13.1 <- read.csv("./Excel/Problem13_1.csv", colClasses = c('factor','factor','numeric'))

result.13.1<- lmer( measurement ~ (1|part)+(1|operator)+(1|part:operator), data=data.13.1 )

summary(anova(result.13.1))