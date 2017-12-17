---
title: "chopstick_analysis"
author: "Linsey Yao"
date: '2017-12-17'
output: pdf_document
---



## Introduction

Chopsticks are one of the most simple and popular hand tools ever invented by humans. A few researchers recorded the individuals using chopsticks, the length of chopsticks and the number of peanuts picked and placed in cup to measure how effective a pair of chopsticks performed.

## Analysis

Firstly, we fit a linear reggression model on the dataset. 

The explanatory variables are `Individual` and `chopstick.Length`, but factorization is needed to make them categorical. And the response variable is `Food.Pinching.Effeciency`.

Null hypothesis: Individual and chopstick length do not affect the effeciency of chopsticks.

Alternative hypothesis: Individual and chopstick length have effects on the effeciency of chopsticks.


```r
chopstick <- read.csv("http://blog.yhat.com/static/misc/data/chopstick-effectiveness.csv", sep=",", header = TRUE)

model <- lm(Food.Pinching.Effeciency ~ as.factor(Individual) + as.factor(Chopstick.Length), data=chopstick)

summary(model)
```

```
## 
## Call:
## lm(formula = Food.Pinching.Effeciency ~ as.factor(Individual) + 
##     as.factor(Chopstick.Length), data = chopstick)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -4.4875 -1.4232 -0.0432  1.0763  5.4121 
## 
## Coefficients:
##                                Estimate Std. Error t value Pr(>|t|)    
## (Intercept)                     22.0362     0.9049  24.352  < 2e-16 ***
## as.factor(Individual)2           4.3483     1.1876   3.662 0.000347 ***
## as.factor(Individual)3           7.0217     1.1876   5.913 2.19e-08 ***
## as.factor(Individual)4           5.4500     1.1876   4.589 9.33e-06 ***
## as.factor(Individual)5          -0.8717     1.1876  -0.734 0.464096    
## as.factor(Individual)6           5.9617     1.1876   5.020 1.45e-06 ***
## as.factor(Individual)7           7.8983     1.1876   6.651 5.10e-10 ***
## as.factor(Individual)8          -1.0983     1.1876  -0.925 0.356521    
## as.factor(Individual)9           8.9217     1.1876   7.513 4.84e-12 ***
## as.factor(Individual)10          5.9617     1.1876   5.020 1.45e-06 ***
## as.factor(Individual)11          2.8650     1.1876   2.413 0.017050 *  
## as.factor(Individual)12          2.8083     1.1876   2.365 0.019320 *  
## as.factor(Individual)13          4.8133     1.1876   4.053 8.09e-05 ***
## as.factor(Individual)14          5.2967     1.1876   4.460 1.60e-05 ***
## as.factor(Individual)15          0.8400     1.1876   0.707 0.480457    
## as.factor(Individual)16          2.5517     1.1876   2.149 0.033266 *  
## as.factor(Individual)17          5.3867     1.1876   4.536 1.17e-05 ***
## as.factor(Individual)18          1.1150     1.1876   0.939 0.349291    
## as.factor(Individual)19          7.1583     1.1876   6.028 1.24e-08 ***
## as.factor(Individual)20         -2.0100     1.1876  -1.693 0.092618 .  
## as.factor(Individual)21          1.1167     1.1876   0.940 0.348574    
## as.factor(Individual)22          0.3317     1.1876   0.279 0.780411    
## as.factor(Individual)23          1.4667     1.1876   1.235 0.218752    
## as.factor(Individual)24          2.9800     1.1876   2.509 0.013158 *  
## as.factor(Individual)25         -3.0650     1.1876  -2.581 0.010812 *  
## as.factor(Individual)26          1.2200     1.1876   1.027 0.305925    
## as.factor(Individual)27          5.1700     1.1876   4.353 2.47e-05 ***
## as.factor(Individual)28         -2.2717     1.1876  -1.913 0.057668 .  
## as.factor(Individual)29         -4.6350     1.1876  -3.903 0.000143 ***
## as.factor(Individual)30          8.0133     1.1876   6.748 3.06e-10 ***
## as.factor(Individual)31          5.1217     1.1876   4.313 2.91e-05 ***
## as.factor(Chopstick.Length)210   0.5487     0.5225   1.050 0.295293    
## as.factor(Chopstick.Length)240   1.3877     0.5225   2.656 0.008758 ** 
## as.factor(Chopstick.Length)270  -0.6113     0.5225  -1.170 0.243844    
## as.factor(Chopstick.Length)300   0.0329     0.5225   0.063 0.949868    
## as.factor(Chopstick.Length)330  -0.9355     0.5225  -1.791 0.075383 .  
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 2.057 on 150 degrees of freedom
## Multiple R-squared:  0.7898,	Adjusted R-squared:  0.7407 
## F-statistic:  16.1 on 35 and 150 DF,  p-value: < 2.2e-16
```

```r
plot(model)
```

![plot of chunk unnamed-chunk-1](chopstick_analysis//unnamed-chunk-1-1.png)![plot of chunk unnamed-chunk-1](chopstick_analysis//unnamed-chunk-1-2.png)![plot of chunk unnamed-chunk-1](chopstick_analysis//unnamed-chunk-1-3.png)![plot of chunk unnamed-chunk-1](chopstick_analysis//unnamed-chunk-1-4.png)

Based on the summary, both individual and chopstick.length conatin factors with p-values much smaller than the significance level, so we reject the null hypothesis and claim that individual and chopstick length do have effects on the effeciency of chopsticks.

From the diagnostic plots of the model, there are no clear patterns. So the assumptions of equal variance (homoscedasticity) and normality of residuals are satisfied. Besides, the R-square is 0.7898, which means that 78.98% variation in the response vriable is explained by the model. So this model fits well.

Then we make visualiztions to check the relationship between the response variable and explanatory variables. The first plot below is between effeciency and individual. From the output, we can see that different individuals have very different behaviours since the medians and the variances vary a lot, and individual 9 performs best.

The second plot below is between effeciency and chopstick length. Based on the plot, we can see that the median differenes are less substantial than those in individual plot, but they differ much in variances. And it seems that the chopsticks with length 240mm are the most effecient.

![individual](../results/figure/eff_individual.png)

![length](../results/figure/eff_length.png)

## Conclusion

The results show that the food-pinching performance was significantly affected by the individual and length of the chopsticks, and that chopsticks of about 240mm long are optimal for most people.
