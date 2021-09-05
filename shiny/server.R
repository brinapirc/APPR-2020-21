library(shiny)

shinyServer(function(input, output) {
  
  output$tabela <- DT::renderDataTable({
    
    tabela1
  })
  
  
  output$tocke <- renderPlot({
    
    tabela__1 <- tabela3 %>% filter(Drzava == input$drzava)
    
    print(ggplot(data=tabela__1, aes(x = Leto, y = Tocke), group=1) + geom_point(col="cornflowerblue") + geom_line(col="cornflowerblue") +
            ylab("Število točk") + xlab("Leto")) + 
      theme_minimal()+
      theme(axis.title = element_text(size=13,face="bold"), axis.text = element_text(size=10), axis.text.x=element_text(angle=90, vjust=0.5, hjust=0.5))
    
  })
  output$tocke2 <- renderPlot({
    
    tabela__2 <-  tabela4 %>% filter(Drzava == input$drzava) 
    
    print(ggplot(data=tabela__2, aes(x = Leto, y = Tocke), group=1) + geom_line(col="cornflowerblue") + geom_point(col="cornflowerblue") +
            ylab("Število točk") + xlab("Leto")) + 
      theme_minimal() +
      theme(axis.title = element_text(size=13,face="bold"), axis.text = element_text(size=10), axis.text.x=element_text(angle=90, vjust=0.5, hjust=0.5),
            axis.text.y = element_text())
  })
  
})