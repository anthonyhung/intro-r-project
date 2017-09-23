# Functions in R
# by Anthony Hung

#converts fahrenheit to kelvin
fahr_to_kelvin <- function(temp){
  kelvin <- 273.15 + (temp-32) * (5/9)
  return(kelvin)
}

fahr_to_kelvin(212)
fahr_to_kelvin(32)

#converts kelvin to celsius
kelvin_to_celsius <- function(t){
  celsius <- t - 273.15
  return(celsius)
}

#fahrenheit to celsius
fahr_to_celsius <- function(temp){
  celsius <- kelvin_to_celsius(fahr_to_kelvin(temp))
  return(celsius)
}


y <- c(1:3)
c(y,4)



#exercise: define a function called "fence" which takes 2 vectors and returns the 2nd vector concatenated to the first
fence <- function(x,y){
  newvector <- c(y,x,y)
  return(newvector)
}

fence2 <- function(x,y){
  newvector <- c(y,y)
  newvector <- append(newvector,x,after = length(y))
  return(newvector)
}

fence(y = c(1.:5.), x = c(5.:1.))
fence2(c(1:5),c(5:1))



input_1 <- 20
#default input_2 = 20
my_sum <- function(input_1,input_2 = 20){
  output <- input_1 + input_2
  return(output)
}

my_sum(input_1 = 1, 3)


# define a function center to center your data
center <- function(data, desired){
  #return a new vector that contains original data centered around "desired" value
  #example: center(c(1,2,3),0) => c(-1,0,1)
  centered <- (data - mean(data)) + desired
  return(centered)
}

dat <- read.csv("data/inflammation-01.csv", header = F)
centered <- center(dat$V4, 0)
centered
head(centered)
tail(centered)



# ------ apply functions -------

head(dat)
dim(dat)

patient_1 <- dat[1,]

avg_day_inflamm <- apply(dat, 2, mean)
plot(avg_day_inflamm)      

max_day_inflamm <- apply(dat, 2, max)
plot(max_day_inflamm)

min_day_inflamm <- apply(dat, 2, min)
plot(min_day_inflamm)


#enter in data set as a "name" and get a plot as an output
plotdata <- function(data){
  #read in data as a csv with no headers as default
  my_data <- read.csv(data, header = F)
  #plot the mean of each column within the data loaded in
  plot(apply(my_data, 2, mean))
}

plotdata("data/inflammation-01.csv")
