# sep.23 object practice

###-----------data formats

objNum <- 5
objCha <- "a"
objLog <- T

# R語言裡，所有的變數都是一個物件(object)
#objects() == ls()  會列出所有已存在的物件
objects()

# 移除物件,list放的參數是要刪除的物件 (而ls()就是所有已存在的物件，因此會刪除所有物件)
rm(list = ls())


###-----------data structures

## vector


# vector其實就是一個column,透過c()將data包起來
v1 <- c(1,2,3,4,5)
v1
# equal to isArray() in JS
is.vector(v1)


## matrix

# matrix => two dimensions , same length
# 前面放data,後面的nrow指的是matrix會有兩列
# =>也就是前面的6個資料會自動被分成3個vector(3 col)
m1 <- matrix(c(1,2,3,4,5,6) , nrow = 2)
m1

# 因一般的矩陣都是col-major的看法
# 但若加入byrow=T,資料則會呈現以row為主的排法
# ace  ->   abc
# bdf       def
m2 <- matrix(c("a","b","c","d","e","f")
             , nrow = 2
             , byrow = TRUE)
m2


## Array

# Array是一個多維的matrix
# array(data, then dimensions (rows, columns, tables))


a1 <- array(c(1:24),c(3,4,2))
a1


## data frame


numeric <- c(1,2,3)
character <- c('a','b','c')
logical <- c(T,F,F)

# cbind()將多個vector綁在一起
dfa = cbind(numeric,character,logical)
dfa
# 可以發現將dfa輸出後，data type都變為character
# 是因為cbind只是單純將vector合在一起,然後全部轉乘character型別

# 還要再加上as.data.frame()才能轉型成data frame
dfa <- as.data.frame(dfa)
dfa
# 將data frame做成表格
View(dfa)
# 檢視data frame的結構(structure)
str(dfa)
# 取得data frame下的某行data
dfa$character

