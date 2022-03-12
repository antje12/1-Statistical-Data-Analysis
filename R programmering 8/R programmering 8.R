# --- Bar ---
#Upload the data
library(readxl)
bar <- read_excel("D:\\Dropbox\\SDU\\Code\\Stat\\R programmering 8\\Bar.xls")
View(bar)

#Scatter plot for at vurdere data
plot(bar$Alder, 
     bar$Beløb, 
     main="Forbrug",
     xlab="Alder ", 
     ylab="Beløb i baren ", 
     pch=19)

#Vi tilfører en regressionslinje
abline(lm(bar$Beløb~bar$Alder), col="blue")

#Der  er en fin sammenhæng, nu tester vi
lmBar <- lm(Beløb~Alder, data=bar)
summary(lmBar)

#Lav et scatterplot over residualer og tilføj en 0 linje
plot(lmBar$residuals, pch = 16, col = "red")
abline(h=0)

# --- Fridge ---
#Upload the data
library(readxl)
fridge <- read_xlsx(path = "D:\\Dropbox\\SDU\\Code\\Stat\\R programmering 8\\Fridge.xlsx", range = cell_cols("A:B"))
View(fridge)

#Scatter plot for at vurdere data
plot(fridge$pris, 
     fridge$volumen, 
     main="Størrelse",
     xlab="Pris for køleskab ", 
     ylab="Volumen af køleskab ", 
     pch=19)

#Vi tilfører en regressionslinje
abline(lm(fridge$volumen~fridge$pris), col="blue")

#Der  er en fin sammenhæng, nu tester vi
lmFridge <- lm(volumen~pris, data=fridge)
summary(lmFridge)

#Lav et scatterplot over residualer og tilføj en 0 linje
plot(lmFridge$residuals, pch = 16, col = "red")
abline(h=0)
