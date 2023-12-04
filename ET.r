library(ggplot2)

ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  theme_minimal() +
  labs(title = "Relationship between Horsepower and MPG",
       x = "Horsepower (hp)",
       y = "Miles per Gallon (mpg)")
