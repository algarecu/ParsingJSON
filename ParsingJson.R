# author: alvaro.garcia-recuero at inria.fr
short="~/Documents/dataset/short.csv"
myfile <- read.csv(file=short, header=FALSE)
colnames(myfile) <- c("Timestamp","UserId","Event")

table(myfile$Event)

layout(matrix(1:4, ncol = 2))

### PLOT
par(mar = c(4, 1, 1, 1) + 4)

tab <- as.numeric(table(myfile$Event))
names(tab) <- names(table(myfile$Event))

plot(table(myfile$Event), main = "plot of events", xaxt="n", xlab = "")
## Set up x axis with tick marks alone
axis(1, labels = FALSE)
## Create some text labels
labels <- paste(levels(myfile$Event))
## Plot x axis labels at default tick marks
text(1:5, par("usr")[3] - 0.5, srt = 45, adj = 1,
     labels = labels, xpd = TRUE)

### BARPLOT
barplot(table(myfile$Event), main = "barplot of events", xaxt="n", xlab = "")
tab <- as.numeric(table(myfile$Event))
names(tab) <- names(table(myfile$Event))
## Set up x axis with tick marks alone
axis(1, labels = FALSE)
## Create some text labels
labels <- paste(levels(myfile$Event))
## Plot x axis labels at default tick marks
text(1:5, par("usr")[3] - 0.5, srt = 45, adj = 1,
     labels = labels, xpd = TRUE)

### DOTCHART
dotchart(tab, main = "dotchart of events", xaxt="n", xlab = "")


## or just this
## dotchart(table(dat))
## and ignore the warning
layout(1) 