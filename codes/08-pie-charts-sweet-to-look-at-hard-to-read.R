# PIE CHART
library(ggplot2)
library(dplyr)
library(patchwork)

# datasets
df1 <- data.frame(category = c("A", "B", "C", "D"), value = c(28, 26, 24, 25))
df2 <- data.frame(category = c("A", "B", "C", "D"), value = c(24, 29, 26, 25))
df3 <- data.frame(category = c("A", "B", "C", "D"), value = c(25, 24, 25, 27))

# colors
fixed_colors <- c(
  "A" = "#488f31",
  "B" = "#ffeab5",
  "C" = "#ed9b69",
  "D" = "#de425b")

# user-defined function for pie-chart
make_pie <- function(data, title) {
  data <- data %>%
    arrange(desc(category)) %>%
    mutate(prop = value / sum(value) * 100,
           ypos = cumsum(prop) - 0.5*prop)
  
  ggplot(data, aes(x = "", y = value, fill = category)) +
    geom_bar(stat = "identity", width = 1, color = "white") +
    coord_polar(theta = "y") +
    geom_text(aes(y = ypos, label = category), color = "white", size = 5, family = "AvantGarde") +
    scale_fill_manual(values = fixed_colors) +
    theme_void() +
    theme(
      text = element_text(family = "AvantGarde"),
      legend.position = "none",
      plot.title = element_text(hjust = 0.5, face = "bold")
    ) +
    labs(title = title)
}

# pie charts
p1 <- make_pie(df1, "Pie Chart 1")
p2 <- make_pie(df2, "Pie Chart 2")
p3 <- make_pie(df3, "Pie Chart 3")

# data visualization
p1 | p2 | p3

# BAR PLOT
library(ggplot2)
library(dplyr)
library(patchwork)

# datasets
df1 <- data.frame(category = c("A", "B", "C", "D"), value = c(28, 26, 24, 25))
df2 <- data.frame(category = c("A", "B", "C", "D"), value = c(24, 29, 26, 25))
df3 <- data.frame(category = c("A", "B", "C", "D"), value = c(25, 24, 25, 27))

# colors
fixed_colors <- c(
  "A" = "#488f31",  # koyu yeşil
  "B" = "#ffeab5",  # pastel sarı
  "C" = "#ed9b69",  # pastel turuncu
  "D" = "#de425b"   # pembe/kırmızı
)

# user-defined function for bar-chart
make_bar <- function(data, title) {
  ggplot(data, aes(x = category, y = value, fill = category)) +
    geom_col(color = "white") +
    scale_fill_manual(values = fixed_colors) +
    theme_minimal(base_family = "AvantGarde") +
    theme(
      legend.position = "none",
      plot.title = element_text(hjust = 0.5, face = "bold")
    ) +
    labs(title = title, x = NULL, y = NULL)
}

# bar charts
b1 <- make_bar(df1, "Bar Plot 1")
b2 <- make_bar(df2, "Bar Plot 2")
b3 <- make_bar(df3, "Bar Plot 3")

# data visualization
b1 | b2 | b3