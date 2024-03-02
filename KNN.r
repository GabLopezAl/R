
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

> install.packages("class")
Installing package into ‘C:/Users/DELL/AppData/Local/R/win-library/4.3’
(as ‘lib’ is unspecified)
--- Please select a CRAN mirror for use in this session ---
probando la URL 'https://cran.itam.mx/bin/windows/contrib/4.3/class_7.3-22.zip'
Content type 'application/zip' length 97693 bytes (95 KB)
downloaded 95 KB

package ‘class’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
        C:\Users\DELL\AppData\Local\Temp\RtmpucJUf9\downloaded_packages
> file<-"german_credit.csv"
> h<-read.csv(file)
> head(h,4)
  Creditability Account.Balance Duration.of.Credit..month.
1             1               1                         18
2             1               1                          9
3             1               2                         12
4             1               1                         12
  Payment.Status.of.Previous.Credit Purpose Credit.Amount Value.Savings.Stocks
1                                 4       2          1049                    1
2                                 4       0          2799                    1
3                                 2       9           841                    2
4                                 4       0          2122                    1
  Length.of.current.employment Instalment.per.cent Sex...Marital.Status
1                            2                   4                    2
2                            3                   2                    3
3                            4                   2                    2
4                            3                   3                    3
  Guarantors Duration.in.Current.address Most.valuable.available.asset
1          1                           4                             2
2          1                           2                             1
3          1                           4                             1
4          1                           2                             1
  Age..years. Concurrent.Credits Type.of.apartment No.of.Credits.at.this.Bank
1          21                  3                 1                          1
2          36                  3                 1                          2
3          23                  3                 1                          1
4          39                  3                 1                          2
  Occupation No.of.dependents Telephone Foreign.Worker
1          3                1         1              1
2          3                2         1              1
3          2                1         1              1
4          2                2         1              2
> summary(h) 
 Creditability Account.Balance Duration.of.Credit..month.
 Min.   :0.0   Min.   :1.000   Min.   : 4.0              
 1st Qu.:0.0   1st Qu.:1.000   1st Qu.:12.0              
 Median :1.0   Median :2.000   Median :18.0              
 Mean   :0.7   Mean   :2.577   Mean   :20.9              
 3rd Qu.:1.0   3rd Qu.:4.000   3rd Qu.:24.0              
 Max.   :1.0   Max.   :4.000   Max.   :72.0              
 Payment.Status.of.Previous.Credit    Purpose       Credit.Amount  
 Min.   :0.000                     Min.   : 0.000   Min.   :  250  
 1st Qu.:2.000                     1st Qu.: 1.000   1st Qu.: 1366  
 Median :2.000                     Median : 2.000   Median : 2320  
 Mean   :2.545                     Mean   : 2.828   Mean   : 3271  
 3rd Qu.:4.000                     3rd Qu.: 3.000   3rd Qu.: 3972  
 Max.   :4.000                     Max.   :10.000   Max.   :18424  
 Value.Savings.Stocks Length.of.current.employment Instalment.per.cent
 Min.   :1.000        Min.   :1.000                Min.   :1.000      
 1st Qu.:1.000        1st Qu.:3.000                1st Qu.:2.000      
 Median :1.000        Median :3.000                Median :3.000      
 Mean   :2.105        Mean   :3.384                Mean   :2.973      
 3rd Qu.:3.000        3rd Qu.:5.000                3rd Qu.:4.000      
 Max.   :5.000        Max.   :5.000                Max.   :4.000      
 Sex...Marital.Status   Guarantors    Duration.in.Current.address
 Min.   :1.000        Min.   :1.000   Min.   :1.000              
 1st Qu.:2.000        1st Qu.:1.000   1st Qu.:2.000              
 Median :3.000        Median :1.000   Median :3.000              
 Mean   :2.682        Mean   :1.145   Mean   :2.845              
 3rd Qu.:3.000        3rd Qu.:1.000   3rd Qu.:4.000              
 Max.   :4.000        Max.   :3.000   Max.   :4.000              
 Most.valuable.available.asset  Age..years.    Concurrent.Credits
 Min.   :1.000                 Min.   :19.00   Min.   :1.000     
 1st Qu.:1.000                 1st Qu.:27.00   1st Qu.:3.000     
 Median :2.000                 Median :33.00   Median :3.000     
 Mean   :2.358                 Mean   :35.54   Mean   :2.675     
 3rd Qu.:3.000                 3rd Qu.:42.00   3rd Qu.:3.000     
 Max.   :4.000                 Max.   :75.00   Max.   :3.000     
 Type.of.apartment No.of.Credits.at.this.Bank   Occupation    No.of.dependents
 Min.   :1.000     Min.   :1.000              Min.   :1.000   Min.   :1.000   
 1st Qu.:2.000     1st Qu.:1.000              1st Qu.:3.000   1st Qu.:1.000   
 Median :2.000     Median :1.000              Median :3.000   Median :1.000   
 Mean   :1.928     Mean   :1.407              Mean   :2.904   Mean   :1.155   
 3rd Qu.:2.000     3rd Qu.:2.000              3rd Qu.:3.000   3rd Qu.:1.000   
 Max.   :3.000     Max.   :4.000              Max.   :4.000   Max.   :2.000   
   Telephone     Foreign.Worker 
 Min.   :1.000   Min.   :1.000  
 1st Qu.:1.000   1st Qu.:1.000  
 Median :1.000   Median :1.000  
 Mean   :1.404   Mean   :1.037  
 3rd Qu.:2.000   3rd Qu.:1.000  
 Max.   :2.000   Max.   :2.000  
> table(h$Creditability)

  0   1 
300 700 
> View(h)
> View(file)
> 
> 
> Dividir datos en conjuntos de entrenamiento y prueba en una proporción de 2:1
Error: unexpected symbol en "Dividir datos"
> #Dividir datos en conjuntos de entrenamiento y prueba en una proporción de 2:1
> sg0 <- which(h$Creditability==0)
> sg1 <- which(h$Creditability==1) # OR sg1 <- !sg0
> sg0tr <- sample(sg0,length(sg0)*2/3)
> sg1tr <- sample(sg1,length(sg1)*2/3)
> sg0ts <- sg0[!sg0 %in% sg0tr]
> sg1ts <- sg1[!sg1 %in% sg1tr]
> cat("Training+",length(sg0tr),'\n',"Training",length(sg1tr),"\n",
+ "Testing+",length(sg0ts),"\n","Testing-",length(sg1ts))
Training+ 200 
 Training 466 
 Testing+ 100 
 Testing- 234> #Combinar los registros seleccionados para los conjuntos de datos de Entrenamiento y Prueba
> htr <- rbind(h[sg0tr,],h[sg1tr,])
> hts <- rbind(h[sg0ts,],h[sg1ts,])
> table(htr$Creditability)

  0   1 
200 466 
> table(hts$Creditability)

  0   1 
100 234 
> trLabels <- htr$Creditability
> tsLabels <- hts$Creditability
> htr <- htr[,-1]
> hts <- hts[,-1]
> normalize <- function(x) return( (x-min(x))/(max(x)-min(x)))
> d <- data.frame("col1"=c(1,3,7), "col2"=c(2,6,4))
> print(d,row.names=F)
 col1 col2
    1    2
    3    6
    7    4
> dn <- lapply(d,normalize)
> dn <- as.data.frame(dn)
> print(dn,row.names=F)
      col1 col2
 0.0000000  0.0
 0.3333333  1.0
 1.0000000  0.5
> dn <- as.data.frame(lapply(dn,round,2))
> print(dn,row.names=F)
 col1 col2
 0.00  0.0
 0.33  1.0
 1.00  0.5
> htr <- as.data.frame(lapply(htr,normalize))
> hts <- as.data.frame(lapply(hts,normalize))
> summary(htr[,c(2,5,13)])
 Duration.of.Credit..month. Credit.Amount     Age..years.    
 Min.   :0.0000             Min.   :0.0000   Min.   :0.0000  
 1st Qu.:0.1429             1st Qu.:0.0595   1st Qu.:0.1429  
 Median :0.2500             Median :0.1138   Median :0.2500  
 Mean   :0.3034             Mean   :0.1674   Mean   :0.2969  
 3rd Qu.:0.3571             3rd Qu.:0.2057   3rd Qu.:0.4107  
 Max.   :1.0000             Max.   :1.0000   Max.   :1.0000  
> summary(hts[,c(2,5,13)])
 Duration.of.Credit..month. Credit.Amount      Age..years.    
 Min.   :0.0000             Min.   :0.00000   Min.   :0.0000  
 1st Qu.:0.1176             1st Qu.:0.07216   1st Qu.:0.1273  
 Median :0.2059             Median :0.12687   Median :0.2273  
 Mean   :0.2459             Mean   :0.18818   Mean   :0.2795  
 3rd Qu.:0.2941             3rd Qu.:0.23419   3rd Qu.:0.3818  
 Max.   :1.0000             Max.   :1.00000   Max.   :1.0000  
> splitFile <- function(dataSet, trProp,classCol) {
+ v <- dataSet[,classCol]
+ sg0 <- which(v==0)
+ sg1 <- which(v==1)
+ sg0tr <- sample(sg0,length(sg0)*trProp)
+ sg1tr <- sample(sg1,length(sg1)*trProp)
+ sg0ts <- sg0[!sg0 %in% sg0tr]
+ sg1ts <- sg1[!sg1 %in% sg1tr]
+ htr <- rbind(dataSet[sg0tr,],dataSet[sg1tr,])
+ hts <- rbind(dataSet[sg0ts,],dataSet[sg1ts,])
+ trLabels <- htr[,classCol]
+ tsLabels <- hts[,classCol]
+ htr <- htr[,-which(names(htr) == classCol)]
+ hts <- hts[,-which(names(hts) == classCol)]
+ return(list(tr=htr,ts=hts,trL=trLabels,tsL=tsLabels)) 
+ }
> #Dividir el conjunto de datos utilizando splitFile
> a <- splitFile(h,.6,'Creditability')
> trData <- a[[1]]
> tsData <- a[[2]]
> trL <- a[[3]]
> tsL <- a[[4]]
> table(trL)
trL
  0   1 
180 420 
> table(tsL)
tsL
  0   1 
120 280 
> a <- splitFile(h,.6,'Creditability')
> trData <- a[[1]]
> tsData <- a[[2]]
> trLabels <- a[[3]]
> tsLabels <- a[[4]]
> tsPred <- knn(trData, tsData, trLabels, k=3)
Error in knn(trData, tsData, trLabels, k = 3) : 
  no se pudo encontrar la función "knn"
> library(class)
> tsPred <- knn(trData, tsData, trLabels, k=3)
> #CrossTable(tsLabels, tsPred)
> table(tsLabels,tsPred)
        tsPred
tsLabels   0   1
       0  31  89
       1  55 225
> accu0 <- length(which(tsLabels==tsPred)==TRUE)/length(tsLabels)
> sens0 <- length(which((tsLabels==tsPred) & (tsLabels==0))) / length(which(tsLabels==0))
> spec0 <- length(which((tsLabels==tsPred) & (tsLabels==1))) / length(which(tsLabels==1))
> cat("Accuracy=",round(accu0,2),'\n',"Sensitivity=",round(sens0,2),'\n',"Specificity=",round(spe
+ c0,2))
Error: unexpected symbol in:
"cat("Accuracy=",round(accu0,2),'\n',"Sensitivity=",round(sens0,2),'\n',"Specificity=",round(spe
c0"
> 
> cat("Accuracy=",round(accu0,2),'\n',"Sensitivity=",round(sens0,2),'\n',"Specificity=",round(spe
+ c0,2))
Error: unexpected symbol in:
"cat("Accuracy=",round(accu0,2),'\n',"Sensitivity=",round(sens0,2),'\n',"Specificity=",round(spe
c0"
> cat("Accuracy=",round(accu0,2),'\n',"Sensitivity=",round(sens0,2),'\n',"Specificity=",round(spec0,2))
Accuracy= 0.64 
 Sensitivity= 0.26 
 Specificity= 0.8> #
> #Generar tasas de error de entrenamiento y prueba para varios k
> bestK <- function(trData, trLabels, tsData, tsLabels) {
+  ctr <- c(); cts <- c()
+ for (k in 1:20) {
+ knnTr <- knn(trData, trData, trLabels, k)
+  knnTs <- knn(trData, tsData, trLabels, k)
+ trTable <- prop.table(table(knnTr, trLabels))
+  tsTable <- prop.table(table(knnTs, tsLabels))
+ erTr <- trTable[1,2] + trTable[2,1]
+  erTs <- tsTable[1,2] + tsTable[2,1]
+ ctr <- c(ctr,erTr)
+ cts <- c(cts,erTs)
+ }
+ #acc <- data.frame(k=1/c(1:100), trER=ctr, tsER=cts)
+ err <- data.frame(k=1:20, trER=ctr, tsER=cts)
+ return(err)
+ }
> err <- bestK(trData, trLabels, tsData, tsLabels)
> plot(err$k,err$trER,type='o',ylim=c(0,.5),xlab="k",ylab="Error rate",col="blue")
> lines(err$k,err$tsER,type='o',col="red")
> tsPred <- knn(trData, tsData, trLabels, k=5)
> table(tsLabels,tsPred)
        tsPred
tsLabels   0   1
       0  23  97
       1  53 227
> #paste("The accuracy of prediction is", length(which(tsLabels==tsPred)==TRUE)/length(tsLabels))
> accu1 <- length(which(tsLabels==tsPred)==TRUE)/length(tsLabels)
> sens1 <- length(which((tsLabels==tsPred) & (tsLabels==0))) / length(which(tsLabels==0))
> spec1 <- length(which((tsLabels==tsPred) & (tsLabels==1))) / length(which(tsLabels==1))
> cat("Accuracy=",round(accu1,2),'\n',"Sensitivity=",round(sens1,2),'\n',"Specificity=",round(spec1,2))
Accuracy= 0.62 
 Sensitivity= 0.19 
 Specificity= 0.81> #
> 
