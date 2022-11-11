#q1

1-punif(45,min=0,max=60) #a

punif(30,min=0,max=60)-punif(20,min=0,max=60) #b

#q2

dexp(3, rate = 0.5) #a

x1<-seq(from = 0, to = 5, by = 0.01) #b
gr1<-dexp(x1, rate=0.5)
plot(gr1)

pexp(3, rate=0.5) #c

gr2<-pexp(x1, rate=0.5) #d
plot(gr2)

x2<-rexp(1000, rate=0.5) #e
plot(x2)
plot(density(x2))

#q3

pgamma(1,shape=2,scale=1/3) #a
qgamma(0.7,shape=2,scale=1/3) #b
