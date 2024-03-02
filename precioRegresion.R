housing <- read.csv("USA_Housing.csv", header = TRUE, sep = ",")
head(housing)
library(ggplot2)
ggplot(data=housing, aes(housing$Price)) +
geom_histogram(aes(y =..density..), fill = "orange") +
geom_density()
library(psych)
psych::describe(housing)
library(reshape)
meltData <- melt(housing)
#Using Address as id variables
p <- ggplot(meltData, aes(factor(variable), value))
p + geom_boxplot() + facet_wrap(~variable, scale="free")
require(corrgram)
corrgram(housing, order=TRUE) 
install.packages("corrgram")
require(corrgram)
corrgram(housing, order=TRUE) 
library(caret)
index <- createDataPartition(housing$Price, p = .70, list = FALSE)
train <- housing[index, ]
test <- housing[-index, ]
dim(train)
# Training model
lmModel <- lm(Price ~ . , data = train)
> # Printing the model object
# Printing the model object
print(lmModel) 
summary(lmModel) 
AIC(lmModel)
BIC(lmModel)
names(lmModel)
library(Metrics)
install.packages("Metrics")
library(Metrics)
mse(actual = train$Price, predicted = lmModel$fitted.values)
hist(lmModel$residuals, color = "grey") 
plot(lmModel)
plot(lmModel)
library(fmsb)
install.packages("fmsb")
library(fmsb)
source("vif_fun.r")
vif_func(housing[, 1:5])
library("lmtest")
dwtest(lmModel)
# Predicting Price in test dataset
est$PreditedPrice <- predict(lmModel, test)
test$PreditedPrice <- predict(lmModel, test)
# Priting top 6 rows of actual and predited price
head(test[ , c("Price", "PreditedPrice")])
actual <- test$Price
preds <- test$PreditedPrice
rss <- sum((preds - actual) ^ 2)
tss <- sum((actual - mean(actual)) ^ 2)
rsq <- 1 - rss/tss
rsq 
q()
