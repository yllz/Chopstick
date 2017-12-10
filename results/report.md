---
title: "report"
author: "Linsey Yao"
date: '2017-12-09'
output: html_document
---




```r
dat <- read.csv("http://blog.yhat.com/static/misc/data/chopstick-effectiveness.csv", header=TRUE, sep=",")
summary(lm(Food.Pinching.Effeciency ~ as.factor(Chopstick.Length), dat))
```

```
## 
## Call:
## lm(formula = Food.Pinching.Effeciency ~ as.factor(Chopstick.Length), 
##     data = dat)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -10.465  -2.379   0.144   2.999   9.827 
## 
## Coefficients:
##                                Estimate Std. Error t value Pr(>|t|)    
## (Intercept)                     24.9352     0.7224  34.516   <2e-16 ***
## as.factor(Chopstick.Length)210   0.5487     1.0217   0.537    0.592    
## as.factor(Chopstick.Length)240   1.3877     1.0217   1.358    0.176    
## as.factor(Chopstick.Length)270  -0.6113     1.0217  -0.598    0.550    
## as.factor(Chopstick.Length)300   0.0329     1.0217   0.032    0.974    
## as.factor(Chopstick.Length)330  -0.9355     1.0217  -0.916    0.361    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 4.022 on 180 degrees of freedom
## Multiple R-squared:  0.03539,	Adjusted R-squared:  0.0086 
## F-statistic: 1.321 on 5 and 180 DF,  p-value: 0.2571
```

![](figure/boxplot.png)
