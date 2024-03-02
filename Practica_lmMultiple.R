
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

> data(mtcars)
> head(mtcars)
                   mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
> names(mtcars)
 [1] "mpg"  "cyl"  "disp" "hp"   "drat" "wt"   "qsec" "vs"   "am"   "gear"
[11] "carb"
> attach(mtcars)
> plot(mpg, cyl)
> plot(mpg, disp)
> plot(mpg, hp)
> plot(mpg, drat)
> plot(mpg, wt)
> plot(mpg, qsec)
> plot(mpg, vs)
> plot(mpg, am)
> 
> plot(mpg, gear)
> plot(mpg, carb)
> 
> 
> 
> plot(mpg, cyl)
> plot(mpg, disp)
> plot(mpg, hp)
> plot(mpg, drat)
> plot(mpg, wt)
> plot(mpg, qsec)
> plot(mpg, vs)
> plot(mpg, am)
> plot(mpg, gear)
> plot(mpg, carb)
> 
> 
> 
> plot(mpg, cyl)
> plot(mpg, disp)
> plot(mpg, hp)
> plot(mpg, drat)
> plot(mpg, wt)
> plot(mpg, qsec)
> plot(mpg, vs)
> plot(mpg, am)
> plot(mpg, gear)
> plot(mpg, carb)
> 
> plot(mpg, qsec)
> plot(mpg, drat)
> plot(mpg, qsec)
> 
> 
> model <- lm(mpg~cyl+disp+hp+drat+wt+qsec+vs+am+gear+carb)
> model

Call:
lm(formula = mpg ~ cyl + disp + hp + drat + wt + qsec + vs + 
    am + gear + carb)

Coefficients:
(Intercept)          cyl         disp           hp         drat           wt  
   12.30337     -0.11144      0.01334     -0.02148      0.78711     -3.71530  
       qsec           vs           am         gear         carb  
    0.82104      0.31776      2.52023      0.65541     -0.19942  

> summary(model)

Call:
lm(formula = mpg ~ cyl + disp + hp + drat + wt + qsec + vs + 
    am + gear + carb)

Residuals:
    Min      1Q  Median      3Q     Max 
-3.4506 -1.6044 -0.1196  1.2193  4.6271 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)  
(Intercept) 12.30337   18.71788   0.657   0.5181  
cyl         -0.11144    1.04502  -0.107   0.9161  
disp         0.01334    0.01786   0.747   0.4635  
hp          -0.02148    0.02177  -0.987   0.3350  
drat         0.78711    1.63537   0.481   0.6353  
wt          -3.71530    1.89441  -1.961   0.0633 .
qsec         0.82104    0.73084   1.123   0.2739  
vs           0.31776    2.10451   0.151   0.8814  
am           2.52023    2.05665   1.225   0.2340  
gear         0.65541    1.49326   0.439   0.6652  
carb        -0.19942    0.82875  -0.241   0.8122  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 2.65 on 21 degrees of freedom
Multiple R-squared:  0.869,     Adjusted R-squared:  0.8066 
F-statistic: 13.93 on 10 and 21 DF,  p-value: 3.793e-07

> sqrt(sum((model$residuals)^2)/21)
[1] 2.650197
> tstat <- coef(summary(model))[3,1]/coef(summary(model))[3,2]
> tstat
[1] 0.7467585
> 2*pt(tstat, 21, lower.tail=FALSE)
[1] 0.4634887
> tstat2 <- coef(summary(model))[1,1]/coef(summary(model))[1,2]
> tstat2
[1] 0.6573058
> 2*pt(tstat2, 21, lower.tail=FALSE)
[1] 0.5181244
> summary(model)

Call:
lm(formula = mpg ~ cyl + disp + hp + drat + wt + qsec + vs + 
    am + gear + carb)

Residuals:
    Min      1Q  Median      3Q     Max 
-3.4506 -1.6044 -0.1196  1.2193  4.6271 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)  
(Intercept) 12.30337   18.71788   0.657   0.5181  
cyl         -0.11144    1.04502  -0.107   0.9161  
disp         0.01334    0.01786   0.747   0.4635  
hp          -0.02148    0.02177  -0.987   0.3350  
drat         0.78711    1.63537   0.481   0.6353  
wt          -3.71530    1.89441  -1.961   0.0633 .
qsec         0.82104    0.73084   1.123   0.2739  
vs           0.31776    2.10451   0.151   0.8814  
am           2.52023    2.05665   1.225   0.2340  
gear         0.65541    1.49326   0.439   0.6652  
carb        -0.19942    0.82875  -0.241   0.8122  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 2.65 on 21 degrees of freedom
Multiple R-squared:  0.869,     Adjusted R-squared:  0.8066 
F-statistic: 13.93 on 10 and 21 DF,  p-value: 3.793e-07

> confint(model, level=.95)
                   2.5 %      97.5 %
(Intercept) -26.62259745 51.22934576
cyl          -2.28468553  2.06180457
disp         -0.02380146  0.05047194
hp           -0.06675236  0.02378812
drat         -2.61383350  4.18805545
wt           -7.65495413  0.22434628
qsec         -0.69883421  2.34091571
vs           -4.05880242  4.69432805
am           -1.75681208  6.79726585
gear         -2.44999107  3.76081711
carb         -1.92290442  1.52406591
> confint(model, level=.90)
                     5 %        95 %
(Intercept) -19.90529263 44.51204094
cyl          -1.90965701  1.68677606
disp         -0.01739293  0.04406341
hp           -0.05894025  0.01597601
drat         -2.02694563  3.60116757
wt           -6.97510389 -0.45550397
qsec         -0.43655525  2.07863675
vs           -3.30355543  3.93908106
am           -1.01873996  6.05919373
gear         -1.91410346  3.22492950
carb         -1.62548923  1.22665072
> resid<- model$residuals
> hist(resid)
> qqnorm(resid)
> qqline(resid)
> plot(model$residuals ~ disp)
> abline(0,0)
> plot(model)
Esperando para confirmar cambio de página...

> 
> 
> 
> 
> plot(model)
Esperando para confirmar cambio de página...
Esperando para confirmar cambio de página...
Esperando para confirmar cambio de página...
Esperando para confirmar cambio de página...
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> plot(model)
Esperando para confirmar cambio de página...
Esperando para confirmar cambio de página...
Esperando para confirmar cambio de página...
Esperando para confirmar cambio de página...
> model1 = lm(mpg ~cyl+log(disp)+log(hp)+drat+wt+qsec+vs+am+gear+carb)
> summary(model1)

Call:
lm(formula = mpg ~ cyl + log(disp) + log(hp) + drat + wt + qsec + 
    vs + am + gear + carb)

Residuals:
    Min      1Q  Median      3Q     Max 
-3.3225 -1.6278 -0.4725  1.1672  3.7616 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)  
(Intercept) 52.749992  25.678622   2.054   0.0526 .
cyl          0.934117   1.010657   0.924   0.3658  
log(disp)   -4.923860   3.852996  -1.278   0.2152  
log(hp)     -3.406400   3.003988  -1.134   0.2696  
drat         0.169684   1.549901   0.109   0.9139  
wt          -0.975286   1.506152  -0.648   0.5243  
qsec         0.156231   0.686120   0.228   0.8221  
vs          -0.005731   1.904313  -0.003   0.9976  
am           0.986507   2.084110   0.473   0.6408  
gear         1.706226   1.463070   1.166   0.2566  
carb        -0.973755   0.653397  -1.490   0.1510  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 2.452 on 21 degrees of freedom
Multiple R-squared:  0.8879,    Adjusted R-squared:  0.8345 
F-statistic: 16.63 on 10 and 21 DF,  p-value: 8.023e-08

> plot(model1)
Esperando para confirmar cambio de página...
Esperando para confirmar cambio de página...
Esperando para confirmar cambio de página...
Esperando para confirmar cambio de página...
> plot(mtcars)
> 
> cor(qsec, wt)
[1] -0.1747159
> cor(am, wt)
[1] -0.6924953
> cor(am, qsec)
[1] -0.2298609
> 
> install.packages("car")
Installing package into ‘C:/Users/DELL/AppData/Local/R/win-library/4.3’
(as ‘lib’ is unspecified)
--- Please select a CRAN mirror for use in this session ---
also installing the dependencies ‘pkgbuild’, ‘rprojroot’, ‘diffobj’, ‘brio’, ‘desc’, ‘pkgload’, ‘praise’, ‘waldo’, ‘testthat’, ‘SparseM’, ‘MatrixModels’, ‘minqa’, ‘nloptr’, ‘RcppEigen’, ‘carData’, ‘abind’, ‘pbkrtest’, ‘quantreg’, ‘lme4’

probando la URL 'https://cran.itam.mx/bin/windows/contrib/4.3/pkgbuild_1.4.3.zip'
Content type 'application/zip' length 200384 bytes (195 KB)
downloaded 195 KB

probando la URL 'https://cran.itam.mx/bin/windows/contrib/4.3/rprojroot_2.0.4.zip'
Content type 'application/zip' length 113787 bytes (111 KB)
downloaded 111 KB

probando la URL 'https://cran.itam.mx/bin/windows/contrib/4.3/diffobj_0.3.5.zip'
Content type 'application/zip' length 1005801 bytes (982 KB)
downloaded 982 KB

probando la URL 'https://cran.itam.mx/bin/windows/contrib/4.3/brio_1.1.4.zip'
Content type 'application/zip' length 40532 bytes (39 KB)
downloaded 39 KB

probando la URL 'https://cran.itam.mx/bin/windows/contrib/4.3/desc_1.4.3.zip'
Content type 'application/zip' length 329995 bytes (322 KB)
downloaded 322 KB

probando la URL 'https://cran.itam.mx/bin/windows/contrib/4.3/pkgload_1.3.4.zip'
Content type 'application/zip' length 179216 bytes (175 KB)
downloaded 175 KB

probando la URL 'https://cran.itam.mx/bin/windows/contrib/4.3/praise_1.0.0.zip'
Content type 'application/zip' length 19875 bytes (19 KB)
downloaded 19 KB

probando la URL 'https://cran.itam.mx/bin/windows/contrib/4.3/waldo_0.5.2.zip'
Content type 'application/zip' length 105085 bytes (102 KB)
downloaded 102 KB

probando la URL 'https://cran.itam.mx/bin/windows/contrib/4.3/testthat_3.2.1.zip'
Content type 'application/zip' length 2221585 bytes (2.1 MB)
downloaded 2.1 MB

probando la URL 'https://cran.itam.mx/bin/windows/contrib/4.3/SparseM_1.81.zip'
Content type 'application/zip' length 1042203 bytes (1017 KB)
downloaded 1017 KB

probando la URL 'https://cran.itam.mx/bin/windows/contrib/4.3/MatrixModels_0.5-3.zip'
Content type 'application/zip' length 414862 bytes (405 KB)
downloaded 405 KB

probando la URL 'https://cran.itam.mx/bin/windows/contrib/4.3/minqa_1.2.6.zip'
Content type 'application/zip' length 459278 bytes (448 KB)
downloaded 448 KB

probando la URL 'https://cran.itam.mx/bin/windows/contrib/4.3/nloptr_2.0.3.zip'
Content type 'application/zip' length 1012149 bytes (988 KB)
downloaded 988 KB

probando la URL 'https://cran.itam.mx/bin/windows/contrib/4.3/RcppEigen_0.3.3.9.4.zip'
Content type 'application/zip' length 2271725 bytes (2.2 MB)
downloaded 2.2 MB

probando la URL 'https://cran.itam.mx/bin/windows/contrib/4.3/carData_3.0-5.zip'
Content type 'application/zip' length 1821629 bytes (1.7 MB)
downloaded 1.7 MB

probando la URL 'https://cran.itam.mx/bin/windows/contrib/4.3/abind_1.4-5.zip'
Content type 'application/zip' length 63774 bytes (62 KB)
downloaded 62 KB

probando la URL 'https://cran.itam.mx/bin/windows/contrib/4.3/pbkrtest_0.5.2.zip'
Content type 'application/zip' length 191054 bytes (186 KB)
downloaded 186 KB

probando la URL 'https://cran.itam.mx/bin/windows/contrib/4.3/quantreg_5.97.zip'
Content type 'application/zip' length 1562447 bytes (1.5 MB)
downloaded 1.5 MB

probando la URL 'https://cran.itam.mx/bin/windows/contrib/4.3/lme4_1.1-35.1.zip'
Content type 'application/zip' length 4561218 bytes (4.3 MB)
downloaded 4.3 MB

probando la URL 'https://cran.itam.mx/bin/windows/contrib/4.3/car_3.1-2.zip'
Content type 'application/zip' length 1706651 bytes (1.6 MB)
downloaded 1.6 MB

package ‘pkgbuild’ successfully unpacked and MD5 sums checked
package ‘rprojroot’ successfully unpacked and MD5 sums checked
package ‘diffobj’ successfully unpacked and MD5 sums checked
package ‘brio’ successfully unpacked and MD5 sums checked
package ‘desc’ successfully unpacked and MD5 sums checked
package ‘pkgload’ successfully unpacked and MD5 sums checked
package ‘praise’ successfully unpacked and MD5 sums checked
package ‘waldo’ successfully unpacked and MD5 sums checked
package ‘testthat’ successfully unpacked and MD5 sums checked
package ‘SparseM’ successfully unpacked and MD5 sums checked
package ‘MatrixModels’ successfully unpacked and MD5 sums checked
package ‘minqa’ successfully unpacked and MD5 sums checked
package ‘nloptr’ successfully unpacked and MD5 sums checked
package ‘RcppEigen’ successfully unpacked and MD5 sums checked
package ‘carData’ successfully unpacked and MD5 sums checked
package ‘abind’ successfully unpacked and MD5 sums checked
package ‘pbkrtest’ successfully unpacked and MD5 sums checked
package ‘quantreg’ successfully unpacked and MD5 sums checked
package ‘lme4’ successfully unpacked and MD5 sums checked
package ‘car’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
        C:\Users\DELL\AppData\Local\Temp\RtmpiMhyx4\downloaded_packages
> library(car)
Loading required package: carData
> vif(model)
      cyl      disp        hp      drat        wt      qsec        vs 
15.373833 21.620241  9.832037  3.374620 15.164887  7.527958  4.965873 
       am      gear      carb 
 4.648487  5.357452  7.908747 
> vif(model1)
      cyl log(disp)   log(hp)      drat        wt      qsec        vs 
16.794994 26.485421 10.506498  3.540312 11.196159  7.749426  4.749120 
       am      gear      carb 
 5.575378  6.007033  5.741884 
> 
