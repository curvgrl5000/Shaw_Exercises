#Exercise 6: STRINGS AND TEXT

# A string is usually a bit of text you want to display to someone, or "export" out of the program you are writing. The Ruby interpreter knows you want something to be a string when you put either "" (double-quotes) or '' (single-quotes) around the text. You saw this many times with your use of puts when you put the text you want to go to the string inside "" or ''  after the 'puts' method.


# Double quotes evaluate and assess the expression captured  #{}, 
# Single quotes do not evaluate and simply print the literal characters inside the string
spice = "paprika"
puts "Double quotes like to add some spice, like #{spice}, to its content by evaluating format characters"
puts 'Single quotes would rather just print it out, without any added #{spice}.'

#############################################################################################################
#More practice with string interplation and formatting strings:

# variable 'name1' equals string
name1 = "John Boy"

# variable 'name2' equals string
name2 = "Mary Ellen"

# 'puts' method prints the string and the string formatted with the printf symbol: '%s", and the variables in the array. 
puts "Goodnight %s, goodnight %s!" % [name1, name2] #The parameters slot the variables

# Another way to do it with STRING INTERPOLATION, a fancy name to embedd variables inside of strings
puts "Goodnight #{name1}, goodnight #{name2}!"

# 'x' variable equals the string and the embedded string interpolation
x = "There are #{10} types of people."

# 'binary' variable equals the string
binary = "binary"

# 'do_not' variable equals the string 
do_not = "don't"

# 'y' variable equals the string and the embedded string interpolations
y = "Those who know #{binary} and those who #{do_not}."

# 'puts' method prints the 'x' variable
puts x 

# 'puts' method prints the 'y' variable
puts y

# 'puts' prints string and embeds the variable 'x', an example of string interpolation
puts "I said: #{x}." 

# 'puts' prints the string and the varlable 'y'. another example of string interpolation 
puts "I also said: #{y}." 

# 'hilarious' variable is equal to the boolean value false
hilarious = false

# 'joke_evaluation' variable is equal to the string and the embedded string interpolation
joke_evaluation = "Isn't that joke funny?! #{hilarious}" 

# 'puts' method prints the variable 'joke_evaluation'
puts joke_evaluation 

# variable 'w' is equal to the string  
w = "This is the left side of..."  

# variable 'e' is equal to the string 
e = "a string with a right side." 

# 'puts' method prints the two varables 'w' and 'e' 
puts w + e 

#############################################################################################################
# Cuz practice makes perfect with Strings and Variables

actor = "Mark Wahlberg"
actress = "Kate Moss"

x = "There are easily a #{1000} people dying to become the next #{actor} and #{actress}."
h = "Hollywood"
lost = "lost n' looking"
grand = "grand n' beatiful"
ambitious = "ambitious n' marvelous"
sad = true
y = "Then there's the #{lost} and #{grand} and let's not forget the #{ambitious} that get nowhere in #{h}. Sad but #{sad}."

puts x + y 
puts "I know I'm repeating myself here, #{h} is for the #{lost}."


#############################################################################################################
# Another way to work with variables is to pass in a variable number of arguments or capture multiple arguments in a single parameter. You can do this by placing an asterisk before the name of the parameter. 

# Here the first argument is assigned to the first method parameter. But the next parameter is prefixed with an asterisk, so that all the remaining arguments are bundled into a new array, whih is then assigned to that parameter. 
def good_recipes(arg1, *rest)
  "The deserts will be #{arg1} and #{rest.join(', ')}" # the string has embedded two variables, the second variable 'rest' is defined by the 'join' method, which is basicly saying, join the rest of the strings with a comma and a space
end

# 'puts' method prints all the variables and their arguments
puts good_recipes("grandma's apple pie")
puts good_recipes("grandma's apple pie", "mary lou's cupcakes")
puts good_recipes("grandma's apple pie", "mary lou's cupcakes", "joan's cheesecake", "laura's lemon bar" " and many many more yummy things to come.")
