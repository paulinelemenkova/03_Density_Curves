library(ggplot2)
df <- read.csv("FAOSTAT_India_12.csv")
#head(df)

p2 <- ggplot(df, aes(Value, group=Item, fill=Item)) +
    geom_density(adjust=2.5, alpha=.4) +
    labs(title = "Data density: agriculture products in India (2000-2023)", x = "Value, kg/ha", y = "Frequency") +
    theme(
        legend.position = c(.97, .97),
        legend.justification = c("right", "top"),
        legend.box.just = "right",
        legend.margin = margin(6, 6, 6, 6),
        legend.direction = "vertical",
        legend.background = element_blank(),
        )
p2
