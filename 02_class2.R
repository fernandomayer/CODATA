## Indexing and subsetting

## Vectors

x <- c(8, 4, NA, 9, 6, 1, 7, 9)
class(x)
x[1]
x[c(1,4,8)]
x[-c(1,4,8)]
x[1:5]
seq(1,8,by=2)
x[seq(1,8,by=2)]


x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
x[c(2,3,4)]
x[2:4]
x[-c(1,5)]
x["a"]
x[c("b", "c", "d")]

is.na(x)
x[3]
x[is.na(x)]
2 == 4
2 != 4
!TRUE
!is.na(x)
x[!is.na(x)]

x[is.na(x)] <- 0
x

## Matrix

m <- matrix(1:9, nrow = 3)
m
class(m)
m[2,2]
m[,3]
m[2,]
class(m[2,])
?"["
m[,3,drop=FALSE]
m[2, ,drop=F]

m[c(1,3), c(2,3)]

rownames(m) <- LETTERS[1:3]
colnames(m) <- letters[24:26]

m[,"z",drop=F]
m[c("A", "C"), c("x", "y")]
m[2:3]

## Lists

lis <- list(c(3,8,7,4), m, 5:0)
lis
class(lis)
lis[[1]]
class(lis[[1]])
lis[[2]]
class(lis[[2]])

lis[[1]][2]
lis[[2]][3,3]
lis[[2]]["C", "z"]

names(lis)
names(lis) <- c("vec1", "mat", "vec2")
lis$vec1
lis[[1]]
lis$vec1[2]
lis$mat[1,2]
lis[["vec1"]]

xlist <- list(a = "Software Carpentry",
              b = 1:10,
              data = head(iris))
xlist[[2]][2]
xlist$b[2]
xlist[["b"]][2]

## Data frame

da <- data.frame(A = 4:1, B = c(2, NA, 5, 8))
da
names(da)
row.names(da)

da[3,2]
da[,2, drop=F]
da[1,]
da["1",]
row.names(da) <- letters[1:4]
da["c",]
da$B[4]

da[is.na(da), ]
is.na(da)
da[is.na(da$A), ]
da[is.na(da$B), ]
is.na(da$A)
is.na(da$B)

da[!is.na(da$B), ]

complete.cases(da)
da[complete.cases(da), ]

## with()

with(da, B)
with(da, B[3])

db <- data.frame(first = "Fernando",
                 last = "Mayer",
                 lucky_number = 0,
                 stringsAsFactors = FALSE)
db
str(db)
db <- rbind(db, list("Debora", "Drucker", 19))
class(c("Debora", "Drucker", 19))
str(db)
db <- rbind(db, list("Hugh", "Shanahan", NA))
str(db)

db <- cbind(db, coffebreak = c(TRUE, TRUE, TRUE))
str(db)

## Conditional selection

x <- c(5, 15, 42, 28, 79, 4, 7, 14)
str(x)

x[x > 15]
x > 15

x > 15 & x <= 35
x[x > 15 & x <= 35]
x > 15 | x <= 35
x[x > 15 | x <= 35]

char <- letters[1:length(x)]
char

x[char == "c"]
char == "c"

char == "a" & char == "c"
char == "a" | char == "c"
x[char == "a" | char == "c"]

x[char == c("a", "c")]
char == c("a", "c")

char %in% c("a", "c")

x[char %in% c("a", "c")]

char[x == 15]
char[x > 30]
char[x %in% c(4, 14)]

## which()
x[x > 15]
which(x > 15)

x[x > 15 & x <= 35]
which(x > 15 & x <= 35)

x[char == "a"]
which(char == "a")

x[char %in% c("a", "c")]
which(char %in% c("a", "c"))

## data frames

dc <- data.frame(year = 2001:2005,
                 obs = c(26, 18, 25, 32, NA),
                 state = c("SP", "RS", "SC", "SC", "RN"),
                 stringsAsFactors = FALSE)
dc
str(dc)

dc[dc$year == 2004, ]
dc[dc$state == "SC", ]
dc[dc$state == "SC", "obs", drop = FALSE]

dc[dc$state == "SC" & dc$obs > 30, ]

dc[dc$obs > 20, ]
dc[dc$obs > 20 & !is.na(dc$obs), ]
dc[dc$obs > 20 & complete.cases(dc), ]

subset(dc, year == 2004)
subset(dc, state == "SC")
subset(dc, obs > 20)
subset(dc, state == "SC", select = obs)

subset(dc, state %in% c("SC", "RS"))

## Create a data frame to store two variables:
## number of habitants and city. City A have 42 habitants,
## city B have 34, city C have 59, and city D have 18
## (numbers are in thousands).
dd <- data.frame(habts = c(42, 34, 59, 18),
                 city = LETTERS[1:4],
                 stringsAsFactors = FALSE)
dd

## Show what city has less than 30 habitants.
dd[dd$habts < 30, ]
dd$city[dd$habts < 30]

## Make a new column stating that cities A and C are at
## the east part of the country and that cities B and D
## are at south.
dd$region <- character(nrow(dd))
dd$region[dd$city %in% c("A", "C")] <- "east"
dd$region[dd$city %in% c("B", "D")] <- "south"
dd

## Select the cities from the south region with less than
## 20 habitants
dd$city[dd$region == "south" & dd$habts < 20]
dd[dd$region == "south" & dd$habts < 20, ]

## Show in what cities from south there are more than 50
## habitants.
dd$city[dd$region == "east" & dd$habts > 50]
dd[dd$region == "east" & dd$habts > 50, ]

## What region has cities with less than 50 habitants?
dd$region[dd$habts < 50]
unique(dd$region[dd$habts < 50])
dd[dd$habts < 50, ]
