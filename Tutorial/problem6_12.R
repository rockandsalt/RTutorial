data.6.12 <- read.csv("./Excel/Problem6_12.csv", colClasses = c('factor','factor','numeric'))

result.6.12 <- aov( LayerThickness ~ Deposition+FlowRate+Deposition*FlowRate, data=data.6.12 )

summary(result.6.12)

regression = lm(LayerThickness ~ Deposition+FlowRate+Deposition*FlowRate,data=data.6.12)

summary(regression)