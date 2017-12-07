## Gapminder dataset

url <- "http://leg.ufpr.br/~fernandomayer/data/pib_gapminder_en.csv"
da <- read.table(url, header = TRUE,
                 sep = ",", dec = ".",
                 stringsAsFactors = FALSE)
str(da)
head(da)

unique(da$country)
length(unique(da$country))

unique(da$year)
length(unique(da$year))

unique(da$continent)
table(da$continent)
barplot(table(da$continent))

hist(da$lifeExp)

## Make a histogram of lifeExp for your own country
hist(da$lifeExp[da$country == "Brazil"],
     main = "Brazil", xlab = "Life expectancy",
     ylab = "Frequency")

par(mfrow = c(1,2))
boxplot(da$lifeExp[da$country == "Brazil"],
        ylim = c(45, 80))
boxplot(da$lifeExp[da$country == "Uruguay"],
        ylim = c(45, 80))
par(mfrow = c(1,1))
range(da$lifeExp[da$country == "Brazil"])
range(da$lifeExp[da$country == "Uruguay"])

boxplot(lifeExp ~ country, data = da,
        subset = country == "Brazil")
boxplot(lifeExp ~ country, data = da,
        subset = country %in% c("Brazil", "Uruguay"))

countries <- c("Brazil", "Colombia", "Argentina",
               "Cuba", "Mexico", "Costa Rica",
               "Chile", "Uruguay", "Morocco")
da2 <- subset(da, country %in% countries)
str(da2)
unique(da2$country)

## Make a boxplot of lifeExp for all countries
boxplot(lifeExp ~ country, data = da2,
        las = 3)

## lattice package
library(lattice)
bwplot(~ lifeExp, data = da2)
bwplot(lifeExp ~ country, data = da2)
bwplot(lifeExp ~ country | factor(year), data = da2,
       scales = list(x = list(rot = 90)))

histogram(~ lifeExp | country, data = da2)

## Split-Apply-Combine strategy
names(da2)

apply(da2[,c(5,6)], 2, mean)
apply(da2[,c(5,6)], 2, sd)

sapply(da2[,c(5,6)], mean)
lapply(da2[,c(5,6)], mean)

tapply(da2$lifeExp, da2$country, mean)
tapply(da$lifeExp, da$country, mean)

with(da2, tapply(lifeExp, country, mean))
with(da2, tapply(lifeExp, list(country, year), mean))

## aggregate()
aggregate(lifeExp ~ country, data = da2, mean)
aggregate(lifeExp ~ country + year, data = da2, mean)

aggregate(cbind(lifeExp, gdpPercap) ~ country, data = da2, mean)

library(plyr)
ddply(da2, .(country), summarize,
      average = mean(lifeExp),
      sd = sd(lifeExp),
      median = median(lifeExp))

ddply(da2, .(country, year), summarize,
      average = mean(lifeExp),
      sd = sd(lifeExp),
      median = median(lifeExp))

