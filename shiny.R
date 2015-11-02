library(shiny)

likelihood <- read.csv("data/likelihood.csv")
pretest <- read.csv("data/pretest.csv")
pretest$id <- 1:10

lr.mat <- t(matrix(data = c(likelihood$plr, likelihood$nlr, rep(0,each=18)), ncol=3))
put.mat <- matrix(data = c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0), nrow=18)


# Define server logic required to summarize and view the 
# selected dataset
shinyServer(function(input, output) {
  
output$summary <- renderText({
  
  # Generate put.mat
  put.mat[1,as.numeric(input$one)] <- 1
  put.mat[2,as.numeric(input$two)] <- 1
  put.mat[3,as.numeric(input$three)] <- 1
  put.mat[4,as.numeric(input$four)] <- 1
  put.mat[5,as.numeric(input$five)] <- 1
  put.mat[6,as.numeric(input$six)] <- 1
  put.mat[7,as.numeric(input$seven)] <- 1
  put.mat[8,as.numeric(input$eight)] <- 1
  put.mat[9,as.numeric(input$nine)] <- 1
  put.mat[10,as.numeric(input$ten)] <- 1
  put.mat[11,as.numeric(input$eleven)] <- 1
  put.mat[12,as.numeric(input$twelve)] <- 1
  put.mat[13,as.numeric(input$thirteen)] <- 1
  put.mat[14,as.numeric(input$fourteen)] <- 1
  put.mat[15,as.numeric(input$fifteen)] <- 1
  put.mat[16,as.numeric(input$sixteen)] <- 1
  put.mat[17,as.numeric(input$seventeen)] <- 1
  put.mat[18,as.numeric(input$eighteen)] <- 1
  
  #calculate probability
  
  lr.mat.1 <- put.mat %*% lr.mat
  lr.vec <- diag(lr.mat.1)
  
  lr <- prod(lr.vec[lr.vec != 0])
  
  if(as.numeric(input$gender)==1){
    prob <- pretest$FOdds[pretest$id == as.numeric(input$age)]*lr/(1+pretest$FOdds[pretest$Age == as.numeric(input$age)]*lr)  
  }
  else{
    prob <- pretest$MOdds[pretest$id == as.numeric(input$age)]*lr/(1+pretest$MOdds[pretest$Age == as.numeric(input$age)]*lr)  
    
  }

    paste(prob)
  })
})
