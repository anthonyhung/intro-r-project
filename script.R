# 09-23-2017
x <- 2
x <- 2+2
x <- c(1,3,5)
x <- 1:5
y <- 4

my_data <- read.csv("data/inflammation-01.csv", header=F)

head(my_data)
(rows_cols <- dim(my_data))

class(my_data)

my_data[1,1]
my_data[y,1]
my_data[1:5,1]


my_data[,c("V1","V2","V3")]

col_17 <- my_data$V17

mean(col_17)
median(col_17)
sd(col_17)

mean(my_data[,1])
summary(my_data[,1:3])

max(my_data[5, 3:7])


animal <- c("m", "o", "n", "k", "e", "y")
eon <- animal[c(5,2,3)]
eon

x <- 5:1
x

(less_than3 <- (x < 3))
(xless_than3 <- x[less_than3])

my_col <- my_data[,2]
my_data[my_col == 0,2]
sub_col <- my_col[my_col==0]
other_col <- my_col[my_col != 0]
length(sub_col)
length(other_col)

length(my_col) == sum(length(sub_col)+length(other_col))
sum(my_col) == sum(sum(sub_col)+sum(other_col))


dim(my_data[c(-1,-2,-3)])

my_data$sumV1V2 <- my_data$V1+my_data$V2
dim(my_data)

x[1] <- 100
