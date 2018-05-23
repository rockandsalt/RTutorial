
my_data = read.csv("./Excel/Problem3_10.csv",colClasses = c("factor","numeric"))

result3_10 = aov(Observations ~ Cotton , data = my_data)

summary(result3_10)

out = LSD.test(result3_10,"Cotton",group=TRUE,console=TRUE)

