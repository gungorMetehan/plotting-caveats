library(tidyverse)

# data
data <- data.frame(
  team = c("Galatasaray", "Fenerbahçe", "Beşiktaş", "Trabzonspor", "Bursaspor", "İstanbul Başakşehir"),
  n = c(25, 19, 16, 7, 1, 1))

# ordering
data <- data %>%
  arrange(n) %>%
  mutate(team = factor(team, levels = team))

# radial barplot
data |> ggplot(aes(x = team, y = n)) +
  geom_bar(fill = "#ffce8e", stat = "identity") +
  geom_text(
    hjust = 1, size = 3,
    aes(y = 0, label = paste(team, " "), family = "AvantGarde")
  ) +
  theme(
    panel.grid.minor.y = element_blank(),
    panel.grid.major.y = element_blank(),
    legend.position = "none",
    axis.text = element_blank(),
    axis.ticks = element_blank(),
    panel.background = element_rect(fill = "#f8f8f8", color = NA),
    plot.background = element_rect(fill = "#f8f8f8", color = NA)
  ) +
  xlab("") +
  ylab("") +
  coord_polar(theta = "y") +
  ylim(0, 30)

# ordering - 2
data <- data %>%
  arrange(desc(n)) %>%
  mutate(team = factor(team, levels = team))

# barplot
data |> ggplot(aes(x = team, y = n)) +
  geom_bar(fill = "#ffce8e", stat = "identity") +
  geom_text(
    aes(label = n),
    vjust = -0.5, size = 5, family = "AvantGarde"
  ) +
  theme_minimal(base_family = "AvantGarde") +
  theme(
    panel.grid.minor = element_blank(),
    panel.grid.major.x = element_blank(),
    panel.background = element_rect(fill = "#f8f8f8", color = NA),
    plot.background = element_rect(fill = "#f8f8f8", color = NA),
    axis.title = element_blank()
  ) +
  ylim(0, 30)

# lollipop plot
data_lollipop <- data %>%
  arrange(n) %>%
  mutate(team = factor(team, levels = team))

ggplot(data_lollipop, aes(x = team, y = n)) +
  geom_segment(aes(x = team, xend = team, y = 0, yend = n),
               color = "grey70", linewidth = 1) +
  geom_point(color = "#ffce8e", size = 5) +
  geom_text(aes(label = n),
            hjust = -1.5,
            size = 4,
            family = "AvantGarde") +
  coord_flip() +
  scale_x_discrete(expand = expansion(mult = c(0.3, 0.3))) +
  theme_light(base_family = "AvantGarde") +
  theme(
    panel.grid.major.y = element_blank(),
    panel.border = element_blank(),
    axis.ticks.y = element_blank(),
    panel.background = element_rect(fill = "#f8f8f8", color = NA),
    plot.background = element_rect(fill = "#f8f8f8", color = NA),
    axis.title = element_blank()
  ) +
  ylim(0, 30)