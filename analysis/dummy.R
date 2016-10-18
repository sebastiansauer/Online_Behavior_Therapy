library("ggplot2")
library("ggstance")

df <- data.frame(
  Group = factor(rep(1:3, each = 4), labels = c("Drug A", "Drug B", "Control")),
  Subject = factor(rep(1:6, each = 2), labels = c("A", "B", "C", "D", "E", "F")),
  Result = rnorm(12)
)

vertical <- ggplot(df, aes(Subject, Result))+
  geom_boxplot(aes(fill = Group))+
  facet_grid(. ~ Group, scales = "free_x")
vertical


vertical + coord_flip()
vertical + facet_grid(Group ~ ., scales = "free_x") + coord_flip()


horizontal <- ggplot(df, aes(Result, Subject))+
  geom_boxploth(aes(fill = Group))+
  facet_grid(Group ~ ., scales = "free_y")
horizontal




summary(data$responder_3m)
sum3








## Assocation of predictors with numeric outcome variable `CYBOCS_3m`

Now let's look at something similar: The association of the (numeric) predictors with the numeric outcome variable

```{r}
data_class %>%
select_if(is.numeric) %>%
correlate %>%
focus(CYBOCS_3m) %>%
arrange(desc(abs(CYBOCS_3m))) %>% print(n=32)

```
Hey, that looks quite promising!

Let's finally plot it:



  ```{r plot_assocation_predictors_cybocs3m}

data_rect <- data.frame(xmin = -Inf, xmax = Inf, ymin = -.1, ymax = .1)


data_class %>%
  select_if(is.numeric) %>%
  correlate  %>%
  focus(CYBOCS_3m) %>%
  arrange(desc(abs(CYBOCS_3m))) %>% print(n=32) %>%
  ggplot(aes(x = reorder(rowname, abs(CYBOCS_3m)), y = CYBOCS_3m)) + geom_point() +
  coord_flip() +
  xlab("predictor") +
  ylab("Correlation with CYBOCS_3m") +
  # ggtitle("Correlations of predictors with outcome (CYBOCS_3m)") +
  geom_hline(yintercept = 0, linetype = "dashed")  +
  geom_rect(data = data_rect,
            aes(ymin = ymin, ymax = ymax, xmin = xmin, xmax = xmax), inherit.aes = FALSE, alpha = .3, fill = "red", color = "red")

```







add_na_col <- function(x){
   mutate(x, na = 0)
}

has_n_col <- function(x, n = 6){
  return(ncol(x) == n)
}



sum4 <- map_if(sum3, has_n_col, add_na_col)



sum5 <- do.call(rbind, sum3)




library(gridExtra)


gg_bar <- function(x_var, ...){
  {
    ggplot(data_frame(x_var), aes(x = x_var)) +
      geom_bar() +
      coord_flip() +
      ggtitle(x_var)
  }
}

diamonds %>%
  select_if(negate(is.numeric)) %>%
  lapply(., function(x) gg_bar(x)) -> gg_bar_list

do.call(grid.arrange, gg_bar_list)


detach(data)
debug(tally_OR)



data_comorb %>%
  dplyr::count(Depression, responder_3m)

data_comorb %>%
  mosaic::tally(Depression ~ responder_3m, data =.)


tally_OR(Depression)
dummy




data_comorb %>%
  group_by(Depression, responder_3m) %>%
  summarise(n = n()) %>%
  ggplot(aes(x = Depression, group = factor(responder_3m), y = n, fill = factor(responder_3m))) +
  geom_bar(stat = "identity")



<<<<<<< HEAD

names(data_comorb)


glimpse(iris)
=======
>>>>>>> origin/master
data_comorb %>%
  map(data_comorb, table(., responder_3m))


undebug(plot_mosaic)
<<<<<<< HEAD

plot_mosaic <- function(x, df = data_comorb){
  tally_pred_resp <- mosaic::tally(substitute(x) ~ responder_3m, data = df)
  print(mosaicplot(tally_pred_resp))
=======
plot_mosaic <- function(x, df = data_comorb){
  tally_pred_resp <- table(x, df$responder_3m)
  print(mosaicplot(tally_pred_resp, xlab = x, ylab = df$responder_3m))
>>>>>>> origin/master
}

lapply(data_comorb, plot_mosaic)

<<<<<<< HEAD
dummy <- mosaic::tally(Depression ~ responder_3m, data = data_comorb)
mosaicplot(dummy)



for (i in seq_along(names(data_comorb))){
  print(names(data_comorb)[i])
}


round(prop.table(table(data_comorb[[1]], data_comorb[[2]])),2)


for (i in seq_along(names(data_comorb))){
  my_tab <- prop.table(table(data_comorb[[i]], data_comorb$responder_3m))
  my_tab <- round(my_tab, 2)
  comorb <- names(data_comorb)[i]
  print(comorb)
  print(my_tab)
  mosaicplot(my_tab, ylab = comorb, xlab = "responder_3m")
}

=======
>>>>>>> origin/master
