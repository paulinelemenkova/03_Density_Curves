library(ggplot2)
df <- read.csv("FAOSTAT_India_12.csv")
#head(df)
# Basic histogram
ggplot(df, aes(x=Value)) +
    geom_histogram()
# Change the width of bins
ggplot(df, aes(x=weight)) +
    geom_histogram(binwidth=1)
# Change colors
p<-ggplot(df, aes(x=weight)) +
  geom_histogram(color="black", fill="white")
p

ggplot(df, aes(x=Value, fill=Item, color=Item)) +
    geom_histogram(binwidth = 500, position="identity", alpha=0.5,)

# Specify a function for calculating binwidth when faceting along variables with
# different ranges: the function will be called once per facet
ggplot(df, aes(Value, fill=Item, color=Item)) +
    facet_wrap(~Item, scales = 'free_x') +
    geom_histogram(binwidth = 100, linejoin = "round") +
    geom_density(adjust=1.5)

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
