# Assignment_3_2R_by_skotnik

#make_art function allows the users to produce random art. It takes a random number as a single argument (for more arguments it takes only the first element)

#Before using the function make sure to have ggplot2 and aRtsy packages installed and loaded.

> install.packages("ggplot2")

> library(ggplot2)

> install.packages("aRtsy")

> library(aRtsy)

#Then create make_art function with this code:
> make_art <- function(x){
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

#try out how this function works, e.g. by typing one of the commands below:

> make_art(420)

> make_art(124)

> make_art(727)
