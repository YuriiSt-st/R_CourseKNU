#1.Функція add2(x, y), яка повертає суму двох чисел
add2 <- function(x,y){
  x+y
}
add2(1,2)
#2.Функція above(x, n), яка приймає вектор та число n, та повертає всі елементі вектору, які більше n. По замовчуванню n= 10
above <- function(x,n=10){
  x[x>n]
}
a <- c(1:15)
above(a,14)
#3.Функція my_ifelse(x, exp, n), яка приймає вектор x, порівнює всі його елементи за допомогою expз n, та повертає елементи вектору, які відповідають умові expression. Наприклад, my_ifelse(x, “>”, 0)повертає всі елементи x, які більші 0. Exp може дорівнювати “<”, “>”, “<=”, “>=”, “==”.  
#Якщо exp не співпадає ні з одним з цих виразів, повертається вектор x.
my_ifelse <- function(x, exp, n){
 
  if(exp == '>'){
    #only for one condition
    if(length(x[x>n])==0 ){x
      }else{
      x[x>n]  
    }
        } else if(exp == '<'){
    x[x<n]
  } else if(exp == '=='){
    x[x==n]
  } else if(exp == '<='){
    x[x<=n]
  } else if(exp == '>='){
    x[x>=n]
  } 
  else{
    x
  }
 }
my_ifelse(a,'>',4) 
#4.Функція columnmean(x, removeNA), яка розраховує середнє значення (mean) по кожному стовпцю матриці, або dataframe.Логічний параметр remove NA вказує, чи видаляти NAзначення. По замовчуванню він дорівнює TRUE.
columnmean <- function(x, removeNA = TRUE ){
  if(removeNA==FALSE){
    for (i in 1:ncol(x)) {
      print(mean(x[,i]))
    }
   
  } else if(removeNA == TRUE)
  {
    for (r in 1:ncol(x)) {
      print(mean(x[,r],na.rm = TRUE))
    }
  } else {
    "Error"
  }
}
b<-c(1:10,NA,NA)
matrix_b <- matrix(b,nrow = 3, byrow = T)
columnmean(matrix_b,removeNA=FALSE)

