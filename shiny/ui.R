library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Analiza glasovanja na tekmovanju za Pesem Evrovizije"),
  
  tabsetPanel(
    tabPanel("Prva tabela",
             DT::dataTableOutput("tabela")),
    
    
    tabPanel("Glasovanje Jugoslavija",
             sidebarPanel(
               
               selectInput("drzava", label = "Izberite državo:",
                           choices=(sort(unique(tabela3$Drzava))))),
             
             mainPanel(plotOutput("tocke"))),
    tabPanel("Glasovanje Slovenija",
             sidebarPanel(
               selectInput("drzava", label = "Izberite državo:",
                           choices=(sort(unique(tabela4$Drzava))))),
             mainPanel(plotOutput("tocke2"))),
    
    uiOutput("izborTabPanel")))
  
  
  
)