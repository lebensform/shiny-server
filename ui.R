library(shiny)

# Define UI for dataset viewer application
shinyUI(fluidPage(
  
  # Application title.
  titlePanel("SLE Probability"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("age", label = h4("Age"), 
                  choices = list("0-9" = 1, "10-19" = 2, "20-29" = 3, "30-39" = 4, "40-49" = 5, "50-59" = 6, "60-69" = 7, "70-79" = 8, "80-89" = 9, "90+" = 10), 
                  selected = 3),
      
      selectInput("gender", label = h4("Gender"), 
                  choices = list("Female" = 1, "Male" = 2), 
                  selected = 2),
      
      selectInput("one", label = h4("Malar rash/photosensitive rash/acute cutaneous lupus"), 
                  choices = list("Yes" = 1, "No" = 2, "Unsure" = 3), 
                  selected = 3),
      
      selectInput("two", label = h4("Discoid Rash"), 
                  choices = list("Yes" = 1, "No" = 2, "Unsure" = 3), 
                  selected = 3),
      
      selectInput("three", label = h4("Oral ulcers"), 
                  choices = list("Yes" = 1, "No" = 2, "Unsure" = 3), 
                  selected = 3),
      
      selectInput("four", label = h4("Non-scarring alopecia"), 
                  choices = list("Yes" = 1, "No" = 2, "Unsure" = 3), 
                  selected = 3),
      
      selectInput("five", label = h4("Arthritis"), 
                  choices = list("Yes" = 1, "No" = 2, "Unsure" = 3), 
                  selected = 3),
      
      selectInput("six", label = h4("Serositis"), 
                  choices = list("Yes" = 1, "No" = 2, "Unsure" = 3), 
                  selected = 3),
      
      selectInput("seven", label = h4("Renal"), 
                  choices = list("Yes" = 1, "No" = 2, "Unsure" = 3), 
                  selected = 3),
      
      selectInput("eight", label = h4("Neurologic"), 
                  choices = list("Yes" = 1, "No" = 2, "Unsure" = 3), 
                  selected = 3),
      
      selectInput("nine", label = h4("Hemolytic Anemia"), 
                  choices = list("Yes" = 1, "No" = 2, "Unsure" = 3), 
                  selected = 3),
      
      selectInput("ten", label = h4("Leukopenia"), 
                  choices = list("Yes" = 1, "No" = 2, "Unsure" = 3), 
                  selected = 3),
      
      selectInput("eleven", label = h4("Lymphopenia (<1.5k)"), 
                  choices = list("Yes" = 1, "No" = 2, "Unsure" = 3), 
                  selected = 3),
      
      selectInput("twelve", label = h4("Lymphopenia (<1k)"), 
                  choices = list("Yes" = 1, "No" = 2, "Unsure" = 3), 
                  selected = 3),
      
      selectInput("thirteen", label = h4("Thrombocytopenia"), 
                  choices = list("Yes" = 1, "No" = 2, "Unsure" = 3), 
                  selected = 3),
      
      selectInput("fourteen", label = h4("ANA"), 
                  choices = list("Yes" = 1, "No" = 2, "Unsure" = 3), 
                  selected = 3),
      
      selectInput("fifteen", label = h4("Anti-dsDNA"), 
                  choices = list("Yes" = 1, "No" = 2, "Unsure" = 3), 
                  selected = 3),
      
      selectInput("sixteen", label = h4("Anti-Sm"), 
                  choices = list("Yes" = 1, "No" = 2, "Unsure" = 3), 
                  selected = 3),
      
      selectInput("seventeen", label = h4("Antiphospholipid antibody"), 
                  choices = list("Yes" = 1, "No" = 2, "Unsure" = 3), 
                  selected = 3),
      
      selectInput("eighten", label = h4("Low Complement"), 
                  choices = list("Yes" = 1, "No" = 2, "Unsure" = 3), 
                  selected = 3),
      
      
      helpText("Calculate probability of SLE diagnosis."
      ),
      
      submitButton("Calculate")
    ),
    
    mainPanel(
      h4("Probability"),
      verbatimTextOutput("summary")
    )
  )
))
