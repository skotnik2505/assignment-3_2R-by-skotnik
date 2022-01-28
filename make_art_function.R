# make_art function
# make_art() function allows user to produce random art.
# it takes a random number as a single argument (for more arguments it takes only the first element)
# before using the function make sure to have ggplot2 and aRtsy packages installed and loaded.

make_art <- function(x){
  if (is.numeric(x) == FALSE) {
    warning("argument must be numeric") 
  } else {
    set.seed(x)
    random_colors <- colorPalette(name = "random", sample(1:10, 1))
    random_background <- sample(colours(), 1)
    random_lines <- sample(300:10000, 1)
    canvas_flow(random_colors, random_background, random_lines)
  }
}

