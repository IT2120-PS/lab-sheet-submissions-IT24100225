setwd("C:\\Users\\it24100225\\Desktop\\IT24100225")
#Exercise
#part1
#i)Binomial Distribution (with n = 50 , p = 0.85)

#ii)
pbinom(46,50,0.85,lower.tail = FALSE) #lower.tail = FALSE = p(X> 47)

#part2
#i) X = number of customer calls received by in one hour.

#ii) Poisson Distribution(lambda = 12)

#iii)
dpois(15,12)