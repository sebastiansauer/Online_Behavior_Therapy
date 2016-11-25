
# load libraries


packs_needed <- c("knitr",
        "corrr",
        "corrplot",
        "mosaic",
        "readr",
        "purrr",
        "broom",
        "psych",
        "caret",
        "knitr",   # load early!
        "gridExtra",
        "tibble",
        "tidyr",
        #"DiagrammeR",
        "DT",
        "dplyr",  # prio 1
        "ggplot2",  # prio 1
        "compute.es",
        "doMC",
        "pscl",
        "magrittr",
        "mice",
        "testthat",
        "glmnet",
        "leaps",
        "stringr"
        )

packs_installed <- packs_needed %in% rownames(installed.packages())
if(any(!packs_installed)) install.packages(packs_needed[!packs_installed])
lapply(packs_needed, library, character.only=T)



#
# library(purrr)
# library(doMC)
# library(pscl)  # pseudo R^2
# library(magrittr) # piping
# library(mice)  # imputation
# library(testthat)  # testing
# library(readr) # csv import
# library(knitr) # rmarkdown
# library(tidyr) # tibbling objects
# library(caret) # modeling
# library(ggplot2) # plotting
# library(tibble) # tibble
# library(dplyr) # data wrangling
# library(broom)  # tidying model results to a data frame
# library(stargazer)  # tables for linear models
#
#
# library(knitr)
# library(corrr)
# library(corrplot)
# library(mosaic)
# library(readr)
# #library(stringr)
# #library(ggvis)
# #library(pander)
# library(purrr)
# library(broom)
# library(psych)
# # library(DiagrammeR)
# library(DT)
# library(dplyr)
# library(ggplot2)
# library(gridExtra)
# library(broom)
# library(compute.es)
# library(corrr)
# library(purrr)
#
#
# library(doMC)  # multiple cores
# library(pscl)  # pseudo R^2
# library(magrittr) # piping
# library(mice)  # imputation
# library(testthat)
#
# library(glmnet)
# library(testthat)  # testing
# library(leaps)  # regression leaps
# library(doMC)  # multiple cores
# library(pscl)  # pseudo R^2
# library(magrittr) # piping
# library(mice)  # imputation
# library(testthat)
# library(readr) # csv import
# library(knitr) # rmarkdown
# library(tidyr) # tibbling objects
# library(caret) # modeling
# library(ggplot2) # plotting
# library(tibble) # tibble
# library(dplyr) # data wrangling
# library(purrr)  # functional programming
# library(stringr)
# library(corrr)
}

rm(packs_installed)
rm(packs_needed)

message("libaries laoded.")