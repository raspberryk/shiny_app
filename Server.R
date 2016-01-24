
library(shiny)


shinyServer(function(input, output) {
  
  output$height <- renderText({ paste0("your declared height is: ",  input$height," cm")})
  output$weight <- renderText({ paste0("your declared weight is: ",  input$weight," kg")})
  output$bmi <- renderText({ paste0("your  BMI index is: ",  round(as.numeric(input$weight)/(input$height*input$height/10000),3))})
  output$status<-renderText({
    
    paste0(
      "Your BMI status is: ",      
    if(as.numeric(input$weight)/(input$height*input$height/10000)<18.5) {'Underweight'}
               else {if(as.numeric(input$weight)/(input$height*input$height/10000)<25) {'Normal weight'}
                       else {if(as.numeric(input$weight)/(input$height*input$height/10000)<30) {'Overweight'}
                        else {'Obese'}}})
    })
  
  output$plot<-renderPlot({  BMI<-rnorm(n=1000, m=24.2, sd=2.2)     
    hist(BMI,breaks=20,main="Distribution of BMI",freq=FALSE) 
    abline(v=round(as.numeric(input$weight)/(input$height*input$height/10000),3),col="red",lwd=3)
  })
})