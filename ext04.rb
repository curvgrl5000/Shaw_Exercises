#Exercise 4: VARIABLES AND NAMES

# Okay, so on to this topic: VARIABLES... What are they? In computer programming, a variable is a storage location and an associated symbolic name (an identifier), which contains some known or unknown quantity or information (a value). They are commonly used in Ruby as KEY VALUE PAIRS when they are defined. Variables are strings, but strings are not variables. #(I don't get this. Do variables have to be strings? What if it is an array or an integer?)

# A STRING object holds a sequence of bytes, typically represented by characters in quotes.
# STRING objects may be created using String::new or as literals. Literals are what are actually captured in quotes.

# And VARIABLES can also be STRINGS - cuz they are made up of the same set of alphanumeric bytes.
# Just remember that a Variable is a storage location and a naming convention that is symbolic to what it contains; data, a value, or information. That's why a VARIABLE can be a string, but a STRING is not a VARIABLE.

# A variable name is the usual way to reference the stored value; this separation of name and content allows the name to be used independently of the exact information it represents. 

# The value of a computing variable is not necessarily part of an equation or formula as in mathematics. In computing, a variable may be employed in a repetitive process: assigned a value in one place, then used elsewhere, then reassigned a new value and used again in the same way. Now's a good time to talk Iteration, right? #(What is iteration? I kind of get this section, but I am not 100%)

# Variables in computer programming are frequently given long names to make them relatively descriptive of their use, whereas variables in mathematics often have terse, one- or two-character names for brevity in transcription and manipulation #(examples, maybe? This is not quite clear to me either.)

# A note about quotes: 
# Single quotes do not evaluate and simply print the literal characters inside the string
# This means that if you have special characters inside of a literal string, they will be displayed as they are written, not evaluated for what they do.
# This is also known as "escaping" your special characters. A literal string will do that automatically for you.
fruit = "apples"
puts 'I love #{fruit}'

# Double quotes evaluate and assess the expression captured. That means that it will take any special characters and do that action.
puts "I love #{fruit}"

# variable 'cars' is equal to the interger '100'
cars = 100

# variable 'space_in_a_car' is equal to the floating number '4.0' 
space_in_a_car = 4.0

# variable 'drivers' is equal to the integer '30'
drivers = 30

# variable 'passengers' is equal to the integer '90' 
passengers = 90

# variable 'cars_not_driven' is equal to the value of the variables 'cars' minus the variable 'drivers'
cars_not_driven = cars - drivers

# variable 'cars_driven' is equal to the variable 'drivers'
cars_driven = drivers

# variable 'carpool_capacity' is equal to the value of the variables 'cars_driven' multiplied by the variable 'space_in_a_car'
carpool_capacity = cars_driven * space_in_a_car

# variable 'average_passengers_per' car is equal to the value of the variables 'passengers' divided by the variable 'cars_driven'
average_passengers_per_car = passengers / cars_driven

# 'puts' : prints the string and assess the value of the variable 'cars'. 
puts "There are #{cars} cars available."

# 'puts' : prints the string and assess the value of the variable 'drivers'
puts "There are only #{drivers} drivers available."

# 'puts' : prints the string and assess the value of the variable 'cars_not_driven'
puts "There will be #{cars_not_driven} empty cars today."

# 'puts' : prints the string and assess the value of the variable 'carpool_capacity'
puts "We can transport #{carpool_capacity} people today."

# 'puts' : prints the string the assess the value of the variable 'passengers'
puts "We have #{passengers} passengers to carpool today."

# 'puts' : prints the string and assess the value of the variable 'average_passengers_per_car'
puts "We need to put about #{average_passengers_per_car} in each car."

###########################################################################################################

# This example shows how by changing one variable you can influence how an entire calculation occurs.
# Also, note the documentation. Code is much easier to understand, especially if you will be sharing with others, when it is appropriately commented.

# variable 'twinkie is equal to the value of the integer '1'
twinkie = 1

# The variable 'x' is equal to the value of the integer '10'
x = 10 # this can be updated to manage how the application calculates calories

# variable 'twinkies' is equal to the integer '1' multiplied by the value of the variable 'x'
twinkies = 1 * x

# variable 'calories' is equal to the value of the integer '150'
calories = 150 #calories in 1 twinkie

# variable 'n' is equal to the value of the variable 'calories' multiplied by the value of the varilable 'twinkies'
n = calories * twinkies  

# variable 'minutes' is equal to the value of the integer '42'
minutes = 42  # minutes to burn 150 calories or one twinkie

# variable 'c' is equal to the value of the variables 'minutes' multiplied by the value of the variable 'twinkies'
c = minutes * twinkies

# variable 'h' is equal to the value of the variable 'c' divided by the integer '60'
h = c / 60 # h is the actual hours  

# variable 'f' is equal to the integer '41'
f = 41  #fat grams

# variable 'fantasy_fat' is equal to the value of multiplying the value of the variables 'f' x 'f'
fantasy_fat = f ** f

# variable 'total_fat' is equal to the value of the variable 'f' multiplied by the value of the variable 'twinkies'
total_fat = f * twinkies  # in this program it's calculating what has been eaten vs. the total fat of one of those things

# variable 'total_carbs' is equal to the integer '27'
total_carbs = 27

# variable 'p_grams' is equal to the integer '1'
p_grams = 1  # total grams of protein

# variable 'total_protein' is equal to the result of the value of the variable 'twinkies' multiplied by the value of the variable 'p_grams'
total_protein = twinkies * p_grams

#variable 'mins_per_day' is equal to the value of the variable 'c' divided by the integer '7'
mins_per_day = c / 7 

#so the most important variable here is actually 'x', because if you trace back to the quantitiy you can start to see how these other variables inherit a value and how that value can the begin to express itself throughout a program. 

#puts : prints the string and assess the value of the the variable 'twinkie'
puts "I started with #{twinkie} of those nasty Hostess snacks."

#puts : prints the string and assess the value of the variables 'twinkies', 'n', 'c' and 'h'
puts "And then went nuts and ate #{twinkies}, which means I have to lose #{n} calories and walk for #{c} mins or #{h} hours today!"

#puts : prints the string and assess the value of the variables 'fantasy_fat', 'total_fat' and 'x' 
puts "Which feels like I have to burn #{fantasy_fat} of calories, but it's actually #{total_fat} for having eaten only #{x} of those things."

#puts : prints the string and assess the value of the variable 'mins_per_day'
puts "The next seven days means I have to walk #{mins_per_day} mins each day to work off those calories."
 
#There is a saying that the hardest things in computing are naming and caching. 
#Did you think some of the calculations were a little confusing to follow? That is why it is important to name your variables carefully and clearly!
#It is better to have a variable that means something when you read it rather than a single letter most of the time.