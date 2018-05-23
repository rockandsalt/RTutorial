

data.4.7 <- read.csv("./Excel/Problem4_7.csv", colClasses = c('factor','factor','numeric'))

result.4.7 <- aov( Hardness ~ Tip + Coupon, data=data.4.7)

summary(result.4.7)

out = LSD.test(result.4.7,"Tip",group=TRUE,console=TRUE)