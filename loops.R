#loops

analyze <- function(data){
  #read in data as a csv with no headers as default
  my_data <- read.csv(data, header = F)
  #plot the mean of each column within the data loaded in
  plot(apply(my_data, 2, mean), main = filename)
}


inflammation_files <- dir(
  "data",
  full.names = T,
  pattern = "^inflammation"
)

for(filename in inflammation_files){
  analyze(filename)
}

x <- 1:5
sum(x)

sum_x <- 0
for(i in x){
  sum_x <- sum_x + i
  cat("i:",i,"\n")
  cat("sum x:",sum_x,"\n")
}


#bring x to the y power
exponentiate <- function(x, y){
  #start with x to the zero power, bring it up to the yth power
  result <- 1
  for(i in 1:y){
    result <- result*x
  }
  return(result)
}

exponentiate(2,2)



product <- function(x,y){
  product1 <- 0
  if(x*y > 0){
  for(i in 1:y){
    product1 <- product1 + x
  }
  return(product1)
  }
  else{
    return("SORRY")
  }
}


print_N <- function(N){
  for(i in 1:N){
  print(i)}
}

#takes mean of each column
patient_mean_function <- function(filename){
  dat <- read.csv(filename,header=F)
  rows_cols <- dim(dat)
  dat_cols <- rows_cols[2]
  means <- numeric(dat_cols)
  for(i in 1:dat_cols){
    means[i] <- mean(dat[,i])
  }
  plot(means,main = filename)
}

patient_mean_function("data/inflammation-01.csv")



day_mean_function <- function(filename){
  dat <- read.csv(filename,header=F)
  dat <- as.matrix(dat)
  rows_cols <- dim(dat)
  dat_rows <- rows_cols[1]
  print(dat_rows)
  means <- c()
  print(means)
  for(i in 1:dat_rows){
    means <- c(means, mean(dat[i,]))
  }
  plot(means,main = filename)
}

day_mean_function("data/inflammation-01.csv")






##########Writing plots - pdf() and then put in the plots, dev.off() to stop writing
pdf("inflammation-02.pdf")
analyze("data/inflammation-02.csv")
analyze("data/inflammation-01.csv")
dev.off()