## libraries and installations


install.packages("ggplot2")
install.packages("dplyr")
install.packages("ggpubr") ## multiple graphs on one page

library(readxl)
library(ggplot2)
library(dplyr)
library(ggpubr)


## (Alt + L) to collapse lines

table_1 <- read_excel("R/Research/RegressionData.xlsx", sheet = 'Sheet1', col_names = c("x", "y"))
table_2 <- read_excel("R/Research/RegressionData.xlsx", sheet = 'Sheet2', col_names = c("x", "y"))
table_3 <- read_excel("R/Research/RegressionData.xlsx", sheet = 'Sheet3', col_names = c("x", "y"))
table_4 <- read_excel("R/Research/RegressionData.xlsx", sheet = 'Sheet4', col_names = c("x", "y"))
table_5 <- read_excel("R/Research/RegressionData.xlsx", sheet = 'Sheet5', col_names = c("x", "y"))
table_6 <- read_excel("R/Research/RegressionData.xlsx", sheet = 'Sheet6', col_names = c("x", "y"))
table_7 <- read_excel("R/Research/RegressionData.xlsx", sheet = 'Sheet7', col_names = c("x", "y"))
table_8 <- read_excel("R/Research/RegressionData.xlsx", sheet = 'Sheet8', col_names = c("x", "y"))
table_9 <- read_excel("R/Research/RegressionData.xlsx", sheet = 'Sheet9', col_names = c("x1", "x2", "x3", "x4", "y"))
table_10 <- read_excel("R/Research/RegressionData.xlsx", sheet = 'Sheet10', col_names = c("x1", "x2", "x3", "x4", "y"))


## Sheets

## Sheet 1

t1 <- ggplot((data = table_1), aes(x = x, y = y)) + 
  geom_point() +
  stat_smooth(method = "lm", col = "yellow")
t1 

x1 <- table_1$y + table_1$x
fit1 <- lm(y ~ x1, data = table_1) ## (0 + x1) makes it where the origin is at 0
summary(fit1)




## Sheet 2

t2 <- ggplot((data = table_2), aes(x = x, y = y)) + 
  geom_point() +
  stat_smooth(method = "lm", col = "yellow")
t2 

x2 <- table_2$y + table_2$x
fit2 <- lm(y ~ x2, data = table_2) ## (0 + x2) makes it where the origin is at 0
summary(fit2)




## Sheet 3
 

t3 <- ggplot((data = table_3), aes(x = x, y = y)) + 
  geom_point() +
  stat_smooth(method = "lm",col = "yellow")
t3 

x3 <- table_3$y + table_3$x
fit3 <- lm(y ~ x3, data = table_3)
summary(fit3)





## Sheet 4

t4 <- ggplot((data = table_4), aes(x = x, y = y)) + 
  geom_point() +
  stat_smooth(method = "lm",col = "yellow")
t4 

x4 <- table_4$y + table_4$x
fit4 <- lm(y ~ x4, data = table_4)
summary(fit4)





## Sheet 5

t5 <- ggplot((data = table_5), aes(x = x, y = y)) + 
  geom_point() +
  stat_smooth(method = "lm", col = "yellow")
t5 

x5 <- table_5$y + table_5$x
fit5 <- lm(y ~ x5, data = table_5)
summary(fit5)




## Sheet 6


t6 <- ggplot((data = table_6), aes(x = x, y = y)) + 
  geom_point() +
  stat_smooth(method = "lm", formula = y ~ x + I(x^2), col = "yellow")
t6 

x6 <- table_6$y + (I(table_6$x)^2)
fit6 <- lm(y ~ x6, data = table_6)
summary(fit6)




## Sheet 7

t7 <- ggplot((data = table_7), aes(x = x, y = y)) + 
  geom_point() +
  stat_smooth(method = "lm", col = "yellow")
t7 






## Sheet 8

t8 <- ggplot((data = table_8), aes(x = x, y = y)) + 
  geom_point() +
  stat_smooth(method = "lm", col = "yellow")
t8 

B <- 1



## Sheet 9


B1 <- 1
C1 <- 1
D1 <- 1
E1 <- 1


## Linear Regression

t9 <- ggplot((data = table_9), aes(x = y + (x1*B1) + (x2*C1) + (x3*D1) + (x4*E1), y = y)) + 
  geom_point() +
  stat_smooth(method = "lm", col = "yellow")
t9 


x9 <- (table_9$x1 * B1) + (table_9$x2 * C1) + (table_9$x3 * D1) + (table_9$x4 * E1)  
fit9 <- lm(y ~ x9, data = table_9)
summary(fit9)


## Sheet 10


B2 <- 1
C2 <- 1
D2 <- 1
E2 <- 1

## Linear Regression
t10 <- ggplot((data = table_10), aes(x = y + (x1*B2) + (x2*C2) + (x3*D2) + (x4*E2), y = y)) + 
  geom_point() +
  stat_smooth(method = "lm", col = "yellow")
t10 


x10 <- (table_10$x1 * B2) + (table_10$x2 * C2) + (table_10$x3 * D2) + (table_10$x4 * E2)  
fit10 <- lm(y ~ x10, data = table_10)
summary(fit10)
