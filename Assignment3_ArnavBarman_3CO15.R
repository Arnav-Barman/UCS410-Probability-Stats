#Q1
x<-c(7,8,9)
dbinom(7,12,1/6)+dbinom(8,12,1/6)+dbinom(9,12,1/6)                    #way 1
pbinom(9,12,1/6,lower.tail = TRUE)-pbinom(6,12,1/6,lower.tail = TRUE) #way 2

#Q2
pnorm(100,mean=72,sd=15.2)-pnorm(84,mean=72,sd=15.2)

#Q3
dpois(0,5) #no car in a time interval
ppois(50,50)-ppois(47,50)
# dpois(48,50)+dpois(49,50)+dpois(50,50)

#Q4
dbinom(3,5,17/250)
#dhyper(3,17,233,5)
#Hypergeometric Distribution: Sampling without replacement

#Q5
#X follows binomial distribution with parameters n=31 and 
#the probability of students using wiki is 0.447

#5b
#PMF
X=0:31
Y=dbinom(X,31,0.447)
plot(X,Y)
#5c
#CDF
Z=pbinom(X,31,0.447)
plot(X,Z)

#5d
mean(X)
sd(x)
var(X)
