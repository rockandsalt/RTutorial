
n = c(2,3,5)
s = c("aa", "bb", "cc") 
blue = c(TRUE, FALSE, TRUE) 

df = data.frame(n, s, blue)

result = rbind(df, c(5,"aa",3))
