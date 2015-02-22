shinyUI(pageWithSidebar(
headerPanel("Fabulous Parabolas! The program that helps you draw a parabola."),
sidebarPanel(
radioButtons("radio", label = h4("Select axis of symmetry"),
        choices = list("vertical" = 1, "horizontal" = 2),selected = 1),
helpText("The axis of symmetry button allows you to select whether the parabola points up and down or left and right. It does this by changing the dependent variable in the equation just above the graph."),
br(),
sliderInput('coeffA', 'Select coefficient A',value = 1, min = -10, max = 10, step = 1,),
sliderInput('coeffB', 'Select coefficient B',value = 1, min = -10, max = 10, step = 1,),
sliderInput('coeffC', 'Select coefficient C',value = 1, min = -10, max = 10, step = 1,),
helpText("The coefficient sliders allow you to choose the values of A, B, and C in the parabola equation. The equation is to the right, just above the graph. Be careful, if you make the squared component disappear, you'll turn your parabola into a line.")
),
mainPanel(
plotOutput('para')
)
))
