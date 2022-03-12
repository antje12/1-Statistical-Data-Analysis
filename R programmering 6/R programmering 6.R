# load the data set
bridge <- read.csv("D:\\Dropbox\\SDU\\Code\\Stat\\R programmering 6\\storebaelt.csv", header = TRUE, sep = ";")

table <- table(bridge$Rabatform, bridge$Betalingsform)

probabilityTable <- prop.table(table)

chisq.test(bridge$Rabatform, bridge$Betalingsform)
