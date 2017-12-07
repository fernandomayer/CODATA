## Evaluating a function
runif(10)

runif(10, min = 5, max = 10)
?runif

runif(min = 2, n = 10, max = 8)
runif(10, 2, 8)

?sample

hello.world <- function(text){
    writeLines(text)
}
hello.world("hello world")
hello.world("something else")

## Use runif to generate 20 random numbers between:
## 2 and 7
## 9 and 4
## alternating argument positions
runif(20, min = 2, max = 7)
runif(max = 9, min = 4, 20)

## See the help page for "+"
?"+"
2 + 2
"+"(2,2)
## Create a function to sum 2 numbers (x and y)
sum2 <- function(x = 2, y = 2){
    x + y
}

sum2()
sum2(x = 2, y = 5)

## Objects
## Everything in R is an object
## Every object in R has a class

x <- 2
x = 2
y <- 4
y <- runif(10)
ls()
rm(x, y)

mass <- 47.5
age <- 122
mass <- mass * 2.3
age <- age - 20

rm(list = ls())

## R has 5 basic data types:
## character
## numeric
## integer
## complex
## logical

## Vectors

x <- c(10, 5, 2, 4, 8, 9)
class(x)

x <- as.integer(x)
class(x)

y <- c(10, 5, 2, 4, 8, 9)
class(y)

object.size(x)
object.size(y)

a <- runif(10)
a
print(a, digits = 2)
print(a, digits = 20)

## Sequences of numbers

seq(1, 10)
1:10
seq(1, 10, by = 2)
seq(1, 10, length.out = 20)
seq(1, 10, length.out = 200)

rep(c(1, 3, 5), 5)
rep(c(1, 3, 5), each = 5)

## Mathematical operations with vectors
x
x * 2
x + c(2, 4, 1)
## recycling rule
x + c(2, 4, 1, 3)

class(x)
length(x)
names(x)


## character vectors

char <- c("brava", "joaquina", "armação")
char
class(char)
length(char)

## logical vectors

logic1 <- char == "brava"
logic1
class(logic1)

x > 4
x >= 4

## Factors
fac <- factor(c("high", "low", "medium", "low", "high",
                "low", "medium", "medium"))
class(fac)
fac
fac <- factor(c("high", "low", "medium", "low", "high",
                "low", "medium", "medium"),
              levels = c("low", "medium", "high"))
fac


## Create an object with the letters A, B, C repeated 15, 12,
## and 8 times, respectively
x <- rep(c("A", "B", "C"), times = c(15, 12, 8))

## Show where are the letter B in this object
x == "B"

## How many B letters are there in this vector? Use the
## function sum() to count this. See ?sum
?sum
sum(x == "B")

## Create an object with 1000 random numbers from runif().
## How many numbers greater than 0.5 are there?
set.seed(123)
y <- runif(1000)
y > 0.5
sum(y > 0.5)

## Calculate the first 50 powers of 2 (e.g. 2^1, 2^2, etc).
## Calculate the square of integers from 1 to 50 (e.g. 1^2, 2^2, etc)
## How many pairs are equal? 2^n = n^2 ?
int <- 1:50
x <- 2^int
y <- int^2
x == y
sum(x == y)
x[x == y]
x[c(2,4)]

## Matrix

mat <- matrix(1:12, nrow = 3, ncol = 4)
mat

mat <- matrix(1:12, nrow = 3, byrow = TRUE)
mat

class(mat)
length(mat)
dim(mat)

cbind(mat, c(9,9,9))
rbind(mat, c(9,9,9,9))

m <- 1:10
class(m)
m
dim(m)
dim(m) <- c(2,5)
m

## Every object can have only one type of data

## list
lis <- list(a = 1:10, b = c("T1", "T2"), TRUE, 2 + 2)
lis

class(lis)
length(lis)
dim(lis)

lis2 <- list(mat = mat, fac = fac)
class(lis2)
length(lis2)
lis2

## Data frame
da <- data.frame(year = 2000:2004,
                 prod = c(32, 54, 25, 48, 29))
da
class(da)
length(da)
dim(da)

## Attributes

x <- 1:3
x
names(x)
names(x) <- c("A", "B", "C")
x
names(x)

x <- list(1, 2, 3)
x
names(x)
names(x) <- c("A", "B", "C")
x


mat
rownames(mat) <- c("A", "B", "C")
colnames(mat) <- c("W", "X", "Y", "Z")
mat

names(da)
row.names(da) <- c("A", "B", "C", "D", "E")
da

## Missing values

## NA = not available

x <- c(3, 5, NA, 2)
class(x)
x
is.na(x)
any(is.na(x))

y <- c(-1, 0, 1)/0
y
## NaN = Not a Number
is.na(y)
is.infinite(y)

## Create the matrix
## 2 8 4
## 0 4 1
## 9 7 5
m <- matrix(c(2, 8, 4, 0, 4, 1, 9, 7, 5), nrow = 3, byrow = TRUE)
m

## Set names for rows and columns of this matrix
rownames(m) <- c("A", "B", "C")
colnames(m) <- c("X", "Y", "Z")
m

## Make a list with 2 components: a vector with A, B, C 
## repeated 2, 5, and 4 times respectively, and the matrix
## created before
ll <- list(rep(c("A", "B", "C"), times = c(2, 5, 4)),
           m)
ll

## Give names to the components of this list
names(ll) <- c("vector", "matrix")
names(ll)
ll

## Create a data frame so that the numbers 23, 34, 56, 21
## are associated with the letters A, B, C, D
da <- data.frame(numbers = c(23, 34, 56, 21),
                 letters = c("A", "B", "C", "D"))
da





