##Workshop Exercise 1
#We're doing four-function arithmetic where X=20 and y=4, then printing the results.
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

##Workshop Exercise 2
#Given information that there were 15444 Starbucks locations across 50 US states and 7 US territories, manually find the average
#Note: the number of Starbucks locations in 2021 can be found at https://www.statista.com/statistics/218360/number-of-starbucks-stores-in-the-us/
StarbucksStores <- 15444
USStatesTerritories <- 57
AverageStores <- StarbucksStores/USStatesTerritories
print(AverageStores)

#Workshop Exercise 3
#Making objects for Calories, Milk Types, and Caffeine, and making sure that they're in the correct type for later analysis
#Note: Data used was a cleaned Starbucks Menu dataset that is available in this repository.
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
#An ANOVA demonstration using the built-in dataset "ToothGrowth", comparing supplement type to final tooth length
print(ToothGrowth)
Length <- ToothGrowth$len
Supplement <- ToothGrowth$supp
ToothANOVA <- aov(Length ~ Supplement)
summary(ToothANOVA)

#Workshop Exercise 5
#A simple-linear-regression demonstration using the built-in dataset "trees", comparing tree girth to tree height
print(trees)
Girth2 <- trees$Girth
Height2 <- trees$Height
TreeRegression <- lm(Height2 ~ Girth2)
summary(TreeRegression)

#Package Installation Demo
#Note: I demonstrated with beepr, but also had ggplot2 as the real exercise. Uninstalling beepr before workshops to re-install it is a must here.
install.packages("beepr")
library(beepr)
install.packages("ggplot2")
library(ggplot2)

###ggplot2 demo
#ANOVA graph demonstration

#No additions (black and white)
ggplot(ToothGrowth, aes(Supplement, Length)) + geom_boxplot()
#Adding yellow and red
ggplot(ToothGrowth, aes(Supplement, Length)) + geom_boxplot(fill="yellow", color="red")
#Note: This one is to demonstrate that you can also use hexadecimal values; this one is FSU Gold.
ggplot(ToothGrowth, aes(Supplement, Length)) + geom_boxplot(fill="CEB888", color="red")

#LinReg
ggplot(trees, aes(Height2, Girth2)) + geom_point() + geom_smooth(method="lm")



####Final Exercise!
#Regression of caffeine to calories from Starbucks Data (basically, is there a correlation of calories to caffeine. (No.))
CaffeineRegression <- lm(Calories ~ MoreCaffeine)
summary(CaffeineRegression)

#ANOVA of type of Milk to calories
MilkANOVA <- aov(Calories ~ MilkType)
summary(MilkANOVA)

#Plots for both our ANOVA and our linear regression models.
ggplot(starbucks_drinkMenu_expanded_cleaned, aes(MilkType, Calories))+geom_boxplot(fill="green")
ggplot(starbucks_drinkMenu_expanded_cleaned, aes(MoreCaffeine, Calories)) +geom_point()+geom_smooth(method="lm")
