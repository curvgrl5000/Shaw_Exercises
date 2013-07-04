#Exercise 24: MORE PRACTICE

puts "Let's practice everything." # puts prints the string
# The '\' in You'd allows for the apostrophe 'd, 'bout. Two \\ prints out one, nad the \t produces one tab.
puts "You\'d need to know \ 'bout escapes with \\ that do \n newlines and \t tabs."  

# Below this is what's happeingTabs the first sentence
# \t is one tab
# \n is a new line, if we were to add a space it would be honored before the sentence 'the needs of love'
## \n\t\t produces a new line and tabs the words: 'where there is none.' 

poem = <<MULTI_LINE_STRING
\tThe Lovely world
with logic so firmly planted
cannot discern \nthe needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.

MULTI_LINE_STRING

puts "--------------------" *2 # *2 multiplies the contents in the string
puts poem # prints the poem
puts "--------------------" *2 # *2 multiplies the contents in the string      

five = 10 -2 + 3 - 6 # the calculation expresses the integer 5
puts "This should be five: #{five}"  # puts prints the string and the variable 'five' which is 5

def secret_formula( started ) # Here first parameter 'started' will be referenced to the start_point which equals 10000
  jelly_beans = started * 500 # the variable 'jelly_beans' is equal to 10000 x 500 = 5,000,000
  jars = jelly_beans / 1000   # the variable 'jars' is equal to the value of jelly_beans (5,000,000) / 1,000 = 5,000
  crates = jars / 100         # the variable 'crates' is equal to the value of jars (5,000) / 100 = 50
  return jelly_beans, jars, crates  # returns all the expressed values for the three variables to be used outside the method
end

start_point = 10000  # the starting point used as the first argument's value in the method secret_formula reference below
beans, jars, crates = secret_formula(start_point)  # the variables all use the method secret_formula and the first argument start_point for it's starting value

puts "With a starting point of: #{start_point}" # puts prints the string and the var 'start_point'
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."  #puts the string and the vars 'beans', 'jars', 'crates' calculated in secret_formula

puts #blank line    
start_point = start_point / 10 # start_point can also be used this way, to equal itself divided by 10. It's the number that initiates all the calculations.
puts "We can also do that this way:" # prints a regular ol' string
puts "We'd have %s beans, %s jars, and %s creates." % secret_formula(start_point) # puts prints the string and the operators %s are placeholders for the returning values expressed as strings that come from the method, where there are 3 values calculated and returned to be used.
# 'secret_formula' and the first argument 'start_point', is how the %s operators are getting their values. And the variable 'start_point' is where the initial value is being used throughout the method to calculate the local variables in the method. All pretty dynamic hu?



