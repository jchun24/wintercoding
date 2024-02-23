library(MASS)    
library(corrplot) 
data(Boston)
cor_matrix <- cor(Boston)

corrplot(cor_matrix, method = "color", type = "upper", tl.col = "black", tl.srt = 90, 
         cl.lim = c(-1, 1))

