# Nov.1 data IO

###-----------seq
# 只給範圍就會默認從1開始，間距是1
(x4 <- seq(10))

# 加入起始值、間距
(x5 <- seq(0,10,2))


###-----------cat
cat("Number is",x)
cat("Today","is",date(),sep = "\n","\n")
cat("Today","is",date(),sep = "\t","\n")
cat("Today","is",date(),sep = " ","\n")
## cat into TXT file
getwd()
setwd("C:/112_1_Engineering_Statistics/Ch3.R.DataIO_and_BasicGraphics/codes")
# path for macOS Desktop: /Users/name/Desktop
cat("Number is",x,file = "test.txt","\n")
cat("Today","is",date(),file = "test.txt"
    ,sep = " "
    ,"\n"
    ,append = TRUE)  # append = TRUE!!!
# 接續先前的內容


###-----------RIO library

rio_txt <- import("weatherdata.txt")
str(rio_txt) # data frame
View(rio_txt)
# 顯示前幾行數據
head(rio_txt)
rain <- rio_txt$Rain

###---------export
## import
data_csv <- import("weatherdata.csv")

## export XLSX
export(data,"ro.xlsx")

## write.csv
write.csv(data,"write.csv")  # open file & check what's different?
# -> 多出了row的標籤(1~n筆資料)
write.csv(data,"write.csv",row.names = FALSE) 
# row.names -> FALSE 把row標籤關閉

## write.table => 寫txt用的
write.table(data,file = "write.txt"
            , sep = "\t"
            , row.names = FALSE)  # open file & check what's different?
# -> 多出了引號將label框住
write.table(data,file = "write.txt"
            , sep = "\t"
            , row.names = FALSE
            , quote = FALSE)

