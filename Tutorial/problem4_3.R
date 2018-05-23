
data.4.3 <- read.csv("./Excel/Problem4_3.csv", colClasses = c('factor','factor','numeric'))

result.3.3 <- aov( Strength ~ Chemical + Bolt, data=data.4.3)

summary(result.3.3)

aggdata <-aggregate(data.4.3$Strength, by=list(chem = data.4.3$Bolt),FUN=mean)