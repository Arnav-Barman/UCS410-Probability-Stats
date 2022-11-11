#Q1
install.packages("pracma")

#(i)
library(pracma)
fun<-function(x,y){
  return ((4*x+6*y)/5)
}
val<-integral2(fun,xmin=0,xmax=1,ymin=0,ymax=1)
val

#ii
g_x<-function(y){
  return (fun(1,y))
}
x_marginal<-integrate(g_x,0,1)
print(x_marginal)

#iii
h_y<-function(x){
  return (fun(x,0))
}
y_marginal<-integrate(h_y,0,1)
print(y_marginal)

#iv
funct2<-function(x,y){
  return (x*y*(4*x+6*y)/5)
}
print(integral2(funct2,xmin=0,xmax=1,ymin=0,ymax=1))

#2

#i,ii
f<-function(x,y){
  return ((x+y)/30)
}
m<-matrix(c(f(0,0:2),f(1,0:2),f(2,0:2),f(3,0:2)),nrow=4,ncol=3,byrow=TRUE)
print(m)
if (sum(m)==1){
  print ("It is a PMF")
}

#iii,iv
g<-apply(m,1,sum)
g
h<-apply(m,2,sum)
h

#v
m[1,2]/h[2]

#vi
x<-c(0:3)
EX<-sum(x*g)
print(EX)
EX_square<-sum(x*x*g)
print(EX_square)
VarX=EX_square-(EX)*EX
print(VarX)
y<-c(0:2)
EY<-sum(y*h)
print(EY)
EY_square<-sum(y*y*h)
print(EY_square)
VarY=EY_square-(EY)*EY
print(VarY)
fun2<-function(x,y){
  x*y*(x+y)/30
}
mat2<-matrix(c(fun2(0,0:2),fun2(1,0:2),fun2(2,0:2),fun2(3,0:2)),nrow=4,ncol=3,byrow=TRUE)
eXY<-sum(mat2)
covariance<-eXY-EX*EY
print(covariance)
correlation<-covariance/(sqrt(VarX*VarY))
print(correlation)

