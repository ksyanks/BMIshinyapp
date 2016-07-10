
shinyUI(fluidPage(
        
        headerPanel(" Body Mass Indexs (BMI)"),
       
        sidebarPanel(
            h4("To know you BMI, please slide the slider bar of weight and height"),
            br(),
            sliderInput('slrBdyKg', label = "Your weight in Kg",  min = 10, max= 250, value = 20),
            verbatimTextOutput("bdyKgVal"),
            br(),
            br(),
            sliderInput('slrBdyHt', label = "Your height in cm",  min = 10, max= 250, value = 100),
            verbatimTextOutput("bdyHtVal"),
            br()
            #actionButton('actButton', label="submit")
        ),
        
        mainPanel(
                tabsetPanel(
                        tabPanel("BMI", h2("Your Body Mass Index (BMI)"),
                                 verbatimTextOutput("BMIVal"),
                                 br(),
                                 h2("Your weight category is"),
                                 verbatimTextOutput("urCategory")),
                        
                        tabPanel("README", includeMarkdown("README.md"))
               )
        )
        
))
