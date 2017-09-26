#Install stringr library
install.packages("stringr")
library("stringr")

#Create numeric variable my.age equal to age
my.age<-55

#Create variable my.name that stores your name
my.name<-"Salina"

#Define function returning character string
MakeIntroduction<-function(my.name, my.age)
MakeIntroduction<-(paste("Hello, my name is", my.name, "and I'm", my.age, "years old."))

#create variable my.intro
my.intro<-MakeIntroduction
print(my.intro)

#Create casual intro
casual.intro<-my.intro
casual.intro<-(sub("Hello, my name is", "Hey, I'm", my.intro))
print(casual.intro)

#Create capitalization. 
capital.intro<-str_to_title(my.intro)
print(capital.intro)

#Store and Count the e letters
e.count<-str_count(my.intro, "e")
print(e.count)

#Part Two
#Vector 6 books
favorite.books<-c("The Namesake", "My Brilliant Friend", "Empire Falls", "The Shining", "Fahrenheit 451", "The Science of Good Cooking")
print(favorite.books)

#Top three books
top.three.books<-c("The Namesake", "My Brilliant Friend", "The Science of Good Cooking")
print(top.three.books)

#Book Review
book.reviews<-paste(favorite.books, "is a great read!")
print(book.reviews)

#Without fourth book
without.four<-favorite.books[c(1:3,5,6)]
print(without.four)

#Titles with more than 15 characters
charactercount<-str_length(favorite.books)
print(charactercount)
long.titles<-subset(favorite.books, charactercount > 15)
print(long.titles)

#Part 3
#Variable with numbers 1-201
numbers<-c(1:201)
print(numbers)

#Variables Squared
squared.numbers<-numbers^2
print(squared.numbers)

#Mean of Variables Squared
squared.mean<-mean(squared.numbers)
print(squared.mean)

#Create Variables Square
square.root<-sqrt(numbers)
print(square.root)

#Create variable squares that contains only the values which are squares
round.numbers<-round(square.root)
print(round.numbers)

squares<-which(square.root==round.numbers, arr.ind = TRUE)
print(squares)
