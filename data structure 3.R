# Title: DataStructures in R
#IIMA

#vectors----
cv = c('dhiraj','a', 'Arun')
nv = c(12,45,26)
lv = c(TRUE, FALSE, T)
cv
nv
(x = 1:100000)
set.seed(100)
(x=round(rnorm(100,mean=50,sd=8),2))
(x = trunc(rnorm(100000, mean=60, sd=15)))

x
(x1=sort(x))
x2=x[x>=40&x<=50]
x2
length(x2)
mean(x2)
summary(x2)
mode(x2)
xt1=table(x2)
xt=sort(xt1,decreasing = T)
xt[1]
quantile(x)
plot(x)
hist(x)
plot(density(x))


boxplot(x)
text(1,40,labels = "mishra")
stem(x)
hist(x)
hist(x,breaks = 12,col = 1:3,freq = F)
lines(density(x))
y=rnorm(50,mean=10,sd=2)
plot(density(y))
abline(v=10,h=0.1)


#learn Matrix now
m1=matrix(c(1:20),nrow = 5,ncol=4,byrow = T)
m1
m2=matrix(c(21:40),nrow=5,byrow = T)
m2
m1+m2
m1-m2
m3=cbind(m1,m2)
m3
m4=rbind(m1,m2)
m4

m4[1,]
m4[1:3,2:3]
t(m4)
sweep(m1,MARGIN = 1,c(1:5),FUN = "+")
m1
sweep(m1,MARGIN = 2,c(1,2,3,4),FUN = "*")
sweep(m1[,c(1,3,4)],MARGIN = 2,c(1,2,3),FUN = "*")


#lets learn data frame
n=30
rollno=paste('A',1:n,sep = "")
rollno
name=paste('X',1:n,sep = "")
name

#gender
set.seed(101)
gender=sample(c('M','F'),n,replace = T)
gender

#marks1
set.seed(102)
marks1=round(rnorm(n,mean=50,sd=5),2)
marks1

#marks2
marks2=round(rnorm(n,mean=30,sd=1),2)
marks2
#marks3
marks3=round(rnorm(n,mean=40,sd=3),2)
marks3

#course
course=sample(c('bba','mba'),n,replace = T,prob = c(0.7,0.3))
course
table(course)

#forming a data frame
df=data.frame(rollno,name,marks1,marks2,marks3,course,gender)
df

?write.table
write.csv(df,file = "mishra.csv")
summary(df)
df=data.frame(rollno,name,marks1,marks2,marks3,course,gender,stringsAsFactors = F)
summary(df)
df$course=factor(df$course)
summary(df)
df$gender=factor(df$gender)
str(df)
#filter in R
str(df)
dim(df[df$marks1>40 &gender=='F',])
df[df$marks2>30&df$course=='bba',]
df[1:5,]
df[df$marks1>40,]
head(df)
tail(df)
str(df)

#learn boxplot

boxplot(marks3~course,data=df)
boxplot(marks3~course+gender,data=df)

#learn pivot table
mishra=aggregate(marks2~course+gender+marks3,data=df,FUN = sum)
View(mishra)


library(dplyr)
df%>%group_by(course,gender)%>%summarise(sum(marks1),sum(marks2))
df%>%group_by(course)%>%summarise(sum(marks2))
df%>%group_by(gender)%>%summarise(sum(marks1))
df%>%filter(gender=='F')
df%>%filter(course=='bba'&gender=='F')
df%>%filter(course=='bba'|gender=='F')



df%>%group_by(course,gender)%>%summarise(sum(marks1),sum(marks2))
df%>%group_by(course)%>%select(marks2)%>%top_n(3)
df%>%gropu
df%>%group_by(course)%>%select(marks3)%>%top_n(5)
df%>%filter(gender=='F')%>%tally()
df%>%sample_frac(0.2)
df%>%sample_n(3)
filter(df,gender=='F')
filter(df,gender=='F'&course=='bba')
table(df)
dim(df)
sample_n(10,data=df)
df%>%sample_frac(0.3)


piyush=data.frame(name,marks1,gender)
ashu=data.frame(name,marks2,course)
View(piyush)
m4=merge(piyush,ashu,by.x = 'name',by.y = 'name',all.x = T)
View(m4)
write.csv(m4,file="m4.csv")
