setwd("C:/Users/cynth/Downloads/Praktikum_R")
getwd()
list.files()
rm(list = ls())
PackageNames <- c("tidyverse", "stargazer", "magrittr", "moments")
for(i in PackageNames){
if(!require(i, character.only = TRUE)){
install.packages(
i,
dependencies = TRUE
)
require(
i,
character.only = TRUE
)
}
}
install.packages("tidyverse")
library(tidyverse)
install.packages("stringi")
library(tidyverse)
library(tidyverse)
wage <- read.csv("wage1.csv")
str(wage)
head(wage, 10)
dim(wage)
names(wage)
stargazer(wage, type = "text")
library(stargazer)
stargazer(wage, type = "text")
library(stargazer)
library(magrittr)
library(moments)
library(stargazer)
stargazer(wage, type = "text")
select()
library(dplyr)
wage %>%
select(wage, lwage, educ, exper, expersq, tenure, married, female) %>%
stargazer(type = "text")
library(dplyr)
table(wage$female)
prop.table(table(wage$female))
table(wage$female)
prop.table(table(wage$female))
prminwge <- read.csv("prminwge.csv")
prminwge <- prminwge %>%
select(year, avgmin, avgcov, prunemp, prgnp)
str(prminwge)
head(prminwge)
stargazer(prminwge, type = "text")
table(prminwge$year)
sort(
unique(prminwge$year)
)
length(
unique(prminwge$year)
)
hprice3 <- read.csv("hprice3.csv")
hprice3 <- hprice3 %>%
select(year, y81, price, lprice, rooms, baths)
str(hprice3)
head(hprice3, 10)
stargazer(hprice3, type = "text")
table(hprice3$year)
hprice_1978 <- hprice3 %>%
filter(
year == 1978
) %>%
select(
price
)
stargazer(
hprice_1978,
type = "text"
)
hprice_1981 <- hprice3 %>%
filter(
year == 1981
) %>%
select(
price
)
stargazer(
hprice_1981,
type = "text"
)
mean_1978 <- mean(
hprice3$price[
hprice3$year == 1978
]
)
mean_1978
mean_1981 <- mean(
hprice3$price[
hprice3$year == 1981
]
)
mean_1981
change_price <- mean_1981 - mean_1978
change_price
percentage_change <- (
(mean_1981 - mean_1978) /
mean_1978
) * 100
percentage_change
wagepan <- read.csv("wagepan.csv")
wagepan <- wagepan %>%
select( nr, year, lwage, exper, educ, hours )
str(wagepan)
head(wagepan, 10)
stargazer(
wagepan,
type = "text"
)
table(wagepan$year)
sort(
unique(wagepan$year)
)
length(
unique(wagepan$nr)
)
n_distinct(
wagepan$nr
)
table(
wagepan$nr
)
wagepan %>%
count(nr)
nr = 1
Jalankan:
wagepan %>%
filter(
nr == 1
)
nr = 1
wagepan %>%
filter(
nr == 1
)
nr = 13
wagepan %>%
filter(
nr == 13
)
wagepan %>%
filter(
nr == 13
) %>%
arrange(
year
)
