mean=70; sd=12
lb=63; ub=72

x <- seq(-4,4,length=100)*sd + mean
hx <- dnorm(x,mean,sd)

plot(x, hx, type="n", xlab="Egg weights", ylab="",
     main="Normal Distribution", axes=FALSE)

i <- x >= lb & x <= ub
lines(x, hx)
polygon(c(lb,x[i],ub), c(0,hx[i],0), col="red")

area <- pnorm(ub, mean, sd) - pnorm(lb, mean, sd)
result <- paste("P(",lb,"< Egg Weight <",ub,") =",
                signif(area, digits=3))
mtext(result,3)
axis(1, at=seq(25, 115, 5), pos=0)
