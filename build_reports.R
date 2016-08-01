library(knitr)
knit2html(input = "modeling1.Rmd", output = "reports/momdeling1.html")

setwd("~/Documents/OneDrive/Forschung/Online_Behavior_Therapy/analysis")

library(rmarkdown)
rmarkdown::render(input = "modeling1.Rmd")



sessionInfo()
normalizePath(getwd())
?normalizePath
