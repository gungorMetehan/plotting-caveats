# Trump - Biden Data
penn <- data.frame(votes = c(46, 47),
                   candidates = c("Biden", "Trump"))

# Ideal (Barplot)
penn |> ggplot(aes(x = candidates, y = votes, fill = candidates)) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("#4B5EE2", "#BD0608")) +
  geom_label(aes(x = candidates, y = votes, label = votes),
             hjust = 0.50, 
             vjust = 1.5, 
             colour = "white", 
             fill = NA, 
             label.size = NA, 
             family="AvantGarde", 
             size = 10,
             fontface = "bold") +
  theme_light() +
  theme(
    panel.grid.major.y = element_blank(),
    panel.border = element_blank(),
    axis.ticks.x = element_blank(),
    text = element_text(family = "AvantGarde", size = 14),
    plot.title = element_text(hjust = 0),
    axis.title.y = element_text(hjust = 1),
    legend.position = "none") +
  ggtitle("Trump Won", subtitle = "There is a 1% difference between Trump and Biden") +
  xlab("") +
  ylab("")

# Temperature Data
tempdata <- data.frame(mdegree = c(37.9, 38, 37.8, 38.1, 38.4, 38.9, 38.8, 39, 39.2, 39.2, 39.1, 39.3, 39.5, 39.6),
                       years = seq(2012, 2025))

# Not Ideal (Line Plot)
tempdata |> ggplot(aes(x = years, y = mdegree)) +
  geom_line(colour = "#1391A2", size = 1) +
  geom_label(x = 2025, y = 39.6, label = tempdata$mdegree[14]) +
  geom_label(x = 2012, y = 37.9, label = tempdata$mdegree[1]) +
  geom_hline(yintercept = 0, size = 1, color = "black") +
  theme_light() +
  theme(
    panel.grid.major.y = element_blank(),
    panel.border = element_blank(),
    axis.ticks.x = element_blank(),
    text = element_text(family = "AvantGarde", size = 12),
    plot.title = element_text(hjust = 0),
    axis.text.x = element_text(angle = 90, vjust = 0.5),
    axis.title.y = element_text(hjust = 1)) +
  ggtitle("The Annual Average Temperature in Region X") +
  xlab("") +
  ylab("\u00B0C")+
  scale_x_continuous(breaks = years) +
  ylim(0, 40)

# Better (Line Plot)
tempdata |> ggplot(aes(x = years, y = mdegree)) +
  geom_line(colour = "#1391A2", size = 1) +
  geom_label(x = 2025, y = 39.6, label = tempdata$mdegree[14]) +
  geom_label(x = 2012, y = 37.9, label = tempdata$mdegree[1]) +
  geom_hline(yintercept = 37, size = 1, color = "black") +
  theme_light() +
  theme(
    panel.grid.major.y = element_blank(),
    panel.border = element_blank(),
    axis.ticks.x = element_blank(),
    text = element_text(family = "AvantGarde", size = 12),
    plot.title = element_text(hjust = 0),
    axis.text.x = element_text(angle = 90, vjust = 0.5),
    axis.title.y = element_text(hjust = 1)) +
  ggtitle("The Annual Average Temperature in Region X") +
  xlab("") +
  ylab("\u00B0C")+
  scale_x_continuous(breaks = years) +
  ylim(37, 40)
