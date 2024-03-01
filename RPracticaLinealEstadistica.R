a<-c(1,2,3,4,5,6,7,8,9)
b<-c(TRUE,FALSE,TRUE,FALSE)
c<-c("one","two","three")
a
b
c
d<-10
d
class(a)
class(b)
class(c)
z<-vector("logical",3)
z
m<-vector("numeric",5)
m
class(z)
class(m)
g<-as.integer(10)
class(g)
a<-as.integer(10)
b<-3
s<-c("one","two","three")
class(s)
class(a)
class(b)
d<-vector("logical",2)
class(d)
myCSV<-read.csv("Ejemplo.csv",header=TRUE)
View(myCSV)
myCSV<-read.csv("Ejemplo.csv",header=TRUE,sep=";")
View(myCSV)
help(read.table)
install.packages("RODBC")
library(RODBC)
myodbc<-odbcConnectExcel("Clientes.xls")
x<-runif(1,0,20)
x
x
if(x>10){
print(x)
}else{
print("x is less than ten")
}
print(x)
t<-c("Juan","Eduardo","Roberto","Luis")
t
for(i in 2:3){
print(x[i])
}
print(t[i])
for(i in 2:3){
print(t[i])
}
for(i in seq_along(t)){
print(t[i])
}
count = 1
while(count<10){
print(count)
count = count + 1
}
q()
library()
library(readr)
install.packages("readr")
library(readr)
Dataset = read_csv('UniversalBank')
Dataset = read_csv('UniversalBank')
Dataset = read_csv('UniversalBank')
Dataset = read_csv('UniversalBank.csv')
View(Dataset)
install.packages("caTools")
library(caTools)
install.packages("imputeTS")
install.packages("prettydoc")
library(tidyverse)
library(mlr)
install.packages("mlr")
library(mlr)
library(imputeTS)
library(prettydoc)
coffee=read.csv("coffee_data.csv")
names(coffee)
install.packages("naniar")
library(naniar)
coffee=coffee %>%
select_if(is.numeric)
vis_miss(coffee)
library(DataExplorer)
install.packages("DataExplorer")
library(DataExplorer)
coffee_gap=coffee %>%
filter(!is.na(altitude_mean_meters),!is.na(Quakers))
coffee_gap %>%
select(Total.Cup.Points,altitude_mean_meters,Quakers) %>%
plot_correlation(ggtheme = theme_light(),title = "correlation between Total.Cup.Points vs
altitude_mean_meters")
#Correlacion es muy debil, debemos de eliminar losa valores de NA
coffee_new=coffee %>%
select(-c(altitude_high_meters,altitude_low_meters,altitude_mean_meters,X,Quakers))
#making a task
coffee.task=makeRegrTask(data = coffee_new, target ="Total.Cup.Points")
coffee.task
#making a learner
coffee.learner=makeLearner("regr.lm")
#spliting the dataset
ho = makeResampleInstance("Holdout",coffee.task)
coffee.train = subsetTask(coffee.task,ho$train.inds[[1]])
coffee.test = subsetTask(coffee.task,ho$test.inds[[1]])
coffee.train
coffee.test
#this means the data will look like
library(caTools)
sample=sample.split(coffee_new$Total.Cup.Points,SplitRatio = 2/3)
train=subset(coffee_new,sample==T)
test=subset(coffee_new,sample==F)
#automating feature selection
library(FSelectorRcpp)
install.packages("FSelectorRcpp")
install.packages("FSelectorRcpp")
filtervals=generateFilterValuesData(coffee.train,method = "linear.correlation")
filtervals
plotFilterValues(filtervals)
#Hacer un envoltorio de filtro para usarlo en nuestro ajuste del hiperparametro y,
a veces, esto funcionará como un nuevo aprendiz
#a veces, esto funcionará como un nuevo aprendiz
filterwrapper=makeFilterWrapper(learner = coffee.learner, fw.method = "linear.correlation")
getParamSet(filterwrapper)
#hypermeter tuning the model
#parameter setting, means the in terms of usefulness the absolute value will be lowest at 2 and
#highest at 12
ps=makeParamSet(makeIntegerParam("fw.abs",2,20))
#search control
#we will use grid search for the best possible ans
sc=makeTuneControlGrid()
kfold=makeResampleDesc("CV", iters=10)
#tuningparameters
tune=tuneParams(filterwrapper,coffee.train, par.set=ps,control=sc,resampling=kfold,rmse)
tune
#new task with the filtered data
coffee.filter.feature=filterFeatures(coffee.train,fval=filtervals,abs = unlist(tune$x))
train.model=train(coffee.learner,coffee.filter.feature)
getLearnerModel(train.model)
pred=predict(train.model,coffee.test)
as.data.frame(pred)
