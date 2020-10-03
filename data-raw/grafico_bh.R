library(ggplot2)
library(dplyr)


#importacao
dados_sinesp <- readr::read_rds("data/dados_sinesp.rds")


#visualizacao

dados_sinesp %>%
  filter(municipio == "Belo Horizonte") %>%
  ggplot() +
  geom_line(aes(x = mes_ano, y = vitimas)) +
  labs(x = "Mês", y = "Número de vítimas") +
  theme_minimal()

