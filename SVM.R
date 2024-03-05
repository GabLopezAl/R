
R version 4.3.2 (2023-10-31 ucrt) -- "Eye Holes"
Copyright (C) 2023 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R es un software libre y viene sin GARANTIA ALGUNA.
Usted puede redistribuirlo bajo ciertas circunstancias.
Escriba 'license()' o 'licence()' para detalles de distribucion.

R es un proyecto colaborativo con muchos contribuyentes.
Escriba 'contributors()' para obtener más información y
'citation()' para saber cómo citar R o paquetes de R en publicaciones.

Escriba 'demo()' para demostraciones, 'help()' para el sistema on-line de ayuda,
o 'help.start()' para abrir el sistema de ayuda HTML con su navegador.
Escriba 'q()' para salir de R.

[Previously saved workspace restored]

> x1s <- c(.5,1,1,2,3,3.5, 1,3.5,4,5,5.5,6)
> x2s <- c(3.5,1,2.5,2,1,1.2, 5.8,3,4,5,4,1)
> ys <- c(rep(+1,6), rep(-1,6))
> my.data <- data.frame(x1=x1s, x2=x2s, type=as.factor(ys))
> my.data
    x1  x2 type
1  0.5 3.5    1
2  1.0 1.0    1
3  1.0 2.5    1
4  2.0 2.0    1
5  3.0 1.0    1
6  3.5 1.2    1
7  1.0 5.8   -1
8  3.5 3.0   -1
9  4.0 4.0   -1
10 5.0 5.0   -1
11 5.5 4.0   -1
12 6.0 1.0   -1
> plot(my.data[,-3],col=(ys+3)/2, pch=19); abline(h=0,v=0,lty=3)
> 
> library(e1071)
> svm.model <- svm(type ~ ., data=my.data, type='C-classification', kernel='linear',scale=FALSE)
> plot(my.data[,-3],col=(ys+3)/2, pch=19, xlim=c(-1,6), ylim=c(-1,6)); abline(h=0,v=0,lty=3)
> points(my.data[svm.model$index,c(1,2)],col="blue",cex=2) # show the support vectors
> # get parameters of hiperplane
> w <- t(svm.model$coefs) %*% svm.model$SV
> b <- -svm.model$rho
> # in this 2D case the hyperplane is the line w[1,1]*x1 + w[1,2]*x2 + b = 0
> abline(a=-b/w[1,2], b=-w[1,1]/w[1,2], col="blue", lty=3)
> 
> #We'll make a prediction
> observations <- data.frame(x1=c(1,3.5),x2=c(4,3.5))
> plot(my.data[,-3],col=(ys+3)/2, pch=19, xlim=c(-1,6), ylim=c(-1,6)); abline(h=0,v=0,lty=3)
> points(observations[1,], col="green", pch=19)
> points(observations[2,], col="blue", pch=19)
> abline(a=-b/w[1,2], b=-w[1,1]/w[1,2], col="blue", lty=3)
> predict(svm.model, observations) # the results are right
 1  2 
 1 -1 
Levels: -1 1
> 
> 
> #Dataset Iris
> data(iris)
> data(iris)

> data(iris)
> svm.model <- svm(Species ~ Sepal.Length + Sepal.Width, data = iris, kernel = "linear")
> # the + are support vectors
> plot(iris$Sepal.Length, iris$Sepal.Width, col = as.integer(iris[, 5]),
+ pch = c("o","+")[1:150 %in% svm.model$index + 1], cex = 2,
+ xlab = "Sepal length", ylab = "Sepal width")
> plot(svm.model, iris, Sepal.Width ~ Sepal.Length,
+ slice = list(sepal.width = 1, sepal.length = 2))
> 
> 
> 
> svm.pred <- predict(svm.model, iris[,-5])
> table(pred = svm.pred, true = iris[,5]) # show the confusion matrix
            true
pred         setosa versicolor virginica
  setosa         49          0         0
  versicolor      1         38        15
  virginica       0         12        35
> 
> 
> 
> #Example using polinomial nucleo
> svm.model <- svm(type ~ ., data=my.data, type='C-classification', kernel='polynomial', degree=8,gamma=0.1, coef0=1, scale=FALSE)
> plot(my.data[,-3],col=(ys+3)/2, pch=19, xlim=c(-1,6), ylim=c(-1,6)); abline(h=0,v=0,lty=3)
> points(my.data[svm.model$index,c(1,2)],col="blue",cex=2) # show the support vectors
> svm.pred <- predict(svm.model, my.data[,-3])
> table(pred = svm.pred, true = my.data[,3])
    true
pred -1 1
  -1  6 0
  1   0 6
> #Usando el mismo kernel con el conjunto de datos de iris:
> svm.model <- svm(Species ~ Sepal.Length + Sepal.Width, data = iris, kernel = 'polynomial', degree=8,gamma=0.1, coef0=1)
> plot(svm.model, iris, Sepal.Width ~ Sepal.Length,
+ slice = list(Sepal.Width = 1, Sepal.Length = 2))
> svm.pred <- predict(svm.model, iris[,-5])
> table(pred = svm.pred, true = iris[,5]) # show the confusion matrix
            true
pred         setosa versicolor virginica
  setosa         50          0         0
  versicolor      0         37        15
  virginica       0         13        35
> # not very great, but we had just used two attributes. If we use all four:
> svm.model <- svm(Species ~ ., data = iris, kernel = 'polynomial', degree=8, gamma=0.1, coef0=1)
> plot(svm.model, iris, Sepal.Width ~ Sepal.Length,
+ slice = list(Petal.Width = 3, Petal.Length = 2.5)) # showing a 2D slice of the 4D space
> svm.pred <- predict(svm.model, iris[,-5])
> table(pred = svm.pred, true = iris[,5]) # show the confusion matrix
            true
pred         setosa versicolor virginica
  setosa         50          0         0
  versicolor      0         48         1
  virginica       0          2        49
> 
> 
> 
> 
> #Another example
> library(e1071)
> install.packages("ElemStatLearn")
Installing package into ‘C:/Users/DELL/AppData/Local/R/win-library/4.3’
(as ‘lib’ is unspecified)
--- Please select a CRAN mirror for use in this session ---
Warning message:
package ‘ElemStatLearn’ is not available for this version of R

A version of this package for your version of R might be available elsewhere,
see the ideas at
https://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Installing-packages 
> utils:::menuInstallLocal()
> utils:::menuInstallPkgs()
> 
> #Another example
> library(e1071)
> require(ElemStatLearn)#package containing the dataset
Loading required package: ElemStatLearn
Warning message:
In library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :
  there is no package called ‘ElemStatLearn’
> utils:::menuInstallLocal()
* installing *source* package 'ElemStatLearn' ...
** package 'ElemStatLearn' successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (ElemStatLearn)
> library(e1071)
> require(ElemStatLearn)#package containing the dataset
Loading required package: ElemStatLearn
> #Loading the data
> attach(mixture.example) #is just a simulated mixture data with 200 rows and 2 classes
> names(mixture.example)
[1] "x"        "y"        "xnew"     "prob"     "marginal" "px1"      "px2"     
[8] "means"   
> plot(x,col=y+3)
> #converting data to a data frame
> data<-data.frame(y=factor(y),x)
> head(data)
  y          X1         X2
1 0  2.52609297  0.3210504
2 0  0.36695447  0.0314621
3 0  0.76821908  0.7174862
4 0  0.69343568  0.7771940
5 0 -0.01983662  0.8672537
6 0  2.19654493 -1.0230141
> 
> #Ajustar el kernel radial
> Radialsvm=svm(factor(y) ~ .,data=data,kernel="radial",cost=5,scale=F)
> Radialsvm

Call:
svm(formula = factor(y) ~ ., data = data, kernel = "radial", cost = 5, 
    scale = F)


Parameters:
   SVM-Type:  C-classification 
 SVM-Kernel:  radial 
       cost:  5 

Number of Support Vectors:  103

> #Generemos una matriz de confusión para comprobar el rendimiento del modelo.
> #Confusion matrix to ckeck the accuracy
> table(predicted=Radialsvm$fitted,actual=data$y)
         actual
predicted  0  1
        0 76 10
        1 24 90
> 
> #Calculemos la tasa de clasificación errónea:
> #misclassification Rate
> mean(Radialsvm$fitted!=data$y)*100 #17% wrong predictions
[1] 17
> #Ahora vamos a crear una cuadrícula (grid) y hacer una predicción sobre esos valores de
> #cuadrícula y también generar un gráfico con el límite de decisión.
> xgrid=expand.grid(X1=px1,X2=px2) #generating grid points
> ygrid=predict(Radialsvm,newdata = xgrid) #ygird consisting of predicted Response values
> #lets plot the non linear decision boundary
> plot(xgrid,col=as.numeric(ygrid),pch=20,cex=0.3)
> points(x,col=y+1,pch=19)
> #we can see that the decision boundary is non linear
> 
> 
> 
> func = predict(Radialsvm,xgrid,decision.values = TRUE)
> func=attributes(func)$decision #to pull out all the attributes and use decision attr
> #let's again plot the decision boundary
> plot(xgrid,col=as.numeric(ygrid),pch=20,cex=0.3)
> points(x,col=y+1,pch=19)
> ?coutour #to search more on using this function
No documentation for ‘coutour’ in specified packages and libraries:
you could try ‘??coutour’
> contour(px1,px2,matrix(func,69,99),level=0,add=TRUE,lwd=3) #adds the non linear decision
> boundary
Error: objeto 'boundary' no encontrado
> contour(px1,px2,matrix(prob,69,99),level=0.5,add=T,col="blue",lwd=3)#this is the true decision boundary i.e Bayes decision boundary
> legend("topright",c("True Decision Boundary","Fitted Decision Boundary"),lwd=3,col=c("blue","black"))
> 
