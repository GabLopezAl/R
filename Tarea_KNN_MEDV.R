library(caTools)
library(caret)
library(class)
library(dplyr)
library(e1071)
library(gmodels)
library(psych)
#subir el archivo
data <- read.csv("BostonHousing.csv")
#Eliminar columna CAT.MEDV
data <- data %>% select(-"CAT. MEDV")
head(data)
data <- data %>% select(-"CAT..MEDV")
head(data)
#Guardar la variable a predecir
medv <- data %>% select(MEDV)
#Eliminar la variable MEDV de nuestro conjunto de datos
data <- data %>% select(-MEDV)
head(data)
#Normalizar los datos
normalize <- function(x) return( (x-min(x))/(max(x)-min(x)))
data <- as.data.frame(lapply(data,normalize))
head(data)
#Dividir los datos en entrenamiento y prueba, 60 y 40
smp_size <- floor(0.60 * nrow(data))
train_ind <- sample(seq_len(nrow(data)), size = smp_size)
class_pred_train <- data[train_ind, ]
class_pred_test <- data[-train_ind, ]
#Dividimos la variable de resultado en conjuntos de entrenamiento y prueba utilizando la
#misma partición que la anterior.
medv_train <- medv[train_ind, ]
medv_test <- medv[-train_ind, ]
#Ahora usaremos la funcion knn() de la libreria class
medv_pred_knn <- knn(train = class_pred_train, test = class_pred_test, cl = medv_train,
k = 1)
#Evaluación del modelo
medv_test <- data.frame(medv_test)
class_comparison <- data.frame(medv_pred_knn, medv_test)
names(class_comparison) <- c("PredictedMjob", "ObservedMjob")
head(class_comparison)
medv_test <- medv[-train_ind, ]
#Verficar la precision
medv_pred_knn <- knn(train = class_pred_train, test = class_pred_test, cl = medv_train,k = 1)
# Calcular la precisión (accuracy)
accuracy <- mean(medv_pred_knn == medv_test$MEDV)
accuracy <- mean(medv_pred_knn == medv_test)
accuracy
accuracy * 100
medv_pred_knn <- knn(train = class_pred_train, test = class_pred_test, cl = medv_train,k = 2)
accuracy <- mean(medv_pred_knn == medv_test)
accuracy * 100
medv_pred_knn <- knn(train = class_pred_train, test = class_pred_test, cl = medv_train,k = 3)
accuracy <- mean(medv_pred_knn == medv_test)
accuracy * 100
accuracy
medv_pred_knn <- knn(train = class_pred_train, test = class_pred_test, cl = medv_train,k = 4)
accuracy <- mean(medv_pred_knn == medv_test)
accuracy
medv_pred_knn <- knn(train = class_pred_train, test = class_pred_test, cl = medv_train,k = 5)
accuracy <- mean(medv_pred_knn == medv_test)
accuracy
medv_pred_knn <- knn(train = class_pred_train, test = class_pred_test, cl = medv_train,k = 1)
accuracy <- 1 - (sum(medv_pred == medv_test) / length(medv_test))
accuracy <- 1 - suma(medv_pred_knn == medv_test) / length(medv_test)
accuracy <- 1 - sum(medv_pred_knn == medv_test) / length(medv_test)
accuracy
accuracy <- sum(medv_pred_knn == medv_test) / length(medv_test)
accuracy
new_data <- c(0.2, 0, 7, 0, 0.538, 6, 62, 4.7, 4, 307, 21, 10)
predicted_medv <- class::knn(train_data_normalized, new_data, train_labelstrain = class_pred_train, k = 1)
predicted_medv <- class::knn(train = class_pred_train,new_data, test = class_pred_test, cl = medv_train,k = 4)
predicted_medv
print(paste("Valor MEDV predicho para el nuevo tramo:", predicted_medv))
predicted_medv <- class::knn(train = class_pred_train,new_data, test = class_pred_test, cl = medv_train,k = 1)
predicted_medv
predicted_medv <- class::knn(train = class_pred_train,test = new_data, cl = medv_train,k = 1)
predicted_medv
print(paste("Valor MEDV predicho para el nuevo tramo:", predicted_medv))
new_data <- read.csv("new_data.csv")
head(new_data)
new_data <- as.data.frame(lapply(new_data,normalize))
head(new_data)
medv_pred_knn <- knn(class_pred_train, class_pred_train, cl = medv_train, k = 1)
differences <- medv_pred_knn - medv_train
squared_differences <- differences^2
mse <- mean(squared_differences)
mse
medv_pred_knn <- knn(class_pred_train, class_pred_train, cl = medv_train, k = 1)
accuracy <- 1 - sum(medv_pred_knn == medv_test) / length(medv_test)
accuracy
accuracy <- 1 - sum(medv_pred_knn == medv_train) / length(medv_train)
accuracy
error <- sum(medv_pred_knn != medv_train) / length(medv_train)
error
error <- 1- sum(medv_pred_knn != medv_train) / length(medv_train)
error
error <- 1 - sum(medv_pred_knn == medv_train) / length(medv_train)
error
