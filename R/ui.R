#' Shiny app server object
#'
#' @import shiny

# create the shiny application user interface
ui <- fluidPage(

pageWithSidebar(
  headerPanel('Iris k-means clustering'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(iris)),
    selectInput('ycol', 'Y Variable', names(iris),
                selected=names(iris)[[2]]),
    numericInput('clusters', 'Cluster count', 3,
                 min = 1, max = 9)
  ),
  mainPanel(
    plotOutput('plot1'),

    counterButton("counter1", "Counter #1"),
<<<<<<< HEAD
    counterButton("counter2", "Counter #2")
=======
    counterButton("counter1", "Counter #1")
>>>>>>> f4730ff9e6b86c8e396236d55216460f18afdefb

  )
)
)
