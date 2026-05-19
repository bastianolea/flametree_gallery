# install.packages('flametree')
library(flametree)

# your name, without spaces or special character
name <- "basti"

# pick a seed
this_seed <- 1917

# pick some colours
shades <- c("#A273BB", "#DB58AA", "#282828")

# data structure defining the trees
dat <- flametree_grow(seed = this_seed, time = 10, trees = 12)

# draw the plot
tree <- dat %>%
  flametree_plot(
    background = "antiquewhite",
    palette = shades,
    style = "nativeflora"
  )

print(tree)
# save the plot
flametree_save(tree, filename = paste0("fig/tree_", name, ".png"))

