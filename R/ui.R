#' Shiny app server object
#'
#' @import shiny
#' @import ggplot2

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

    #-- modularized ui.
    counterUI("counter1", "Counter #1"),

    h2("Module example"),
    linkedScatterUI("scatters"),
    textOutput("summary")

  )
)
)
