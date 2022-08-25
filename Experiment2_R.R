#Q1(a)
v = c(rep("Gold",20),rep("Silver",30),rep("Bronze",50))
sample(v,10,replace = FALSE, prob = NULL)
#Q1(b)
sample(c("Success","Failure"),10,replace=TRUE,prob=c(0.9,0.1))

#Q2
pbirthday(15,classes=365,coincident = 2)
pbirthday(5,classes=365,coincident = 2)
pbirthday(100,classes=365,coincident = 2)
pbirthday(300,classes=365,coincident = 2)
pbirthday(25,classes=365,coincident = 2)
pbirthday(23,classes=365,coincident = 2)
pbirthday(22,classes=365,coincident = 2)

qbirthday(prob = 0.5, classes = 365, coincident = 2)

#Q3
pcloudy = 0.4
prain = 0.2
pcloudyrain = 0.85
bayesTheorem <- function(pA, pB, pBA) {
  pAB <- pA * pBA / pB
  return(pAB)
} 
bayesTheorem(prain, pcloudy, pcloudyrain)

#Q4
library(datasets)
data(iris)
#4a Print first few rows of this dataset.
head(iris,10) 
#4b Find the structure of this dataset. 
dim(iris)
str(iris)
#4c Find the range of the data regarding the sepal length of flowers.
vec<-iris$Sepal.Length
print(range(vec))
#4d Find the mean of the sepal length
print(mean(vec))
#4e Find the median of the sepal length.
print(median(vec))
#4f Find the first and the third quartiles and hence the interquartile range.
vec=sort(vec)
firstq=(length(vec))/4
thirdq=(length(vec))*3/4
print(firstq)
print(vec[firstq])
print(vec[thirdq])
print(summary(iris))
#4g Find the standard deviation and variance.
print(sd(vec))
print(var(vec))
#4i Find the summary
print(summary(iris))


#Q5
getmode <- function(v) {
  uniqv <- unique(v)
  return(uniqv[which.max(tabulate(match(v, uniqv)))])
}
v4 <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)
getmode(v4)
