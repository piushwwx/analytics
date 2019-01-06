# tiltle of work you are doing
# datastructures in R

#vectors----

#matrix----

#dataframe----

#factors----
set.seed(100)
x=trunc(rnorm(100000,mean=60,sd=10))
x
x1=sort(x)
x1
#values between 60and 70
x[x>=60 & x<=70]
length(x)
mean(x)
median(x)
mode(x)
xt=table(x)
sort(xt,decreasing = T)[1:2]

xt
summary(x)
quantile(x,seq(0,1,0.1))
boxplot(x)
text(1,50,labels = "mishra")



length(x[x>=60 & x<=70])
x2=rnorm(100,mean=10,sd=2)
plot(x2)
hist(x2)
plot(density(x2))
abline(v=10)
abline(h=0.1)
x3=seq(1,100,by=2)
mean(x3)



x4=rnorm(50,mean = 10,sd=0.5)
stem(x4)
hist(x4,breaks = 12,col=1:5)
hist(x4,freq = F)
lines(density(x4))
