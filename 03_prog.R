## Programming with R

for(i in 1:10){
    print(i)
}

## for(<index> in <values>){
##     <commands>
## }

x <- 100:200
for(i in 1:10){
    print(x[i])
}

for(i in c(2, 9, 4, 6)){
    print(i^2)
}

c(2, 9, 4, 6)^2

## Importing a CSV file
da <- read.table("data/notas.csv", header = TRUE,
                 sep = ";", dec = ",",
                 stringsAsFactors = FALSE)
str(da)

names(da) <- c("name", "test1", "test2", "test3")
names(da)
str(da)

da$name
da$name <- gsub("Aluno", "Student", da$name)
str(da)

head(da)
nrow(da)

class(da[1, c("test1", "test2", "test3")])
sum(da[1, c("test1", "test2", "test3")])

for(i in 1:nrow(da)){
    print(da[i, c("test1", "test2", "test3")])
}



for(i in 1:nrow(da)){
    sum(da[i, c("test1", "test2", "test3")])
}

da$mean <- 0
for(i in 1:nrow(da)){
    da$mean[i] <- sum(da[i, c("test1", "test2", "test3")])/3
}

tests <- c("test1", "test2", "test3")
ntests <- length(tests)

da$mean2 <- 0
for(i in 1:nrow(da)){
    da$mean2[i] <- sum(da[i, tests])/ntests
}

da$mean3 <- 0
mean(da[1, tests])
class(da[1, tests])
as.numeric(da[1, tests])
class(as.numeric(da[1, tests]))
mean(as.numeric(da[1, tests]))
for(i in 1:nrow(da)){
    da$mean3[i] <- mean(as.numeric(da[i, tests]))
}

## Coefficient of Variation
## CV = sd/mean
std <- sd(da[1, tests])
avg <- mean(as.numeric(da[1, tests]))
std/avg

cv <- function(x){
    std <- sd(x)
    avg <- mean(x)
    cv <- std/avg
    return(cv)
}

cv(c(2,4,5,6))
cv(as.numeric(da[1, tests]))

da$CV <- 0
for(i in 1:nrow(da)){
    da$CV[i] <- cv(as.numeric(da[i, tests]))
}

## if() statements

x <- 100:200
for(j in 1:10){
    if(x[j] <= 105){
        print("Less than or equal to 105")
    }
}

for(j in 1:10){
    if(x[j] <= 105){
        print("Less than or equal to 105")
    } else{
        print("Greater than 105")
    }
}

## Using an if() statement, create a new column in this
## data frame, saying "Approved" if the mean of student
## is greater than or equal to 7, and "Not approved" otherwise.
da$situation <- NA
for(i in 1:nrow(da)){
    if(da$mean[i] >= 7){
        da$situation[i] <- "Approved"
    } else{
        da$situation[i] <- "Not approved"
    }
}

## Vectorization

x <- 1:1000000
y1 <- numeric(length(x))
head(y1)

system.time(
for(i in 1:length(x)){
    y1[i] <- x[i]^2
}
)
head(y1)

system.time(
y2 <- x^2
)
head(y2)

all.equal(y1, y2)

## The *apply() family of functions

mean(da$test1)
mean(da$test2)
apply(da[, c(2,3)], MARGIN = 2, mean)
## The R way to do things
da$mean.apply <- apply(da[, tests], MARGIN = 1, mean)
da$cv.apply <- apply(da[, tests], MARGIN = 1, cv)

## The ifelse() function
da$situation2 <- ifelse(da$mean >= 7, "Approved", "Not approved")
head(da)



