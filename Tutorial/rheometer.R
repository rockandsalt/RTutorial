
library(DBI)
library(agricolae)
library(MASS)
library(pwr)

con <- dbConnect(RMySQL::MySQL(),user="root",password="PxCxdRsp8u4LoELDHgPa",dbname="mysql", host = "localhost")

query <- "SELECT pztdeagglomeration.ID, pztdeagglomeration.BPR, pztdeagglomeration.RPM, pzthoriba.D_50
FROM pztdeagglomeration
JOIN pzthoriba ON pztdeagglomeration.ID = pzthoriba.PowderID;"

rs <- dbSendQuery(con,query)


