#Exercise 11: ASKING QUESTIONS 

# Okay now we're going to go forward and ask some questions...
# 'gets' accepts a single line of data from the standard input  - (gets a string)
# 'chomp()' is a string method that "cuts" that \n or new line character when one presses the Enter or Return key.

# prints the string
print "Just how old are you? "

# variable 'age' is equal to the value that the 'gets' string method returns, chomp string method "cuts" the \n characater added by the carraige return on enter 
age = gets.chomp()

# prints the string
print "How tall are you? "

# variable 'height' is equal to the value that the 'gets' string method returns, chomp string method "cuts" the \n characater added by the carraige return on enter
height = gets.chomp()

# prints the string   
print "How much do you weigh? "

# variable 'weight' is equal to the value that the 'gets' string method returns, chomp string method "cuts" the \n characater added by the carraige return on enter 
weight = gets.chomp()

# prints string and the value of the variables that has been input thru gets.chomp()
puts "So, you're #{age} years old, #{height} tall and #{weight} heavy."


#testing 1, 2, 3 for Practice:
# prints the string
print "What's your name? "

# variable 'name' is equal to the user's input defined by the 'get' method and .chomp method then "cuts" the input once a carriage return is input
name = gets.chomp()

# prints the string
print "What's your occupation? "

# variable 'occupation' is equal to the user's input defined by the 'get' method and .chomp method then "cuts" the input once a carriage return is input 
occupation = gets.chomp()

# prints the string   
print "What city are you from? " # make sure that the equals singn is not used here

# variable 'city' is equal to the user's input defined by the 'get' method and .chomp method then "cuts" the input once a carriage return is input 
city = gets.chomp()

# prints the string
print "What country are you from? " # These kind of responses need to be single answers to make use of them in a sentence

# variable 'country' is equal to the user's input defined by the 'get' method and .chomp method then "cuts" the input once a carriage return is input 
country = gets.chomp()

# prints string and uses string interpolation to insert the value of the variables that have been input through the "gets" method
puts "Hello #{name}, I've never met a #{occupation} from #{city}, #{country}. Howdy!" 