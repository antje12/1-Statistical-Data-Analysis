# lalaland
# Upload the data
library(readxl)
lalaland <- read_excel("D:\\Dropbox\\SDU\\Code\\Stat\\R programmering 9\\lalaland_imports.xlsx")

imp <- cor(lalaland[, c(2:6)])
round(imp,2)
fit <- lm(Imp~MS+GDP+USD+Interest_Rent, data = lalaland)
summary(fit)

# MS             -0.01965    0.73298  -0.027  0.97965   
# har den h�jeste p v�rdi 0.97965
# vi fjerner derfor denne og pr�ver igen
imp <- cor(lalaland[, c(2,4,5,6)])
fit <- lm(Imp~GDP+USD+Interest_Rent, data = lalaland)
summary(fit)

# USD           -1.14136    1.20656  -0.946 0.380689    
# har den h�jeste p v�rdi 0.380689
# vi fjerner derfor denne og pr�ver igen
imp <- cor(lalaland[, c(2,4,6)])
fit <- lm(Imp~GDP+Interest_Rent, data = lalaland)
summary(fit)

# Der er nu ingen p v�rdi tilbage h�jere end den kritiske v�rdi

# babies
# Upload the data
babies <- read.csv("D:\\Dropbox\\SDU\\Code\\Stat\\R programmering 9\\babies.csv", header = TRUE, sep = ",")

# weight based on smoking
babyFit <- lm(bwt~smoke, data = babies)
summary(babyFit)

# weight based on parity (1 = first born)
babyFit <- lm(bwt~parity, data = babies)
summary(babyFit)

# weight by all data
babyFit <- lm(bwt~gestation+parity+age+height+weight+smoke, data = babies)
summary(babyFit)
