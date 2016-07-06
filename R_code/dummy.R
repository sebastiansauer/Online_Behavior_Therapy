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



data_comorb %>%
  map(data_comorb, table(., responder_3m))


undebug(plot_mosaic)
plot_mosaic <- function(x, df = data_comorb){
  tally_pred_resp <- table(x, df$responder_3m)
  print(mosaicplot(tally_pred_resp, xlab = x, ylab = df$responder_3m))
}

lapply(data_comorb, plot_mosaic)

