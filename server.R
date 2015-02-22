shinyServer(
function(input, output) {
output$para <- renderPlot({
a <- input$coeffA
b <- input$coeffB
c <- input$coeffC
par(bg="gray96")
if (input$radio == 1) { 
   x <- -100:100
   if (a == 0 & b == 0) { y <- rep(c,length(x)) }
   else { y <- a*x^2 + b*x + c }
   plot(x=x,y=y,type="l",lwd=4.0,col="deepskyblue4",ylim=c(-1000,1000),xlab="X",ylab="Y",main=expression(Y == AX^2 + BX + C))
}
else { 
   y <- -100:100
   if (a == 0 & b == 0) { x <- rep(c,length(y)) }
   else { x <- a*y^2 + b*y + c }
   plot(x=x,y=y,type="l",lwd=4.0,col="deepskyblue4",xlim=c(-1000,1000),xlab="X",ylab="Y",main=expression(X == AY^2 + BY + C))
}
})
}
)
