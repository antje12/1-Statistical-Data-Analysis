# Packages
install.packages("dplyr")
install.packages("ggpubr")

## Basketball
basketball_scores <- read.csv("D:\\Dropbox\\SDU\\Code\\Stat\\R programmering 7\\basketball_scores.csv", header = TRUE, sep = ";")

# Get a random sample
set.seed(1234)
dplyr::sample_n(basketball_scores, 10)

# Show boxplots
library("ggpubr")
ggboxplot(basketball_scores, x = "Player", y = "Points", 
          color = "Player", palette = c("#00AFBB", "#E7B800", "#FC4E07"),
          order = c("Michael", "Damon", "Allen"),
          ylab = "Points", xlab = "Player")

# Calculate Anova
res.aov <- aov(Points ~ Player, data = basketball_scores)
summary(res.aov)
# As the p-value is less than the significance level 0.05,
# we can conclude that there are significant differences 
# between the groups highlighted with "*" in the model summary.

# Multiple pairwise-comparison between the means of groups
TukeyHSD(res.aov)
# P adj ligger under 0.05 hvorfor der er en 
# signifikant forskel mellem samtlige sæt

## Reklamer
reklamer <- read.csv("D:\\Dropbox\\SDU\\Code\\Stat\\R programmering 7\\Reklamer.csv", header = TRUE, sep = ";")

# Get a random sample
set.seed(1234)
dplyr::sample_n(reklamer, 10)

# Show boxplots
library("ggpubr")
ggboxplot(reklamer, x = "Periode", y = "Antal", 
          color = "Periode", palette = c("#00AFBB", "#E7B800", "#FC4E07", "#FC03FC"),
          order = c("1 kvartal", "2 kvartal", "3 kvartal", "4 kvartal"),
          ylab = "Antal", xlab = "Periode")

# Calculate Anova
res.aov2 <- aov(Antal ~ Periode, data = reklamer)
summary(res.aov2)
# As the p-value is less than the significance level 0.05,
# we can conclude that there are significant differences 
# between the groups highlighted with "*" in the model summary.

# Multiple pairwise-comparison between the means of groups
TukeyHSD(res.aov2)
# P adj ligger under 0.05 hvorfor der er en 
# signifikant forskel mellem følgende sæt:
# - 4 kvartal-1 kvartal
# - 4 kvartal-2 kvartal
# - 4 kvartal-3 kvartal