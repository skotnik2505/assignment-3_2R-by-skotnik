# Assignment_3_2R_by_skotnik

# 3_2R_Part_1

# remindme function
remindme() function takes no arguments and returns the list of things to remember 

> remindme <- function() {
  return(list("Joules birthday is on 15th of January",
              "mom's day is on 26th May", 
              "buy milk, sugar, eggs, butter, chocolate",
              "programming exam is on the 4th of February"))
}

Usage:
> remindme()


# cheat function 
When you type exercise number as an argument for the cheat function, it will return a correct solution and/or a hint for that exercise (for assignment 3_1). 

> cheat <- function(x) {
  m_solutions <- matrix(NA, nrow = 16, ncol=1) 
  m_solutions[1] <- "First simulate your data e.g.: my_data <- rnorm(300, 3 , 1). Then create a boxplot: boxplot(my_data)"
  m_solutions[7] <- " The code to create the plot is: ggplot(Orange, aes(age, circumference)) + geom_smooth(method = 'lm'). Remember to install.packages('ggplot2') and library(ggplot2) before running this code"        
  m_solutions[10] <- "Create a ggplot using the command: plot_ly(iris, x = ~Petal.Width, y = ~Petal.Length, z = ~Sepal.Width, color = ~Species). Remember to install.packages('plotly') and library(plotly) before making the plot"
  m_solutions[12] <- "install.packages('quantmod') > library(quantmod) > getSymbols('AMZN') > plot(AMZN[, 1]). Hint: think about object format"
  m_solutions[16] <- "my_matrix <- matrix(c(1:3, (4:6)*2, (7:9)*3), 3, 3, T)"
  print(paste("Solution to exercise number", x))
  return(m_solutions[x])
}

Note this function works for exercises 1,7,10,12,16, the rest is missing (NA) as I didn't provide answers for all exercises within this function (on purpose) 

Try out cheating:
>cheat(1)

> cheat(7)

> cheat(10)

> cheat(12)

> cheat(16)


# 3_2R_Part_2: make_art function

make_art function allows the users to produce random art. It takes a random number as a single argument (for more arguments it takes only the first element)

Before using the function make sure to have ggplot2 and aRtsy packages installed and loaded.

> install.packages("ggplot2")

> library(ggplot2)

> install.packages("aRtsy")

> library(aRtsy)

Then create random art using make_art function with this code:
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

Try out how this function works, e.g. by typing one of the commands below:

> make_art(420)

> make_art(124)

> make_art(727)
