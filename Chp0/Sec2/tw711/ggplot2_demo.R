library(readr)
tw711_stores_df <- read_csv("711_stores_df.csv")

library(ggplot2)
library(magrittr)

tw711_stores_df %>% 
  ggplot(mapping = aes(x=logitude, y=latitude)) + geom_point()
