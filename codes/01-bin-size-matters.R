# dataset
datasets::chickwts

install.packages("ggplot2")
library(ggplot2)

# histogram 1
chickwts |> ggplot(aes(x = weight)) +
  stat_bin(breaks = seq(50, 450, 30), fill = "#ab7aa2", color = "lightgray", alpha = .95) +
  ggtitle("Weight distribution of the chickens") +
  xlab("Weight") +
  ylab("Count") +
  theme_minimal() +
  theme(panel.grid = element_blank()) +
  theme(plot.title = element_text(family = "AvantGarde", size = 18, hjust = 0, color = "#ab7aa2", face = "bold")) +
  theme(axis.title.x = element_text(family = "AvantGarde", size = 12, hjust = 0.5, color = "#ab7aa2", face = "bold")) +
  theme(axis.title.y = element_text(family = "AvantGarde", size = 12, hjust = 0.5, color = "#ab7aa2", face = "bold")) +
  theme(text = element_text(family = "AvantGarde", size = 10, color = "#404040"))

# histogram 2
chickwts |> ggplot(aes(x = weight)) +
  stat_bin(breaks = seq(50, 450, 5), fill = "#ab7aa2", color = "lightgray", alpha = .95) +
  ggtitle("Weight distribution of the chickens") +
  xlab("Weight") +
  ylab("Count") +
  theme_minimal() +
  theme(panel.grid = element_blank()) +
  theme(plot.title = element_text(family = "AvantGarde", size = 18, hjust = 0, color = "#ab7aa2", face = "bold")) +
  theme(axis.title.x = element_text(family = "AvantGarde", size = 12, hjust = 0.5, color = "#ab7aa2", face = "bold")) +
  theme(axis.title.y = element_text(family = "AvantGarde", size = 12, hjust = 0.5, color = "#ab7aa2", face = "bold")) +
  theme(text = element_text(family = "AvantGarde", size = 10, color = "#404040"))
