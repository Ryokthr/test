library(dslabs)
data(heights)
options(digits = 3)
library(dplyr)

arg <- mean(heights$height)
ind <- filter(heights, arg < height)
nrow(ind)

a_arg_w <- filter(heights, arg < height & sex %in% c("Female"))
nrow(a_arg_w)

mean(heights$sex == c("Female"))

min <- which.min(heights$height)
heights$height[min]

match(50, heights$height)
heights$sex[1032]

max <- which.max(heights$height)
heights$height[max]

x <- 50:82

sum(!x %in% heights$height)

# question6
heights$height[18] * 2.54
arg * 2.54

heights2 <- mutate(heights, ht_cm = height * 2.54)

#question7
filter(heights2, sex == "female")
females <- data.frame(filter(heights2, sex == "Female"))
nrow(females)
mean(females$ht_cm)

#question8
data(olive)
head(olive)
plot(olive$palmitic, olive$palmiteoleic)

#question9
hist(olive$eicosenoic)

#question10
boxplot(palmitic~region, data = olive)
