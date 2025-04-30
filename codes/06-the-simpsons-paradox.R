# dataset
install.packages("palmerpenguins")
library(palmerpenguins)
penguin_dataset <- 
  penguins |>
  na.omit()

# plot 1
ggplot(data = penguin_dataset, aes(x = bill_length_mm, y = bill_depth_mm)) +
  geom_point() + 
  geom_smooth(method = 'lm', formula = y ~ x, color = "#4B5EE2", se = F) +  
  theme_light() +
  labs(x = "Bill Length", y = "Bill Depth", title = "Palmer Penguins: The Relationship Between \nBill Length and Bill Depth", subtitle = "\n") +
  theme(
    panel.grid.major.y = element_blank(),
    panel.border = element_blank(),
    text = element_text(family = "AvantGarde", size = 10, color = "#404040"),
    axis.title.x = element_text(vjust = 1, hjust = 1),
    axis.title.y = element_text(vjust = 1, hjust = 1)) 
 
# sub-grouping
Adelie_only <- subset(penguin_dataset, species == "Adelie")
Chinstrap_only <- subset(penguin_dataset, species == "Chinstrap")
Gentoo_only <- subset(penguin_dataset, species == "Gentoo")

# regression lines
lm_adel <- lm(data = Adelie_only, bill_depth_mm ~ bill_length_mm)
lm_chin <- lm(data = Chinstrap_only, bill_depth_mm ~ bill_length_mm)
lm_gent <- lm(data = Gentoo_only, bill_depth_mm ~ bill_length_mm)

# plot 2
ggplot(data = penguin_dataset, aes(x = bill_length_mm, y = bill_depth_mm, color = species)) +
  geom_point() + 
  geom_smooth(method = 'lm', formula = y ~ x, color = "#4B5EE2", se = F) +
  geom_abline(slope = lm_adel$coefficients[[2]],
              intercept = lm_adel$coefficients[[1]], 
              color = "#a2a2a2") +
  geom_abline(slope = lm_chin$coefficients[[2]],
              intercept = lm_chin$coefficients[[1]], 
              color = "#a2a2a2") +
  geom_abline(slope = lm_gent$coefficients[[2]],
              intercept = lm_gent$coefficients[[1]], 
              color = "#a2a2a2") +
  theme_light() +
  labs(x = "Bill Length", y = "Bill Depth", title = "Palmer Penguins: The Relationship Between \nBill Length and Bill Depth", subtitle = "\n") +
  theme(
    panel.grid.major.y = element_blank(),
    panel.border = element_blank(),
    text = element_text(family = "AvantGarde", size = 10, color = "#404040"),
    axis.title.x = element_text(vjust = 1, hjust = 1),
    axis.title.y = element_text(vjust = 1, hjust = 1),
    legend.title = element_blank())

