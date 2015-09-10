getwd()
x<-2
x
x<-"hello"
print(x)
y<-3
z<-5
y+z #this is a comment
y<-10
usim<-"I like my facilitator from MMU"
3-> x
19->z
class(X)
class (x)
class (usim)
a<-2.7
class(a)
x<-3L
class(x)
x<-c(1,3,5,7)
class(x)
mean(x)
x1 <- c("a", "b", "c")
x2 <- c("a", 1, 2)
x3 <- c(TRUE,FALSE)
x4 <- 1:10
length(x1)
length(x4)
class(x3)
x1[3]                #to show the third value
x4[5:8]              #to show 5 to 8
x4[c(1,3,5,7,9)]     #combined the odd numbers
x4>5 
x4[x4>5]
x4[x4<5]<-0
x4[x4>5]*2          #double the value
x4[x4>5]<-x4[x4>5]*2
x4
x5 <- list(3, "hello")
x5
x6 <- list(a=(c(1,3,4,7)),b="hello",c=c(3.1,2,6))
x6
x5[[2]]              #to show hello only, for list use [[]]
x6$c[3]
z <- list(var1 = 1:4, var2 = 0.6)

x7<-matrix(1:6,nrow=3, ncol=2)
x7
x7<-matrix(1:6,nrow=3, ncol=2, byrow=TRUE)
x7
x7<-matrix(1:6,3, 2, T) #simplified matrix
x7
class(x7)
x7[2,1]  #row 2, column 1
x7[3,2]
x7[3,]
x7[,2]
x7[c(1,3),]              #to show row 1 and row 3 only

m <- matrix(1:4, nrow=2, ncol=2)
m
inv_m<-solve(m)   #inverse matrix
m %*% inv_m
solve(m)
x8 <- c(1, 2, 3, 4, NA, 0/0)
class(x8)
is.na(x8)     #to check whether there is NA in x8
is.nan(x8)    #to check whether there is NAN in x8
mean(x8)
mean(x8, na.rm=TRUE)    #remove NA and NAN to calculate the mean
sum(x8, na.rm=TRUE)     #assignment 1
min(x8, na.rm=TRUE)
max(x8, na.rm=TRUE)
min(x8)

#Data Frames
x9<-1:5
y1 <- c("a", "b", "c", "d", "e")
df <- data.frame(x9,y1)
df
View(df)
class(df)
nrow(df)
ncol(df)
df
df[2:4,]                    #to show row 2 to row 4
df[c(1,3,5),]
df
df$x9[x9>3]
df
df$y1="b"
df
df$y1=="b"             #to show how many b in y1
df$y1[df$y1=="b" ]

names(df)
names(df)<-c("num","grade")            #to change the column name
View(df)
df$num
df$grade


x<-c(100,200)
y<-c ("apple","banana")
new.df<-data.frame(x,y)             #to create new data
names(new.df)<-c("num","grade")
df<-rbind(df, new.df)
df


dengue<-read.csv("day1-dengue-na.csv")
View(dengue)
summary(dengue)
str(dengue)                      #data frame, factor is those that are repeating
head(dengue)                    #to see first six rows
tail(dengue)                     #to see last six rows
tail(dengue,2)                   #to see last 2 rows
head(dengue,4)

names(dengue)
dengue$Total
is.na(dengue$Total)
sum(dengue$Total, na.rm=TRUE)   #sum without NA
dengue[is.na(dengue$Total),]              #show the NA
nrow (dengue[is.na(dengue$Total),])       #show the total number of NA
nrow (dengue[!is.na(dengue$Outbreak_Duration),])  #not NA in outbreak duration, exclamation mark


#Control Loop
x <-c("a", "b", "c", "d")
for(i in 1:4){
  print(x[i])
}
for(letter in x){
  print(letter)
}
for(i in seq_along(x)){
  print(x[i])
}
for(i in 1:length(x)){
  print(x[i])
}
file_list<-list.files()
file_list
for (file in file_list){
  print(file)
}

if(x == "a") {
  y <- 10
} else if (x == "b"){
  y <- 20
} else {y <- 30}

count <- 0
while(count < 10){
  print(count)
  count <- count + 1
}


today<-"10/09/2015"
today
class(today)
today.date <- as.Date(today,"%d/%m/%Y")            #as to change the class
class(today.date)
today.date
unclass(today.date)
date1 <- as.POSIXct("2015-09-10 01:00:00")
date2 <- as.POSIXct("2015-08-10 01:00:00")
date1-date2

func1<-function(a,b){
  a+a^2
}
func1(2)

func1<- function (a){             #if you want the result to come out as even or odd
  if(a%%2==0){
    print("even")
  }
  else{print('odd')}
}

func1(4)
func1(3)

paste("a", "b", sep="")
paste("a", "b", sep="***")
paste("a", "b", "c", sep="***")
paste("Nur","Amalina",sep=" ")
paste("2015","08","19",sep="-")
dengue
str(dengue)
paste("State","District","Location",sep=" ")
