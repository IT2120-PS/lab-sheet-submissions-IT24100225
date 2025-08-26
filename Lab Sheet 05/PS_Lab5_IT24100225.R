setwd("C:\\Users\\it24100225\\Desktop\\IT24100225")

#1
Delivery_Times<- read.table("Exercise - Lab 05.txt",header=TRUE,sep=",")
attach(Delivery_Times)

#2
histrogram <- hist(Delivery_Time_.minutes.,main="histrogram fro deliver times",breaks = seq(20,70,length=10),right = TRUE)

#3-Symmetrical Histogram


#4
#Construct the frequency distribution
breaks <- round(histrogram$breaks) #break points
breaks

freq <- histrogram$counts#Frequencies
freq 

mids <- histrogram$mids#mid values
mids



#frequency distribution
Classes <- c() #empty vector

for(i in 1:length(breaks)-1){
  Classes[i]<-paste0("[",breaks[i],",", breaks[i+1],"]")
}

cbind(Classes = Classes, frequency = freq)



#Portray the distribution in the form of a frequency polygon
lines(mids,freq)

#new plot
plot(mids,freq,type = "l",main="frequency polygon for deliver times",xlab = "deliver times",ylab = "Frequancy",ylim = c(0,max(freq)))



#Portray the distribution in a cumulative frequency polygon
cum.freq <- cumsum(freq)
cum.freq

new <- c()

for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]
  }
}

par(mar = c(4, 4, 2, 1))
plot(breaks,new,type = "l",main="cumulative frequency polygon for deliver times",xlab = "deliver times",ylab = "cumulative frequancy",ylim = c(0,max(freq)))


cbind(Upper = breaks, Cumfreq = new)
