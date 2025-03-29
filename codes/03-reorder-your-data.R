# Data
BAFTA_film <- read.csv("https://raw.githubusercontent.com/gungorMetehan/BAFTA/main/BAFTA_film.csv")

freq <- c(nrow(BAFTA_film[grepl("Drama", BAFTA_film$genres) == T, ]),
nrow(BAFTA_film[grepl("Romance", BAFTA_film$genres) == T, ]),
nrow(BAFTA_film[grepl("Adventure", BAFTA_film$genres) == T, ]),
nrow(BAFTA_film[grepl("War", BAFTA_film$genres) == T, ]),
nrow(BAFTA_film[grepl("Comedy", BAFTA_film$genres) == T, ]),
nrow(BAFTA_film[grepl("Thriller", BAFTA_film$genres) == T, ]),
nrow(BAFTA_film[grepl("Biography", BAFTA_film$genres) == T, ]),
nrow(BAFTA_film[grepl("History", BAFTA_film$genres) == T, ]),
nrow(BAFTA_film[grepl("Family", BAFTA_film$genres) == T, ]),
nrow(BAFTA_film[grepl("Musical", BAFTA_film$genres) == T, ]),
nrow(BAFTA_film[grepl("Crime", BAFTA_film$genres) == T, ]),
nrow(BAFTA_film[grepl("Western", BAFTA_film$genres) == T, ]),
nrow(BAFTA_film[grepl("Music", BAFTA_film$genres) == T, ]),
nrow(BAFTA_film[grepl("Sport", BAFTA_film$genres) == T, ]),
nrow(BAFTA_film[grepl("Fantasy", BAFTA_film$genres) == T, ]),
nrow(BAFTA_film[grepl("Action", BAFTA_film$genres) == T, ]),
nrow(BAFTA_film[grepl("Mystery", BAFTA_film$genres) == T, ]))

genres <- c("Drama", "Romance", "Adventure", "War", "Comedy", "Thriller", "Biography", "History", "Family", "Musical",
            "Crime", "Western", "Music", "Sport", "Fantasy", "Action", "Mystery")

data4plot <- data.frame(genres, freq)

# Plotting
ggplot(data4plot, aes(x = genres, y = freq)) +
  geom_segment(aes(x = genres, xend = genres, y = 0, yend = freq), color = "grey", linewidth = .75) +
  geom_point(color = "#FF62F8", size = 3.5) +
  theme_light() +
  theme(
    panel.grid.major.y = element_blank(),
    panel.border = element_blank(),
    axis.ticks.x = element_blank(),
    text = element_text(family = "AvantGarde", size = 12, color = "#404040"),
    plot.title = element_text(hjust = .5),
    plot.caption = element_text(size = 8, color = "#404040", vjust = 0, hjust = 0)) +
  coord_flip() +
  labs(x = "Genres", y = "", caption = "Data Source: bafta.org") +
  ggtitle(label = "BAFTA Loves Drama (1949-2024)")

# Ideal plotting
ggplot(data4plot, aes(x = reorder(genres, freq), y = freq)) +
  geom_segment(aes(x = genres, xend = genres, y = 0, yend = freq), color = "grey", linewidth = .75) +
  geom_point(color = "#FF62F8", size = 3.5) +
  theme_light() +
  theme(
    panel.grid.major.y = element_blank(),
    panel.border = element_blank(),
    axis.ticks.x = element_blank(),
    text = element_text(family = "AvantGarde", size = 12, color = "#404040"),
    plot.title = element_text(hjust = .5),
    plot.caption = element_text(size = 8, color = "#404040", vjust = 0, hjust = 0)) +
  coord_flip() +
  labs(x = "Genres", y = "", caption = "Data Source: bafta.org") +
  ggtitle(label = "BAFTA Loves Drama (1949-2024)")
