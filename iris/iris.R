# import iris dataset
?iris

# Get names from iris dataset
names(iris)

iris
str(iris)

iris$new_class_specis<-as.character(iris$Species)
iris$new_class_specis<-NULL
iris$Species <- gsub("%","",iris$Species)
iris<-na.omit(iris)

# Summarize your data
summary(iris)

# plot the data
plot(iris)

# Scatter plot
plot(iris, col=iris$Species)
legend(7,4.3,unique(iris$Species),col=1:length(iris$Species), pch = 1)

# Box plot
par(mfrow=c(1,2))
plot(iris$Petal.Length)
boxplot(iris$Petal.Length~iris$Species)

par(mfrow=c(2,2)) # to draw four figs in one window
for(i in 1:4) boxplot(iris[,i] ~ Species, data=iris, main=names(iris)[i])

# Histogram
par(mfrow=c(1,1))
hist(iris$Petal.Length[1:50])

# Subsetting
iris$Sepal.Length[1:50]
iris$Sepal.Length[-(1:50)]

# Select by name
iris$Sepal.Length[iris$Species=="setosa"]

# Change the order of data frame
iris.ordered<-iris[order(iris$Sepal.Length),]
