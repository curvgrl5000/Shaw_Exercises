#Exercise 21: FUNCTIONS CAN RETURN SOMETHING

def add(a, b)
  puts "ADDING #{a} + #{b}"
  a + b  
end

def subtract(a, b)
  puts "SUBTRACTING #{a} - #{b}"
  a - b
end

def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  a * b
end

def divide (a, b)
  puts "DIVIDING  #{a} / #{b}"
  a / b
end

puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"
puts #blank line

# A puzzle  for the extra credit, type it in anyway
puts "Here is a puzzle:"
what = add(age, subtract(height, multiply(weight, divide(iq, 2))))
puts "That becomes: #{what}.\nCan you do it by hand?"
puts #blank line
puts "+++" * 28

############################################################################################################################
# Extra Credit
# If you aren't really sure what return values are, try writing a few of your own functions and have them return some values. You can return anything that you can put to the right of an =.

boys = 10
girls = 2.00
sillyness = boys / girls
more_sillyness = sillyness / girls
puts "When you divide 10 by 2 you get #{sillyness}"
puts "When you then divide this again you get %s" % more_sillyness 
sillyness += 20
puts "Add life to the mix and you get #{sillyness} new reasons, for boys and girls to meet." 

############################################################################################################################
# More Extra Credit    
# At the end of the script is a puzzle. I'm taking the return value of one function, and using it as the argument of another function. I'm doing this in a chain so that I'm kind of creating a formula using the functions. It looks really weird, but if you run the script you can see the results. What you should do is try to figure out the normal formula that would recreate this same set of operations.

# Once you have the formula worked out for the puzzle, get in there and see what happens when you modify the parts of the functions. Try to change it on purpose to make another value.  

time = add(30, 5)
space = subtract(78, 4)
place = multiply(90, 2)
tt = divide(10.0, 2.0)
puts "+++" * 28
puts "Time: #{time}, Space: #{space}, Place: #{place}, TT: #{tt}"
what = add(time, subtract(space, multiply(place, divide(tt, 2))))
# REMEMBER, READ RIGHT TO LEFT:
# divide method prints 'DIVIDING' the variable tt, which is equal to '5 / 2' = 2.5 

# multiply method prints 'MULTIPLY' the variable place: '180' x the retun value of the 'divide' variable = '2.5'. 
# So that means 180 x 2.5 = 450.0

# subtract method prints 'SUBTRACTING' the variable space: '74' - the retun value of the 'add' method = '182.5'. 
# So that means 74 - 182.5 = -108.5

# add method prints 'ADDING' the variable time: 35 + the return value of the 'subtract' method = -108.5. 
# So that #what is equal to: 55 + -108.5 = '-73.5'   

puts "That becomes: #{what}.\nCan you do it by hand?"
puts "+++" * 28
puts # blank line
  
############################################################################################################################
# Finally, do the inverse. Write out a simple formula and use the functions in the same way to calculate it.
 
time = add(30, 5)
space = subtract(78, 4)
place = multiply(90, 2)
tt = divide(10.0, 2.0)
count = ""

def calculate(count)
  time = 35
  space = 74
  place = 180
  tt = 5.0
  w = divide(tt, 2) # divide 5  / 2, which returns 2.5
  x = multiply(place, w) #  hours: 180 and the new value for distance which is 2.5
  y = subtract(space, x)
  z = add(time, y)
  return z
end

puts "Time: #{time}, Space: #{space}, Place: #{place}, TT: #{tt}"
puts "That becomes: #{calculate(count)} \nCan you do it by hand?"  
puts "+++" * 28
puts # blank line


############################################################################################################################
# Another way:
# Here I create a method, 'calculate' with one parameter/argument, 'count'
# that will require we list all the variables to produce the resulting expression.
# This makes these variables LOCAL variables vs. GLOBAL variables.
# Now why would we do this? Well for one thing, it's practice to recognize the difference between LOCAL and GLOBAL variables
# and to showcase how they can be used. 
# IMPORTANTE CHICAS!!!
# REMEMBER: Local variables are local to the code construct in which they are declared vs. GLOBAL variables which can be accessed from anyhwere in your program.
 
# In contrast, remember that all defined methods can be used here without declaring them again. In fact, methods can be used anywhere
# in the program. Check out how I take the method 'calculate' and then add it to yet another method on line 141 and then again on line 167.

def calculate(count)
  time = add(30, 5) # the variabbles, time, space, place, tt  etc. are added as local variables to the method
  space = subtract(78, 4)
  place = multiply(90, 2)
  tt = divide(10.0, 2.0)
  w = divide(tt, 2) # divide 5  / 2, which returns 2.5
  x = multiply(place, w) #  hours: 180 and the new value for distance which is 2.5
  y = subtract(space, x)
  z = add(time, y)
  return z
end

puts "Time: #{time}, Space: #{space}, Place: #{place}, TT: #{tt}"
puts "That becomes: #{calculate(count)} \nCan you do it by hand?"

puts "+++" * 28
puts # blank line

pow = ""
def method_power(pow)
  x = add(calculate(''), 2000)
  return x
end

puts "So here's how we use several methods to build one powerful method called method_power, which retuns the value
#{method_power(pow)}."

puts "+++" * 28
puts # blank line

############################################################################################################################
# Another way: The simplest one yet

a = divide(tt, 2)
b = multiply(place, a)
c = subtract(space, b) 
d = add(time, c) 
calculated = d

puts "Time: #{time}, Space: #{space}, Place: #{place}, TT: #{tt}"
puts "That becomes: #{calculated} \nCan you do it by hand?"

puts "+++" * 28
puts # blank line

############################################################################################################################
# And here I'm playing around with how we can calculate methods

def calculated(x)
  var = 3
  return var
end

wow = ""
def method_powers(wow)
  x = add(calculated(''), 2000)
  return x
end

puts "So again, here we're using the method 'calculated' and adding it to another method, 'method_powers' as one of the parameters/arguments in the add method. This of course results in the retuning value neatly served in wow: #{method_powers(wow)}."


