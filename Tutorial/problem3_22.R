
data.3.22 <- read.csv("./Excel/Problem3_22.csv", colClasses = c('factor','numeric'))

result.3.22 <- aov( Resp.time ~ Circuit.type, data=data.3.22)

summary(result.3.22)

out = LSD.test(result.3.22,"Circuit.type",group=TRUE,console=TRUE)

aggdata <-aggregate(data.3.22$Resp.time, by=list(ct = data.3.22$Circuit.type),FUN=mean)