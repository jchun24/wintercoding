library(MASS)
data("Boston")
#head(Boston)
#pairs(~rm + medv, data = Boston)
pairs(~crim + zn + indus + chas + nox + rm + age + dis + rad + tax + ptratio + black + lstat + medv, data = Boston)
correlationMatrix <- cor(Boston)
print(correlationMatrix)

library(ggplot2)
#plot(Boston$rm, Boston$medv, main = "Room and Median Value", xlab = "Room", ylab = "Median")

