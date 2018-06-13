data.5.34 <- read.csv("./Excel/Problem5_34.csv", colClasses = c('factor','factor','factor','numeric'))

result.5.34 <- aov( Surface.finish ~ Feed.Rate + Depth.cut + Block + Feed.Rate*Depth.cut, data=data.5.34 )

summary(result.5.34)

#aggdata <-aggregate(data.5.4$Surface.finish, by=list(fr = data.5.4$Feed.Rate),FUN=mean)
