#Follow-Up to question; was asked what the [1] in front of each print statement result actually *is*
#Written by W. Elijah Clark

#The [X] output from the print() function in R denotes what line your output is on

#With a vector that's three objects long, it will condense into one line and not do a whole lot
#You can run the below; my next comment is what I got
SomeAnimalsILike <- c("cats", "dogs", "elk")
print(SomeAnimalsILike)
#[1] "cats" "dogs" "elk"

#If I want to make a longer list with longer entries, it will print on separate numbered lines
#The next series of comments are my results, and you can run this to see what you get
ALongerListOfAnimalsILike <- c("cats", "dogs", "elk", "birds", "axolotls", "swordfish", "bears", "alligator snapping turtles (they're real animals I swear!)")
print(ALongerListOfAnimalsILike)
#[1] "cats"                                                      
#[2] "dogs"                                                      
#[3] "elk"                                                       
#[4] "birds"                                                     
#[5] "axolotls"                                                  
#[6] "swordfish"                                                 
#[7] "bears"                                                     
#[8] "alligator snapping turtles (they're real animals I swear!)"

#Fun fact; there is a function called cat() that does NOT print these numbers, but is otherwise the same
#My guess is that it's called "cat" because of conCATenation
cat(ALongerListOfAnimalsILike)
#The next line is what I got;
#cats dogs elk birds axolotls swordfish bears alligator snapping turtles (they're real animals I swear!)
