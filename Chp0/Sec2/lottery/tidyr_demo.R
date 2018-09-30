
library(readr)
lottery_df <- read_csv("lottery_utf8.csv")
lottery_df <- lottery_df[c(2,6:12)] 
names(lottery_df) <- c("Date", paste0("X",1:6), "S")


library(magrittr)
library(dplyr)
library(tidyr)
library(ggplot2)

a(b(c(d)))
d %>% c %>% b %>% a

View(lottery_df)
lottery_df %>% View


lottery_df %>% gather(key = Ball, value = X, X1:S) %>% arrange(Date) %>% 
  group_by(X) %>% summarise(count=n()) %>% ggplot(.) + geom_bar(mapping = aes(x=X,y=count),stat="identity")


lottery_df %>% gather(key = Ball, value = X, X1:S) %>% arrange(Date) %>% 
  group_by(X) %>% summarise(count=n()) %>% ggplot(.) + geom_bar(mapping = aes(x=reorder(X,-count),y=count),stat="identity")


lottery_df %>% gather(key = Ball, value = X, X1:S) %>% arrange(Date) %>% View


