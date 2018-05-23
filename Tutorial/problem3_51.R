

data.3.51 <- read.csv("./Excel/Problem3_23.csv", colClasses = c('factor','numeric'))

result.3.51 <- aov( Life ~ Fluid.Type, data=data.3.51)

summary(result.3.51)

kw = kruskal.test(Life ~ Fluid.Type, data=data.3.51)

summary(kw)

view(data.3.51)