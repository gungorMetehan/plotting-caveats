smartphone_ms <- data.frame(company = c("RIM", "Apple", "Palm", "Motorola", "Nokia", "Other"),
                            perc = c(39, 19.5, 9.8, 7.4, 3.1, 21.2))

smartphone_ms <- smartphone_ms |> 
  arrange(desc(company)) |>
  mutate(yp = cumsum(perc)- 0.5*perc) |>
  mutate(perc_n = paste0(round(perc/sum(perc)*100, 2), "%"))
  
smartphone_ms

ggplot(smartphone_ms, aes(x = "", y = perc, fill = company)) +
  geom_bar(stat = "identity", width = 1, color = "white") +
  coord_polar("y", start = 0) +
  theme_void() + 
  theme(legend.position = "none",
        plot.title = element_text(hjust = .5, family = "AvantGarde")) +
  geom_text(aes(y = yp, label = company), color = "white", size = 2.5, family = "AvantGarde") +
  geom_text(aes(x = 1.7, label = perc_n), position = position_stack(vjust = .5), family = "AvantGarde", size = 5) +
  ggtitle("U.S. SmartPhone Marketshare") +
  scale_fill_manual(values = c("RIM" = "#109ee0",
                               "Apple" = "#50bd16",
                               "Motorola" = "#f71924",
                               "Nokia" = "#e00083",
                               "Other" = "#ab21b5",
                               "Palm" = "#fd8e08"))

