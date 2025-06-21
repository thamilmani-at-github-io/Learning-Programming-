#Install RMysql Package ...

library(RMySQL)
library(DBI)

drv <- dbDriver("MySQL")
mysqlconnection = dbConnect(drv,username='root',password='',dbname='test1',host='localhost')
dbListTables(mysqlconnection)

ItemMaster <- dbSendQuery(mysqlconnection,"select * from items")
data.frame <- fetch(ItemMaster)
print(data.frame)

Transaction <- dbSendQuery(mysqlconnection,"select * from Transaction")
data.frame <- fetch(Transaction)
print(data.frame)

TransactionAmount <- dbSendQuery(mysqlconnection,"select T.UID,I.ItemCode,I.ItemName,T.ItemQty,I.ItemRate,
                                (I.ItemRate * T.ItemQty)as NetAmount
                                 from Transaction T inner join Items I on I.ItemCode = T.ItemCode ")
data.frame <- fetch(TransactionAmount)
print(data.frame)

ItemAmount <- dbSendQuery(mysqlconnection,"select I.ItemCode,I.ItemName,
                                sum((I.ItemRate * T.ItemQty))as NetAmount
                                from Transaction T inner join Items I on I.ItemCode = T.ItemCode 
                                group by I.ItemCode,I.ItemName
                          ")
data.frame <- fetch(ItemAmount)
print(data.frame)