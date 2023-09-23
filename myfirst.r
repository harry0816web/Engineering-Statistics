# sep.18, example 1 

## step 1 


#加入種子碼，讓每次產生的亂數都相同
#set.seed(1)

#產生提示
#?sample

#sample 100 numbers between 1 to 100 , repeat is fine
number <- sample(x = 1:100,size = 100,replace = TRUE,prob=NULL)
number

## step 2


#mean => average
(numberMean <- mean(number))

#var -> variance
(numberVar <- var(number))

#sd -> standard deviation
(numberSd <- sd(number))

## step3


# 隨機取20個不重複的索引值,使其值變為NaN
y <- number
y[sample(x=1:100,size = 20,replace = FALSE)] <- NaN
y
mean(y)
# na.rm === NaN.remove()
mean(y,na.rm = TRUE)

