# setting seed for a reproducible example
set.seed(12)

# data set
group = c(rep("A",400), rep("B",400), rep("B",400), rep("C",25))
vals = c(rnorm(400, 11, 5.5), rnorm(400, 12.5, 1), rnorm(400, 17.5, 1), rnorm(25, 25, 4))
box_df <- data.frame(group, vals)

# data visualization
library(ggplot2)

boxplot1 <- ggplot(data = box_df, aes(x = group, y = vals, fill = group)) +
  geom_boxplot(alpha = 0.75) +
  scale_fill_manual(values = c("#ff764a", "#ef5675", "#7a5195")) +
  theme_classic(base_family = "AvantGarde") +
  theme(
    legend.position = "none",
    axis.title.x = element_text(vjust = -0.5, hjust = 0.5),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank()
    ) +
  labs(x = "Group", y = "")

boxplot1 
  
boxplot2 <- ggplot(data = box_df, aes(x = group, y = vals, fill = group)) +
  geom_boxplot(alpha = 0.75) +
  scale_fill_manual(values = c("#ff764a", "#ef5675", "#7a5195")) +
  geom_jitter(color = "grey75", size = 0.75, alpha = 0.7) +
  theme_classic(base_family = "AvantGarde") +
  theme(
    legend.position = "none",
    axis.title.x = element_text(vjust = -0.5, hjust = 0.5),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank()
  ) +
  labs(x = "Group", y = "")

boxplot2 

boxplot3 <- ggplot(data = box_df, aes(x = group, y = vals, fill = group)) +
  geom_violin(width= 0.8) +
  geom_boxplot(alpha = 0.75, color = "grey90", width=0.2) +
  scale_fill_manual(values = c("#ff764a", "#ef5675", "#7a5195")) +
  theme_classic(base_family = "AvantGarde") +
  theme(
    legend.position = "none",
    axis.title.x = element_text(vjust = -0.5, hjust = 0.5),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank()
  ) +
  labs(x = "Group", y = "")

boxplot3