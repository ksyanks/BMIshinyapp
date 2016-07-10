
library(shiny)

shinyServer(function(input, output){
  
   #to calculate the BMI
   reBdyBMI <- reactive({
     reBdyBMI <- input$slrBdyKg/((input$slrBdyHt/100) * (input$slrBdyHt/100)) 
   })
 
   #to output the chosen weight
   output$bdyKgVal <- renderText({ 
      input$slrBdyKg 
   })
   
   #to output the chosen height
   output$bdyHtVal <- renderText({ 
      input$slrBdyHt  
   })
  
  
   #to output the BMI 
   output$BMIVal <- renderText({
     reBdyBMI()
   })
  
   #to output the weight catgory
   output$urCategory <- renderText({ 
     #to calculate the weight category
     if (reBdyBMI() < 19){
       Category <- ("Under weight")}
     else if (reBdyBMI() >= 19 & reBdyBMI() < 25){
       Category <- "Normal weight"}
     else if (reBdyBMI() >= 25 & reBdyBMI() < 30){
       Category <- "Overweight"}
     else if (reBdyBMI() >= 30 & reBdyBMI() < 35){
       Category <- "Obesity level I"}
     else if (reBdyBMI() >= 35 & reBdyBMI() < 40){
       Category <- "Obesity level II"}
     else if (reBdyBMI() > 40){
       Category <- "Obesity level III"}
   
   })

})
