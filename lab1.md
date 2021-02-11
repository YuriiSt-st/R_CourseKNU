---
title: "Lab 1"
author: "Yurii Stashchuk"
date: "11/02/2021"
output: html_document
---
## 1. Створити змінні базових (atomic) типів. Базові типи: character, numeric, integer, complex, logical

```{}
a1 <- "a"
b1 <- 1.4
c1 <- 1
d1 <- 1+0i
f1 <- TRUE
```

## 2. Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14, 2.71, 0, 13; 100 значень TRUE

```{}
a2 <- c(5:75)
b2 <- c(3.14,2.71, 0, 13)
c2 <- rep(TRUE,100)
```

## 3. Створити наступну матрицю за допомогою matrix, та за допомогою cbind або rbind
```{}
matrix_a <-matrix(c(0.5,1.3,3.5,3.9,131,2.8,0,2.2,4.6,2,7,5.1), byrow = TRUE, nrow = 4, ncol=3)
a3 <- c(0.5,1.3,3.5)
b3 <- c(3.9,131,2.8)
c3 <- c(0,2.2,4.6)
d3 <- c(2,7,5.1)
matrix_b <- matrix(cbind(a3,b3,c3,d3),byrow = TRUE, nrow = 4, ncol=3)
```
```
##     [,1]  [,2] [,3]
##[1,]  0.5   1.3  3.5
##[2,]  3.9 131.0  2.8
##[3,]  0.0   2.2  4.6
##[4,]  2.0   7.0  5.1
```
## 4. Створити довільний список (list), в який включити всі базові типи
```{}
my_list <- list(a1,b1,c1,d1,f1)
```

## 5. Створити фактор з трьома рівнями «baby», «child», «adult»
```{}
my_factor <- factor(c("baby","child","adult"), order=T, levels=c("adult","child","baby"))
```
```
## [1] baby  child adult
## Levels: adult < child < baby
```
## 6. Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11.Знайти кількість значень NA.
```{}
a6 <- c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)
```
```{}
which(is.na(a6))[1]
```
```
## [1] 5
```
```{}
length(which(is.na(a6)))
```
```
##[1] 3
```
## 7.Створити довільний dataframe та вивести в консоль
```{}
a7 <- c(1:10)
b7 <- c(letters[1:10])
my_dataframe <- data.frame(a7,b7)
```
```
##   a7 b7
## 1   1  a
## 2   2  b
## 3   3  c
## 4   4  d
## 5   5  e
## 6   6  f
## 7   7  g
## 8   8  h
## 9   9  i
## 10 10  j
```
## 8.Змінити імена стовпців цього dataframe
```{}
names(my_dataframe) <- c("numbers","letters")
my_dataframe
```
```
## numbers letters
## 1        1       a
## 2        2       b
## 3        3       c
## 4        4       d
## 5        5       e
## 6        6       f
## 7        7       g
## 8        8       h
## 9        9       i
## 10      10       j
```