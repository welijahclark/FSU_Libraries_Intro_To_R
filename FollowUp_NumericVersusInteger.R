#Follow-Up to question; was asked why there was an emphasis on numeric data versus integer data
#Written by W. Elijah Clark

#First, this demonstrates storing a floating-point number numerically versus as a series of integers
#X is numeric, y is integer based
X <- c(3.45, 8.69, 4.20, 6.91, 7.73)
y <- c(3.45L, 8.69L, 4.20L, 6.91L, 7.73L)

##I got the below trying to run y, but you can run y to see what happens on your computer
#Warning messages:
#1: integer literal 3.45L contains decimal; using numeric value 
#2: integer literal 8.69L contains decimal; using numeric value 
#3: integer literal 4.20L contains decimal; using numeric value 
#4: integer literal 6.91L contains decimal; using numeric value 
#5: integer literal 7.73L contains decimal; using numeric value 

class(y)
#This will show you what y got stored as in practice; I got the following;
#[1] "numeric"

#We CAN, however, brute-force assign a numeric vector as an integer variable...but it will round!
#Below is how I did that, as well as printing the rounded vector
Ecks = as.integer(X)
print(Ecks)
#[1] 3 8 4 6 7

#Incidentally, these will result in different means, so that may have consequences for analysis.
mean(X)
#[1] 6.196
mean(Ecks)
#[1] 5.6

#However, there is no major functional difference between numerical and integer data, provided that you don't need decimals for your numeric data
#We can demonstrate this with an object named Z, which is similar to Ecks other than being numeric
Z<- c(3, 8, 4, 6, 7)
mean(Z)
