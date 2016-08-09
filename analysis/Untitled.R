#load library
library(MASS)
#simulate dataset of 2 variables with correlation of .50, N=1000
simul.data = mvrnorm(1000, mu = c(0,0), Sigma = matrix(c(1,0.50,0.50,1), ncol = 2), empirical = TRUE)
simul.data = as.data.frame(simul.data)
colnames(simul.data) = c("continuous1","continuous2")


#divide into bins of equal length
simul.data["likert10"] = as.numeric(cut(unlist(simul.data[2]),breaks=10))
simul.data["likert7"] = as.numeric(cut(unlist(simul.data[2]),breaks=7))
simul.data["likert5"] = as.numeric(cut(unlist(simul.data[2]),breaks=5))
simul.data["likert4"] = as.numeric(cut(unlist(simul.data[2]),breaks=4))
simul.data["likert3"] = as.numeric(cut(unlist(simul.data[2]),breaks=3))
simul.data["likert2"] = as.numeric(cut(unlist(simul.data[2]),breaks=2))
#correlations
round(cor(simul.data),3)


x <- 1:100
x2 <- as.numeric(cut(x, 10))
cor(x, x2)

breaks_ <- c(0,4,6,8,10,12,14,30,70,100)
x3 <- as.numeric(cut(x, breaks = breaks_))
cor(x, x3)
