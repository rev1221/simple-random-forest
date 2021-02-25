install.packages("randomForest")
library(randomForest)
data("iris")
str(iris)
iris$Species = as.factor(iris$Species)
set.seed(123)
ind = sample(2,nrow(iris),replace=TRUE,prob = c(0.6,0.4))
trainset = iris[ind==1,]
testset = iris[ind==2,]
fit = randomForest(Species ~ .,data=trainset)
print(fit)
plot(fit)
prey = predict(fit,testset)
prey
