library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Analiza glasovanja na tekmovanju za Pesem Evrovizije"),
  
  tabsetPanel(
    tabPanel("Prva tabela",
             DT::dataTableOutput("tabela")),
    
    
    tabPanel("Glasovanje Jugoslavija",
             sidebarPanel(
               
               selectInput("drzava1", label = "Izberite državo:",
                           choices=sort(unique(df4$Drzava)))),
             
             mainPanel(plotOutput("tocke"))),
    
    tabPanel("Glasovanje Slovenija",
             
             sidebarPanel(
               
               selectInput("drzava2", label = "Izberite državo:",
                           choices=sort(unique(tabela4$Drzava)))),
             
             mainPanel(plotOutput("tocke2"))),
    
    uiOutput("izborTabPanel")))
  
  
  
)