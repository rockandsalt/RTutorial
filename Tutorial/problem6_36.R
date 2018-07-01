data.6.36 <- read.csv("./Excel/Problem6_36.csv", colClasses = c('factor','factor','factor','factor','numeric'))

result.6.36 <- aov( Resistivity ~ A*B*C*D, data=data.6.36 )

tmp <- qqnorm( coef(result.6.36) )
qqline( coef(result.6.36) )
text( tmp$x, tmp$y, names(coef(result.6.36)), pos=3 )

summary(result.6.36)

regression = lm(Resistivity ~ A*B,data=data.6.36)

lnRes = cbind(data.6.36)
lnRes$Resistivity = as.numeric(log(data.6.36$Resistivity))
as.numeric(lnRes$Resistivity )

result2.6.36 <- aov( Resistivity ~ A*B*C*D, data=lnRes )



tmp <- qqnorm( coef(result2.6.36 ) )
qqline( coef(result2.6.36 ) )
text( tmp$x, tmp$y, names(coef(result2.6.36 )), pos=3 )





