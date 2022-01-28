# cheat function
# when you type exercise number as an argument for the cheat function, it will return a correct solution and/or a hint for that exercise (for assignment 3_1). 


cheat <- function(x) {
  m_solutions <- matrix(NA, nrow = 16, ncol=1) 
  m_solutions[1] <- "First simulate your data e.g.: my_data <- rnorm(300, 3 , 1). Then create a boxplot: boxplot(my_data)"
  m_solutions[7] <- " The code to create the plot is: ggplot(Orange, aes(age, circumference)) + geom_smooth(method = 'lm'). Remember to install.packages('ggplot2') and library(ggplot2) before running this code"        
  m_solutions[10] <- "Create a ggplot using the command: plot_ly(iris, x = ~Petal.Width, y = ~Petal.Length, z = ~Sepal.Width, color = ~Species). Remember to install.packages('plotly') and library(plotly) before making the plot"
  m_solutions[12] <- "install.packages('quantmod') > library(quantmod) > getSymbols('AMZN') > plot(AMZN[, 1]). Hint: think about object format"
  m_solutions[16] <- "my_matrix <- matrix(c(1:3, (4:6)*2, (7:9)*3), 3, 3, T)"
  print(paste("Solution to exercise number", x))
  return(m_solutions[x])
}