# 3.1 predicted eruption time given a waiting time of 80 mins
faithful

x <-faithful$waiting
y <- faithful$eruptions

linearregression <- lm(y~x)
summary(linearregression)

a <- data.frame(x = 80)
result <-  predict(linearregression,a)
print(result)

# 3.2 Build a simple linear regression with just the wt variable – how does the qualityand fit of the model compare with using all variables and the selected subset using step()?   What about other subsets?

fit1 <-lm(mpg~cyl+ disp +hp+ drat +wt+ qsec +vs+am+ gear +carb ,data = mtcars)
summary(fit1)
install.packages("tidyverse")
library(MASS)
fit2 <- stepAIC(fit1, direction="both")
anova(mpgModel, fit2)
