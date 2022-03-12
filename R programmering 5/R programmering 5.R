download.file("http://www.openintro.org/stat/data/ames.RData", destfile = "ames.RData")
load("ames.RData")

area <- ames$Gr.Liv.Area
price <- ames$SalePrice

summary(area)
hist(area)

samp1 <- sample(area, 50)
summary(samp1)
hist(samp1)

samp2 <- sample(area, 50)
summary(samp2)
hist(samp2)

sample_means50 <- rep(NA, 5000)
for(i in 1:5000){
  samp <- sample(area, 50)
  sample_means50[i] <- mean(samp)
  print(i)
}

hist(sample_means50)

hist(sample_means50, breaks = 25)
summary(sample_means50)

sample_means_small <- rep(NA, 100)
for(i in 1:100){
  samp <- sample(area, 50)
  sample_means_small[i] <- mean(samp)
  print(i)
}

sample_means10 <- rep(NA, 5000)
sample_means100 <- rep(NA, 5000)
for(i in 1:5000){
  samp <- sample(area, 10)
  sample_means10[i] <- mean(samp)
  samp <- sample(area, 100)
  sample_means100[i] <- mean(samp)
}

par(mfrow = c(3, 1))
xlimits <- range(sample_means10)
hist(sample_means10, breaks = 20, xlim = xlimits)
hist(sample_means50, breaks = 20, xlim = xlimits)
hist(sample_means100, breaks = 20, xlim = xlimits)

# Opgave med price:
priceSamp <- sample(price, 50)

mean(priceSamp)

priceSample_means50 <- rep(NA, 5000)
for(i in 1:5000){
  samp <- sample(price, 50)
  priceSample_means50[i] <- mean(samp)
}

hist(priceSample_means50)
summary(priceSample_means50)

mean(price)

priceSample_means150 <- rep(NA, 5000)
for(i in 1:5000){
  samp <- sample(price, 150)
  priceSample_means150[i] <- mean(samp)
}

hist(priceSample_means150)
summary(priceSample_means150)
