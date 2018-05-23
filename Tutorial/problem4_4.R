
data.4.4 <- read.csv("./Excel/Problem4_4.csv", colClasses = c('factor','factor','numeric'))

result.4.4 <- aov( bac ~ Solution + Days, data=data.4.4)

summary(result.4.4)