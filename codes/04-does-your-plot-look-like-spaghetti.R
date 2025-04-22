countries <- c(rep("Turkiye", 8),
               rep("United States", 8),
               rep("United Kingdom", 8),
               rep("Canada", 8),
               rep("Germany", 8),
               rep("France", 8),
               rep("Italy", 8),
               rep("Japan", 8),
               rep("Argentina", 8),
               rep("Australia", 8),
               rep("Austria", 8),
               rep("Belgium", 8),
               rep("Brazil", 8),
               rep("Bulgaria", 8),
               rep("Chile", 8),
               rep("Czechia", 8),
               rep("Denmark", 8),
               rep("Finland", 8),
               rep("Greece", 8),
               rep("Hungary", 8),
               rep("Iceland", 8),
               rep("Indonesia", 8),
               rep("Ireland", 8),
               rep("Israel", 8),
               rep("Korea", 8),
               rep("Latvia", 8),
               rep("Luxembourg", 8),
               rep("Mexico", 8),
               rep("Netherlands", 8),
               rep("New Zealand", 8),
               rep("Norway", 8),
               rep("Poland", 8),
               rep("Portugal", 8),
               rep("Romania", 8),
               rep("Russia", 8),
               rep("Slovakia", 8),
               rep("Sweden", 8),
               rep("Switzerland", 8),
               rep("Thailand", 8),
               rep("Uruguay", 8))

cycles <- rep(c("PISA 2000", "PISA 2003", "PISA 2006", "PISA 2009",
                "PISA 2012", "PISA 2015", "PISA 2018", "PISA 2022"), 40)

scores <- c(c(NA, 423, 424, 445, 448, 420, 454, 453),
            c(493, 483, 474, 487, 481, 470, 478, 465),
            c(529, NA, 495, 482, 494, 492, 502, 489),
            c(533, 532, 527, 527, 518, 516, 512, 497),
            c(490, 503, 504, 513, 514, 506, 500, 475),
            c(517, 511, 496, 497, 495, 493, 495, 474),
            c(457, 466, 462, 483, 485, 490, 487, 471),
            c(557, 534, 523, 529, 536, 532, 527, 536),
            c(388, NA, 381, 388, 388, 456, 379, 378),
            c(533, 524, 520, 514, 504, 494, 491, 487),
            c(515, 506, 505, 496, 506, 497, 499, 487),
            c(520, 529, 520, 515, 515, 507, 508, 489),
            c(334, 356, 370, 386, 391, 377, 384, 379),
            c(430, NA, 413, 428, 439, 441, 436, 417),
            c(384, NA, 411, 421, 423, 423, 417, 412),
            c(498, 516, 510, 493, 499, 492, 499, 487),
            c(514, 514, 513, 503, 500, 511, 509, 489),
            c(536, 544, 548, 541, 519, 511, 507, 484),
            c(447, 445, 459, 466, 453, 454, 451, 430),
            c(488, 490, 491, 490, 477, 477, 481, 473),
            c(514, 515, 506, 496, 493, 488, 495, 459),
            c(367, 360, 391, 371, 375, 386, 379, 366),
            c(503, 503, 501, 487, 501, 504, 500, 492),
            c(433, NA, 442, 447, 466, 470, 463, 458),
            c(547, 542, 547, 546, 554, 524, 526, 527),
            c(463, 483, 486, 482, 491, 482, 496, 483),
            c(446, 493, 490, 489, 490, 486, 483, NA),
            c(387, 385, 406, 419, 413, 408, 409, 395),
            c(NA, 538, 531, 526, 523, 512, 519, 493),
            c(537, 523, 522, 519, 500, 495, 494, 479),
            c(499, 495, 490, 498, 489, 502, 501, 468),
            c(470, 490, 495, 495, 518, 504, 516, 489),
            c(454, 466, 466, 487, 487, 492, 492, 472),
            c(NA, NA, 415, 427, 445, 444, 430, 428),
            c(478, 468, 476, 468, 482, 494, 488, NA),
            c(NA, 498, 492, 497, 482, 475, 486, 464),
            c(510, 509, 502, 494, 478, 494, 502, 482),
            c(529, 527, 530, 534, 531, 521, 515, 508),
            c(432, 417, 417, 419, 427, 415, 419, 394),
            c(NA, 422, 427, 427, 409, 418, 418, 409))

# final data
PISA_math_results <- data.frame(countries, cycles, scores)
PISA_math_results

library(ggplot2)
library(dplyr)
install.packages("gghighlight")
library(gghighlight)

# spaghetti plot
splot <- ggplot(data = PISA_math_results, aes(cycles, scores, group = countries)) +
  geom_line(aes(color = countries), linewidth = .5) +
  geom_point(aes(color = countries), size = .5) +
  theme_light() +
  theme(
    axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1),
    panel.grid.major.y = element_blank(),
    panel.border = element_blank(),
    text = element_text(family = "AvantGarde", size = 12, color = "#404040"),
    plot.title = element_text(hjust = .5),
    legend.position = "right"
  ) +
  labs(x = "", y = "", caption = "Data Source: oecd.org") +
  ggtitle("PISA Math Scores Over Time")

splot

# ideal
nplot1 <- ggplot(data = PISA_math_results, aes(cycles, scores, group = countries)) +
  geom_line(aes(color = countries), linewidth = .5) +
  geom_point(aes(color = countries), size = .5) +
  theme_light() +
  theme(
    axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1),
    panel.grid.major.y = element_blank(),
    panel.border = element_blank(),
    text = element_text(family = "AvantGarde", size = 12, color = "#404040"),
    plot.title = element_text(hjust = .5),
    legend.position = "none"
  ) +
  labs(x = "", y = "", caption = "Data Source: oecd.org") +
  ggtitle("PISA Math Scores Over Time") +
  gghighlight(countries == "Turkiye", use_direct_label = F) +
  annotate(geom = "text", x = 8.05, y = PISA_math_results$scores[8], hjust = 0, label = "• Türkiye", color = "#f95d6a", family = "AvantGarde", fontface = "bold", size = 2)

nplot1

# multiple plots
nplot2 <- ggplot(data = PISA_math_results, aes(cycles, scores, group = countries)) +
  geom_line(aes(color = countries), linewidth = .5) +
  geom_point(aes(color = countries), size = .5) +
  theme_light() +
  theme(
    axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1, size = 5.5),
    panel.grid.major.y = element_blank(),
    panel.border = element_blank(),
    text = element_text(family = "AvantGarde", size = 7.25, color = "#404040"),
    plot.title = element_text(hjust = .5),
    legend.position = "none"
  ) +
  labs(x = "", y = "", caption = "Data Source: oecd.org") +
  ggtitle("PISA Math Scores Over Time") +
  facet_wrap(~countries, ncol = 8)

nplot2

# combining approaches
install.packages("viridis")
library(viridis)

newdata <- PISA_math_results |>
  mutate(countries_n = countries)

newdata |>
  ggplot(aes(x = cycles, y = scores)) +
  geom_line(data = newdata |> dplyr::select(-countries), aes(group = countries_n), color = "grey", linewidth = .5) +
  geom_line(aes(color = countries, group = countries_n), color = "#f95d6a", linewidth = .5) +
  geom_point(aes(color = countries), size = .5, color = "#f95d6a") +
  scale_color_viridis(discrete = TRUE) +
  theme_light() +
  theme(
    axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1, size = 5.5),
    panel.grid.major.y = element_blank(),
    panel.border = element_blank(),
    text = element_text(family = "AvantGarde", size = 7.25, color = "#404040"),
    plot.title = element_text(hjust = .5),
    legend.position = "none"
  ) +
  labs(x = "", y = "", caption = "Data Source: oecd.org") +
  ggtitle("PISA Math Scores Over Time") +
  facet_wrap(~countries, ncol = 8)



