# Pie Chart

# install.packages("plotrix")
library(plotrix)

votes <- c(300,200,50,160)
pie(votes, labels = c("BJP","AAP","SPA","Others"),
    main = "Seats of each party",
    col = c("red","green","orange","purple"))

pie3D(votes, labels = c("BJP","AAP","SPA","Others"),
      main = "Seats of each party",
      col = c("red","green","orange","purple"))
