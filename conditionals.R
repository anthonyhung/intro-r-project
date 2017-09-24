#conditionals in R
#by Anthony Hung

num <- 3

if(num > 5){
  print("greater than 5!")
} else{
  print("not greater than 5!")
}

#exercise: write a function to return (0,-1, 1) based on sign of input integer. call the function "sign"
sign <- function(x){
  if(class(x) == "integer"){
  if(x>0){
    return(1)
  }
  if(x<0){
    return(-1)
  }
  else{return(0)}}
  else{return("Error, please try again")}
}

if(1 > 0 & -1 > 0){
  print("Both Parts are true")
} else{
  print("at least one part is false")
}

if(1 > 0 | -1 > 0){
  print("at least one Part is true")
} else{
  print("both parts are false")
}

if(1>0){
  if(-1>0){print("both are true")
    
  }else{print("at least one is false")}
  
}else{print("at least one is false")}



#grabbing odd numbers
n100 <- seq(1,100)

getOdd <- function(v){
  return(v[v %% 2 == 1])
}



#exercise: write a function which takes 3 arguments;
#v is a vector of integers
#x is a number to divide by to check for even divisibility
#y is a second number to check for even divisibility
#output = vector of all numbers in v evenly divisible by x AND y
# note: you must use a for loop

dubl_div <- function(v,x,y){
  success <- c()
  for(i in v){
    if(i %% x == 0 & i %% y == 0)
      success <- c(success, i)
  }
  if(length(success) <1){
    return("no numbers meet the criteria")
  }else{
  return(success)}
}

dubl_div <- function(v,x,y){
  return(v[v %% x == 0 & v %% y == 0])
}



prime <- function(v){
  vector <- c()
  for(i in v){
    class <- "TRUE"
    for(x in 1:100)
    if(i %% x != 0){class <- "FALSE"}
  vector <- c(vector,class)
  }
  return(vector)
}
