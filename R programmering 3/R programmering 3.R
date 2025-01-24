# Hent data
download.file("http://www.openintro.org/stat/data/kobe.RData", destfile = "kobe.RData")
load("kobe.RData")
head(kobe)

# F�rste kamp = udfaldende 1 til 9:
# (han sk�d 9 gange i denne kamp):
kobe$basket[1:9]

# Her er alle hans skud:
kobe$basket

# Her er alle hans streaks:
kobe_streak <- calc_streak(kobe$basket)

# Her er et barplot over fordelingen af hans streaks:
# (han havde en streak p� 4 �n gang):
barplot(table(kobe_streak))

# Vi simulere 133 tilf�ldige skud:
# (med en sandsynlighed for at ramme p� 50%)
# (med tilbagel�gning efter hver udtr�kning)
outcomes <- c("H", "M")
sim_basket <- sample(outcomes, size = 133, replace = TRUE)

# Vi har nu 133 tilf�ldige skud og 133 skud fra Kobe (spilleren):
kobe$basket
sim_basket

# Vi laver en simuleret spiller med 45% chance for at score
outcomes <- c("H", "M")
sim_basket <- sample(outcomes, size = 133, replace = TRUE, prob = c(0.45, 0.55))
sim_streak <- calc_streak(sim_basket)
barplot(table(sim_streak))

# Lad os tjekke deres gennemsnit
mean(kobe_streak)
mean(sim_streak)
