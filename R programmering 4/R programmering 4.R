download.file("http://www.openintro.org/stat/data/bdims.RData", destfile = "bdims.RData")
load("bdims.RData")

head(bdims)

mdims <- subset(bdims, sex == 1)
fdims <- subset(bdims, sex == 0)

hist(mdims$hgt)
hist(fdims$hgt)

fhgtmean <- mean(fdims$hgt)
fhgtsd <- sd(fdims$hgt)

hist(fdims$hgt, probability=TRUE, ylim=c(0,0.6))
x <- 140:190
y <- dnorm(x=x, mean=fhgtmean, sd=fhgtsd)
lines(x = x, y = y, col = "blue")

qqnorm(fdims$hgt)
qqline(fdims$hgt)

sim_norm <- rnorm(n=length(fdims$hgt), mean=fhgtmean, sd=fhgtsd)

qqnorm(sim_norm)
qqline(sim_norm)

qqnormsim(fdims$hgt)

1 - pnorm(q=182, mean=fhgtmean, sd=fhgtsd)
sum(fdims$hgt > 182) / length(fdims$hgt)
