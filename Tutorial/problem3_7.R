
library("agricolae")

my_data = read.csv("./Excel/Problem3_7.csv",colClasses = c("factor","numeric"))

result3_7 = aov(Tensile.Strength ~ Mixing.technique , data = my_data)

summary(result3_7)

out = LSD.test(result3_7,"Mixing.technique",group=TRUE,console=TRUE)

summary(out)