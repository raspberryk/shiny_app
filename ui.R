library(shiny)

o_height<-as.numeric(textOutput('height_e')[[1]])

shinyUI(
  fluidPage(
    h2("BMI Calculator"),
    br(),
    
    tabsetPanel(
      tabPanel( "BMI Calculator", 
                br(),
  
                fluidRow(
                  column(6,
                  
                sliderInput(inputId="height",label="Choose your height (in cm)",value=170,max=220,min=120)),
                
                column(6,
                textInput("weight",
                              label = "Enter your weight (in kg)",
                              value = 80))
                ),
              
                
              
                mainPanel(
                  
                  
                  
                  textOutput('height'),    
                  textOutput('weight'),
                  textOutput('bmi'),
                  strong(textOutput('status')),
                  plotOutput('plot')
              
                                
                )),
  tabPanel("Documentation",
           br(),
           "This app was created as part of Coursera Course- Developing Data Products. It calculates the BMI index of the visitor based on his input.",
           br(),
           "BMI index is calculated as (weight(in kg)/height(in m)^2)",
            br(),
          "The BMI is an attempt to quantify the amount of tissue mass (muscle, fat, and bone) in an individual, and then categorize that person as underweight, normal weight, overweight, or obese based on that value.[wikipedia]",
           br(),
           "After entering height and weight, BMI index is calculated based on the BMI formula. Together with BMI index, the BMI status is provided too.",      
           br(),
           "I have simulated probable distribution of BMI index as suggested by r-bloggers post.",
           br(),
           " NOTE: this distribution is fictional and doesnt have to reflect real distribution",
           br(),
           "User can see what is his/her BMI compared to the fictional population.",
           
           
           br(),
           "Sources:",
           br(),
            "Wikipedia: ", a("Wikipedia",href="https://en.wikipedia.org/wiki/Body_mass_index",target="_blank"),
            br(),
            "R-bloggers", a("R-bloggers-Basics of Histograms",href="http://www.r-bloggers.com/basics-of-histograms/",target="_blank")
  ))
  
  
))