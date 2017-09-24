#review of R
# by anthony hung

#assignment
x <- 3
y <- 1
z <- x + y


#functions
square <- function(x){
  return(x*x)
}


#conditionals
isOdd <- function(x){
  if(x %% 2 == 0){
    return(FALSE)
  }else{return(TRUE)}
}

#for loops
#mysum takes vector v and sums all elements
mySum <- function(v){
  acc <- 0
  for(i in v){
    acc <- acc + i
  }
  return(acc)
}












