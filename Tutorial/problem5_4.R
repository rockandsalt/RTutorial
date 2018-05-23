data.5.4 <- read.csv("./Excel/Problem5_4.csv", colClasses = c('factor','factor','numeric'))

result.5.4 <- aov( Surface.finish ~ Feed.Rate + Depth.cut + Feed.Rate*Depth.cut, data=data.5.4 )

summary(result.5.4)

aggdata <-aggregate(data.5.4$Surface.finish, by=list(fr = data.5.4$Feed.Rate),FUN=mean)
