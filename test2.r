data(mtcars)
library(ggplot2)
plot(mtcars$hp, mtcars$mpg, main = "hp vs mpg", xlab = "Horsepower", ylab = "Miles Per Gallon")

cor.test(mtcars$hp, mtcars$mpg, method = "pearson")
cor.test(mtcars$hp, mtcars$mpg, method = "spearman")

