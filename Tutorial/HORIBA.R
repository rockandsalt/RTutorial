library(DBI)
library(agricolae)
library(MASS)
library(pwr)

con <- dbConnect(RMySQL::MySQL(),user="root",password="PxCxdRsp8u4LoELDHgPa",dbname="mysql", host = "localhost")

query <- "SELECT pztdeagglomeration.ID, pztdeagglomeration.BPR, pztdeagglomeration.RPM, pztdeagglomeration.Dispersant, pzthoriba.D_50
          FROM pztdeagglomeration
          JOIN pzthoriba ON pztdeagglomeration.ID = pzthoriba.PowderID;"
rs <- dbSendQuery(con,query)

data <- fetch(rs)

as.numeric(data$D_50)
as.factor(data$ID)
as.factor(data$BPR)
as.factor(data$RPM)
as.factor(data$Dispersant)

outlier <- c(4,13)
data = data[-outlier,]

result = aov(D_50 ~ BPR+RPM+Dispersant, data=data)

bc = boxcox(result)

summary(result)

lambda = bc$x[which.max(bc$y)]

out = LSD.test(result,"BPR",group=TRUE,console=TRUE)

#kw = kruskal.test(D_50 ~ BPR, data=data)

#kw2 = kruskal.test(D_50 ~ RPM, data=data)

on.exit(dbDisconnect(con))

boxplot(D_50 ~ ID, data = data, main = "ID vs D_50", xlab = "ID", ylab = expression(paste('D_50(',mu,'m)')))

boxplot(D_50 ~ BPR, data = data, log = "y", main = "BPR vs D_50",xlab = "BPR",ylab = expression(paste('D_50(',mu,'m)')))

boxplot(D_50 ~ RPM, data = data,log = "y", main = "RPM vs D_50",xlab = "RPM",ylab = expression(paste('D_50(',mu,'m)')))

LCA = data[which(data$ID == 3 | data$ID == 2),]

boxplot(D_50 ~ Dispersant, data = LCA,log = "y", main = "Dispersant vs D_50",xlab = "Dispersant",ylab = expression(paste('D_50(',mu,'m)')))

LCAResult = aov(D_50 ~ Dispersant, data = LCA)
LSD.test(LCAResult,"Dispersant",group=TRUE,console=TRUE)

summary(LCAResult)
