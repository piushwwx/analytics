# tiltle of work you are doing
# datastructures in R

#vectors----

#matrix----






#dataframe----

# it is like Excel data, every col can of differnt data type
Rollno=paste('a',1:n,sep = "")
Rollno
n=30
name=paste('Student',1:n,sep = "")
name
set.seed(101)
gender=sample(c('m','f'),size = n,replace = T,prob = c(.7,.3))
table(gender)
gender
set.seed(101)
(marks1=round(rnorm(n,mean=30,sd=7),2))
set.seed(102)
marks2=round(rnorm(n,mean=50,sd=8),2)
marks2
set.seed(106)
grade=sample(c('A','B','C','D'),size = n,replace = T,prob = c(.3,.2,.3,.2))
table(grade)

df=data.frame(Rollno,name,gender,marks1,marks2,grade,stringsAsFactors = F)
df
summary(df)
str(df)
df$gender=factor(df$gender)
df$grade=factor(df$grade,ordered = T,levels = c('B','C','D','A'))
#filters
df[1:5,c("Rollno","name")]


df[df$marks1>30& gender=="m",c("Rollno","name","marks1","gender")]
df$course=sample(c('MBA','BBA'),size = n,replace = T,prob = c(.6,.4))
str(df)
df$course=factor(df$course)
boxplot(grade~marks2,data = df)
boxplot(marks2~grade+gender,date=df)
aggregate(marks2~course+gender,data=df,FUN = mean)

aggregate(marks2~course+gender+grade,data=df,FUN = mean)


#dplyr
library(dplyr)
#group by course
df%>% group_by(course)%>% summarise(mean(marks2),mean(marks1))
df%>% group_by(course)%>% select(marks1)%>% top_n(2)
df%>%sample_n(3)
library(wordcloud2)


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

(m1 = matrix(c(1:24), nrow=6, byrow=F))
m1[1]; m1[10:14]
x=1:24
(m2 = matrix(x, ncol=4, byrow=T))
m2[1]; m2[10:14]
m1; m2
cbind(m1,m2)
m1
colSums(m1)
rowSums(m1)
colMeans(m1)
rowMeans(m1)

#subset col/row, combination
m1[1,]
m1[1:2,]
m1[,2:3]
m1[1:2,3]
m1[1:2,1:2]
m1[c(1,3),c(2,4)]
m1[m1>10&m1<15]
m1>10
m1-m2
m1+m2
sweep(m1,MARGIN = 1,STATS = c(2,3,4,5,6,7),FUN = "+")
sweep(m1,MARGIN = 2,STATS = c(2,1,2,1),FUN = "*")
sweep(m1,MARGIN = 2,STATS = c(2,1,2,1),FUN = "*")












