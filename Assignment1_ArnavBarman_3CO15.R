#q1
c<-c(5,10,15,20,25,30)
max(c)
min(c)

#q2
var = readline();
var= as.integer(var)
ff<-factorial(var)
ff

#q3
var1 = readline();
var1= as.integer(var1)
Fibo<-numeric(var1)
Fibo[1]<-0
Fibo[2]<-1
for(i in 3:var1)
  Fibo[i]=Fibo[i-1]+Fibo[i-2]
print("The fibonacci numbers requested are:")
print(Fibo)

#q4
print("*****__Calculator__*****")
print("Enter the first number:")
inp1 = readline();
inp1 = as.integer(inp1)
print("Enter the second number:")
inp2 = readline();
inp2 = as.integer(inp2)
print("*********************")
print("Input 1 for addition, 2 for subtraction, 3 for multiplication and 4 for division.")
meth = readline();
meth = as.integer(meth)
if(meth == 1){
  print(inp1 + inp2)
} else if(meth == 2){
  print(inp1-inp2)
} else if(meth == 3){
  print(inp1 * inp2)  
} else if(meth == 4){
  print(inp1/inp2)
} else{
  print("Wrong Input")
}

#q5
plot(sin, 0, 4*pi)
plot(1,3)
plot(c(1,2,3),c(3,2,1),main="Graph Name",xlab="x",ylab="y")
plot(1:10)

p1 <- c(1,2,3,4)
l1 <- c("1","2","3","4")
pie(p1,l1)

pie(p1,l1,main="Chart name")

pie(p1,l1,main="Chart name", col = rainbow(length(p1)))
legend("topright", c("1", "2", "3", "4"),
       cex = 0.5, fill = rainbow(length(p1)))

p2<-c(1,2,5,4,3,6,8,9,7)
barplot(p2,xlab="x axis",ylab="y axis",main="Chart Name")
barplot(p2, horiz=TRUE)