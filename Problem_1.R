## WARNING: use the files Problem_1.R, Problem_2.R, etc. to write your 
## solution otherwise your homework/exam will not be reviewed and will not be graded at all.

## Econometrics 2018
## Homework 1

#1a 
x <- c(4, 1, 1, 4) 

#1b
y<- c(1, 4)

#1c
# the difference between the vectors x and y 
Difference <- x - y
Difference

## Missing explanation

#1d
s <- c(x, y)

#1e
rep(s, 10) 

length(s)

#1f
rep(s, each = 3)

#1g
seq(7, 21)


#1g 
##i)
seq(7, 21, by=1)

##ii) 
7:21

#1h
length(seq(7, 21)) 

#2a
xmin<- c(23.0, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2)
xmax<- c(25.0, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1)

#2b
difference <- xmax - xmin

#2c
avgMinTemp <- mean(xmin)
avgMinTemp
avgMaxTemp <- mean(xmax)
avgMaxTemp

#2d
## Using 'which' is not wrong but is unnecessary here
## 
xmin[which(xmin<avgMinTemp)]

## Sufficient:
xmin[xmin < avgMinTemp]


#2e
## Same comment as above
xmax[which(xmax>avgMaxTemp)]

#2f
## Nice

dayNames <- c('03Mon18', '04Tue18', '05Wed18', '06Thu18', '07Fri18', '08Sat18', '09Sun18')
xmin
str(xmin)
names(xmin) <- dayNames
xmin

xmax
str(xmax)
names(xmax) <- dayNames
xmax

#2g
temperatures <- data.frame(
  df.xmin = xmin, 
  df.xmax = xmax
)

#2h 
xminFahrenheit <- xmin * (9/5) + 32
temperatures <- within(temperatures, {
	## Superfluous 'c'
	xminFahrenheit <- 9/5*xmin + 32
})

#2i
Fahrenheit <- data.frame(
  df.xminFahrenheit = xminFahrenheit
)

#2j
##i
dayFahrenheit <- data.frame (
  df.xminFahrenheit = xminFahrenheit[1:5]
)


##ii)
dayFahr <- data.frame(
  df.xminFahrenheit= xminFahrenheit [c(-6,-7)]
)


## Easier way 

temperatures <- within(temperatures, {
  xminFahrenheit <- xmin * (9/5) + 32
  xmaxFahrenheit <- xmax * (9/5) + 32
})

temperaturesFahrenheit <- temeratures[, c('xminFahrenheit', 'xmaxFahrenheit)]

## Easier to subset the whole data.frame instead of 
## doing this for each vector used in its construction

temperaturesFahrenheit[1:5, ]
temperaturesFahrenheit[-(6:7), ]
