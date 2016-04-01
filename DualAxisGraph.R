set.seed(2015-04-13)

d = data.frame(x =seq(1,10),
               n = c(0,0,1,2,3,4,4,5,6,6),
               logp = signif(-log10(runif(10)), 2))


seePhase <- read.csv("C:/Users/pdicarmine/Documents/GitHub/SeePhase Script Test Folder/prc02_19_2016___05_57_41PM.csv")

# Use this code to convert to elapsed time, in minutes
ElapsedMin.df <- (seePhase[1] - seePhase[1,1])*24*60
colnames(ElapsedMin.df) <- paste("ElapsedMin")
seePhase2 <- cbind(seePhase, ElapsedMin.df)

plot.title <- "Phase and Temperature vs Time"
xlab <- "Elapsed Time (min)"
ylab1 <- "Phase (degrees)"
ylab2 <- "Analog Temperature (C)"

par(mar = c(5,5,2,5))
with(seePhase2, plot(ElapsedMin, Ph1, 
                     type = "l", 
                     col = "red3", 
                     xlab = xlab, 
                     ylab = ylab1,
                     main = plot.title))
par(new = T)
with(seePhase2, plot(ElapsedMin, Analog, 
                     type = "l", 
                     axes=F, 
                     xlab=NA, 
                     ylab=NA, 
                     cex=1.2))
axis(side = 4)
mtext(side = 4, line = 3, ylab2)
