#透過條件篩選資料
#install.packages("dplyr")
library(dplyr)
#包含了各個國家的年均壽命、人口、GDP的data set
#install.packages("gapminder")
library(gapminder)
 
#install.packages("magrittr")
library(magrittr)

#.rs.restartR()       # Restart R session

#data(database) 將資料庫的data load進程式
data("gapminder")

#%>%將資料傳遞給下一個函數使用，讓函數間連接起來
#gapminder的資料->select(country,lifeExp) ->filter(找出country == south Africa or Ireland)
df1 <- gapminder %>%
  select(country, lifeExp) %>%
  filter(country == "South Africa" |
           country == "Ireland")

#install.packages("ggplot2")  
library(ggplot2)

# ggplot 畫出框架
# geom_point 標出數據點 , alpha->透明度?
gapminder %>%
  filter(gdpPercap < 50000) %>%
  ggplot(aes(x=log(gdpPercap), y=lifeExp, color=continent,size=pop))+
  geom_point(alpha=0.3)
  #geom_smooth(method = lm)


