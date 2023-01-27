make_art <- function(seed, palette) {
  set.seed(seed)
  data_2 <- tibble(
    x0 = runif(30),
    y0 = runif(30),
    x1 = x0 + runif(30, min = 2, max = 100),
    y1 = y0 + runif(30, min = 5, max = 56),
    shade = runif(30), 
  )
  data_2 |> 
    ggplot(aes(
      x = x0,
      y = y0,
      xend = x1,
      yend = y1,
      colour = shade,
      size = runif(30)
    )) +
    geom_segment(show.legend = FALSE) +
    coord_polar() +
    scale_y_continuous(expand = c(0, 0)) +
    scale_x_continuous(expand = c(0, 0)) + 
    scale_colour_gradientn(colours = palette) + 
    scale_size(range = c(0, 50)) + 
    theme_void()
}
make_art(seed = 13033549, palette = c("black", "steelblue2", "olivedrab"))
