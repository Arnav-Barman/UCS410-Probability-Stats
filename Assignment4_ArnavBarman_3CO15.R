#Q1
x1<-c(0,1,2,3,4)
p1<-c(0.41,0.37,0.16,0.05,0.01)
weighted.mean(x1,p1)

#Q2
integrate(function(t) {(0.1)*(exp(-0.1*t))}, lower = 0, upper = Inf)

#Q3
x3<-c(0,1,2,3)
p3<-c(0.1,0.2,0.2,0.5)
X3<-weighted.mean(x3,p3)
print((X3*12)-18+((3-X3)*2))

#Q4
f4_1<-function(x){0.5*exp(-abs(x))}
f4_2<-function(x){0.5*exp(-abs(x^2))}
moment1<-integrate(f4_1,lower=1, upper=10)
moment2<-integrate(f4_2,lower=1, upper=10)
mean4<-moment1$value
var4<-moment2$value-(moment1$value**2)
print(mean4)
print(var4)

#Q5
f5<-function(x){0.75*((0.25)**(x-1))}

yf <- function(y){(3/4)*(1/4)^(sqrt(y)-1)}
x<-as.integer(readline(prompt="Enter the value of x"))
y = x^2
proby <- yf(y)
print(proby)
#expected value and variance of Y for X = 1,2,3,4,5
x<- c(1,2,3,4,5)
y<-x^2
proby <- yf(y)
print(proby)
#Expected value
ExpVal <- sum(y*proby)
print(ExpVal)
#Variance = E((y-E(y))^2)
M <- ExpVal
y1 <- (y-M)^2
proby1 <- yf(y1)
print(proby1)
VarVal <- sum(y1*proby1)
print(VarVal)