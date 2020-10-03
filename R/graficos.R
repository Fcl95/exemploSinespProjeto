#fazer graficos de serie



gerar_grafico_serie <- function(tab, nome_muinicipio){
  tab %>%
  filter(municipio == nome_muinicipio) %>%
    ggplot() +
    geom_line(aes(x = mes_ano, y = vitimas)) +
    labs(x = "Mês", y = "Número de vítimas",
         title = nome_muinicipio) +
    theme_minimal()

}

gerar_grafico_serie(tab = dados_sinesp, nome_muinicipio = "João Pessoa")
