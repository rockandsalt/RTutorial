
data.5.28 <- read.csv("./Excel/Problem5_28.csv", colClasses = c('factor','factor','factor','numeric'))

result.5.28 <- aov( StainShade ~ Formulation+Nwash+Booster+Nwash*Booster+Formulation*Nwash+Formulation*Booster + Formulation*Nwash*Booster, data=data.5.28)

summary(result.5.28)

