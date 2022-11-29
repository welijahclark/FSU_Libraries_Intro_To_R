#Workshop Exercise 1
x <- 20 
y <- 4
adding <- (x+y)
print(x+y)
subtracting <- (x-y)
print(subtracting)
multipling <- x*y
print(multipling)
dividing <- x/y
print(dividing)

#Workshop Exercise 2
StarbucksStores <- 15444
USStatesTerritories <- 57
AverageStores <- StarbucksStores/USStatesTerritories
print(AverageStores)

#Workshop Exercise 3
Calories <- starbucks_drinkMenu_expanded_cleaned$Calories
MilkType <- starbucks_drinkMenu_expanded_cleaned$MilkType_Char
Caffeine <- starbucks_drinkMenu_expanded_cleaned$`Caffeine (mg)`
class(Calories)
class(MilkType)
class(Caffeine)
MoreCaffeine = as.numeric(Caffeine)
print(MoreCaffeine)
mean(Calories)
median(Calories)
mean(MoreCaffeine)
MoreMoreCaffeine <- na.omit(MoreCaffeine)
mean(MoreMoreCaffeine)
median(MoreMoreCaffeine)

#Workshop Exercise 4
print(ToothGrowth)
Length <- ToothGrowth$len
Supplement <- ToothGrowth$supp
ToothANOVA <- aov(Length ~ Supplement)
summary(ToothANOVA)

#Workshop Exercise 5
print(trees)
Girth2 <- trees$Girth
Height2 <- trees$Height
TreeRegression <- lm(Height2 ~ Girth2)
summary(TreeRegression)

#Package Installation Demo
install.packages("beepr")
library(beepr)
install.packages("ggplot2")
library(ggplot2)

###ggplot2 demo
#ANOVA
ggplot(ToothGrowth, aes(Supplement, Length)) + geom_boxplot()
ggplot(ToothGrowth, aes(Supplement, Length)) + geom_boxplot(fill="yellow", color="red")
ggplot(ToothGrowth, aes(Supplement, Length)) + geom_boxplot(fill="CEB888", color="red")

#LinReg
ggplot(trees, aes(Height2, Girth2)) + geom_point() + geom_smooth(method="lm")



####Final Exercise!
#Regression
CaffeineRegression <- lm(Calories ~ MoreCaffeine)
summary(CaffeineRegression)

#ANOVA
MilkANOVA <- aov(Calories ~ MilkType)
summary(MilkANOVA)

#Our two Plots
ggplot(starbucks_drinkMenu_expanded_cleaned, aes(MilkType, Calories))+geom_boxplot(fill="green")
ggplot(starbucks_drinkMenu_expanded_cleaned, aes(MoreCaffeine, Calories)) +geom_point()+geom_smooth(method="lm")