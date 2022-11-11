data<-read.csv(file.choose())
dim(data)
head(data,10)
mean(data$Wall.Thickness)

hist(data$Wall.Thickness,col = "pink",main = "Histogram for Wall Thickness",xlab = "wall thickness")
abline(v=12.8,col="red",lty=1)

s10<-c()
n=9000
for (i in 1:n) {
  s10[i] = mean(sample(data$Wall.Thickness,10, replace = TRUE))}
hist(s10, col ="lightgreen", main="Sample size =10",xlab = "wall thickness")
abline(v = mean(s10), col = "Red")
abline(v = 12.8, col = "blue")

s30 <- c()
s50 <- c()
s500 <- c()
n =9000
for ( i in 1:n){
  s30[i] = mean(sample(data$Wall.Thickness,30, replace = TRUE))
  s50[i] = mean(sample(data$Wall.Thickness,50, replace = TRUE))
  s500[i] = mean(sample(data$Wall.Thickness,500, replace = TRUE))
}
par(mfrow=c(1,3))
hist(s30, col ="blue",main="Sample size=30",xlab ="wall thickness")
abline(v = mean(s30), col = "red")

hist(s50, col ="green", main="Sample size=50",xlab ="wall thickness")
abline(v = mean(s50), col = "red")

hist(s500, col ="red",main="Sample size=500",xlab ="wall thickness")
abline(v = mean(s500), col = "red")