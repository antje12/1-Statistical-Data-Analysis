# install excel library
install.packages("readxl")

# load excel library
library("readxl")

# load the excel file
egg <- read_excel("D:\\Dropbox\\SDU\\Code\\Stat\\R programmering 5\\egg.xls")

# a)
# sandsynlighed for - uendelig til 63
pnorm(63, mean=70, sd=12)
# 0.2798345
# sandsynlighed for - uendelig til 72
pnorm(72, mean=70, sd=12)
# 0.5661838
# sandsynlighed for 63 - 72
pnorm(72, mean=70, sd=12) - pnorm(63, mean=70, sd=12)
# 0.2863494 = 28.63% sandsynlighed for at et æg vejre mellem 63 og 72 gram

# b)
summary(egg)
sd(egg$Vægt)
# gennemsnit:
# Mean   : 69.93

# spredning:
# sd     : 11.66582

# kvartilsæt:
# 1st Qu.: 62.20
# Median : 70.35
# 3rd Qu.: 77.83

# 95% konfidens interval for middelværdien
# alfa = 5 så Z = 1.960

# funktion = x bar ± E
# x bar = observationen = middel værdien = mean = 69.93

# vi finder afvigelsen E
# E = Z * sigma/squareroot(n)
# sigma = 11.66582
# n = 1000
E <- 1.96*sd(egg$Vægt)/sqrt(1000)
# E = 0.7230552

# Vi finder venstre og højre side af konfidens intervallet
# venstre
mean(egg$Vægt)-E
# 69.20754
# højre
mean(egg$Vægt)+E
# 70.65366
# konfidens intervallet = [69.20 ; 70.65]

# så vi er 95% sikre på at my (gennemsnittet) ligger mellem 69.20 og 70.65
