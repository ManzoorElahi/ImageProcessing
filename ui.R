library(EBImage)
library(shiny)

shinyUI(navbarPage("Image Processing",
                   tabPanel("Basic Operations",
                            fluidPage(
                              sidebarLayout(
                                sidebarPanel(
                                  textInput("url", label = h6("Enter Image URL"), value = "http://www.iwatchstuff.com/2007/08/15/michael-clayton-poster.jpg"),
                                  sliderInput("Rb", label = h6("Brightness (Red)"),min = -100, max = 100, value = 0),
                                  sliderInput("Gb", label = h6("Brightness (Green)"),min = -100, max = 100, value = 0),
                                  sliderInput("Bb", label = h6("Brightness (Blue)"),min = -100, max = 100, value = 0),
                                  sliderInput("Rc", label = h6("Contrast (Red)"),min = 0, max = 200, value = 100),
                                  sliderInput("Gc", label = h6("Contrast (Green)"),min = 0, max = 200, value = 100),
                                  sliderInput("Bc", label = h6("Contrast (Blue)"),min = 0, max = 200, value = 100),
                                  sliderInput("Rg", label = h6("Gamma Correction (Red)"),min = -10, max = 10, value = 1),
                                  sliderInput("Gg", label = h6("Gamma Correction (Green)"),min = -10, max = 10, value = 1),
                                  sliderInput("Bg", label = h6("Gamma Correction (Blue)"),min = -10, max = 10, value = 1),
                                  checkboxGroupInput("Save0", label = h6(""), choices = list("Save"=1))
                                ),
                                
                                
                                mainPanel(
                                  textOutput("text"),
                                  imageOutput("img")
                                  
                                )
                              )
                            )),
                   
                   tabPanel("Spatial Operations & Color",
                            fluidPage(
                              sidebarLayout(
                                sidebarPanel(
                                  
                                  checkboxGroupInput("flip",label = h6("Flip"), choices = list("Flip Image" = 1, "Flip Red" = 2, "Flip Green" = 3, "Flip Blue" = 4)),
                                  checkboxGroupInput("flop",label = h6("Flop"), choices = list("Flop Image" = 1,"Flop Red" = 2, "Flop Green" = 3, "Flop Blue" = 4)),
                                  numericInput("rot", label = h6("Rotation Angle"), value = 0),
                                  numericInput("transx", label = h6("X Translate"), value = 0),
                                  numericInput("transy", label = h6("Y Translate"), value = 0),
                                  checkboxGroupInput("channel", label = h6("Channel"), choices = list("RGB" = 1,"Grey" = 2, "Red" = 3, "Green" = 4, "Blue" = 5)),
                                  checkboxGroupInput("Save", label = h6(""), choices = list("Save"=1))
                                ),
                              
                              mainPanel(
                                imageOutput("img2")
                              ))
                              )),
                   
                   tabPanel("Image Filtering",
                            fluidPage(
                              sidebarLayout(
                                sidebarPanel(
                                  sliderInput("lps", label = h6("Low-Pass Filter size"),min = 1, max = 50, value = 21),
                                  sliderInput("hps", label = h6("High-Pass Filter size"),min = 1, max = 20, value = 10),
                                  checkboxGroupInput("filt",label = h6("Filter Type"), choices = list("Low-Pass Filter" = 1, "High-Pass Filter" = 2)),              
                                  checkboxGroupInput("Save1", label = h6(""), choices = list("Save"=1))
                                ),
                                
                                mainPanel(
                                  imageOutput("img3")
                                ))
                            )),
                   
                   tabPanel("Morphing",
                            fluidPage(
                              sidebarLayout(
                                sidebarPanel(
                                  sliderInput("mm", label = h6("Magnitude"),min = 1, max = 50, value = 21),                              
                                  checkboxGroupInput("morph",label = h6("Morphological Operators"), choices = list("Erode" = 1, "Dilate" = 2)),              
                                  checkboxGroupInput("Save2", label = h6(""), choices = list("Save"=1))
                                ),
                                
                                mainPanel(
                                  imageOutput("img4")
                                ))
                            ))
                   




))
                   





