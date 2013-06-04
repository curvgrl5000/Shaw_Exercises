#Exercise 18: NAMES, VARIABLES, CODE, FUNCTIONS 

# What functions ( methods is another naming convention ) actually do:
  # • They name pieces of code the way variables name strings and numbers.
  # • They take arguments the way your scripts take ARGV.
  # • Using #1 and #2 they let you make your own "mini scripts" or "tiny commands".
  
#Tips about functions, also called methods:
  # • Method names should begin with a lowercase letter, you won't get a an error if you use a uppercase letter
  #   but when Ruby sees you calling a method it thinks you're using a constant, not a method invocation and you could
  #   eventually get an error, or it may parse the call incorrectly.
  # • Methods that are "dangerous," or modify the receiver, might be named with a trailing "!".
  #   For instance, the 'String' class, provides both a 'chop' and a 'chop!'. The first one returns a modified string; 
  #   the second modifies the receiver in place. "?" and "!" are the only weird characters allowed as method name suffixes.


###################################################################################################################################

# 'def' defines the function 'puts_two'. We are defining a function and it can be called anything.
# The big idea is not to call a function anything too long, it's conveniently terse. 
# Just like variables, functions are passed to '*args', which are a lot like your ARGV parameter but for functions. 


def puts_two(*args)
  arg1, arg2 = args  #parameters / variables are equal to the ARGV
  puts "arg1: #{arg1}, arg2: #{arg2}" # prints the string & the variables
end
puts_two("Anna","Mendoza")    

# ok, that *args is actually pointless, we can just do this:
def puts_two_again(arg1, arg2) #function is equal to the array of variables
  puts "arg1: #{arg1}, arg2: #{arg2}" # prints the string & the variables   
end
puts_two_again("Anna","Mendoza") # prints variable, which is defined in the two strings in parens. Since they don't have a default, then getting rid of one of those strings would then print nothing.

# this just takes one argument
def puts_one(arg1)
  puts "arg1: #{arg1}"
end
puts_one("ONE JUICY BIT!") # here again, we're printing the variable and defining it with a string

#this one takes no arguements
def puts_none()
  puts "I got nothin' here."
end
puts_none() # Yep, no args here to print except the string!


###################################################################################################################################

# Here's some another way:

def coolChicks( arg1="Sarah Allen", arg2="Sarah Mei", arg3="the two Sarahs" )
  "#{arg1}, #{arg2}, #{arg3}." 
end

puts coolChicks
puts coolChicks("Katharyn")
puts coolChicks("Katharyn", "Sarah")
puts coolChicks("Katharyn", "Sarah", "Rene")


###################################################################################################################################

# Here's yet another groovy way. This is for when you want to pass in a variable number of arguments, or want to capture mulitiple arguments into a single paramenter. This is done by placing an asterisk before the name of a parameter, after a 'normal' parameter. 

def the_pleasant_life(arg1, *rest)
  "Hey, get your #{arg1} and #{rest.join(', ')}"
end

puts the_pleasant_life("pleasure", "flow", "for true happiness!")
puts the_pleasant_life("pleasure", "flow", "know your strengths", "for even more happiness!")
puts the_pleasant_life("pleasure", "flow", "strengths", "meaningful life", "for lasting happiness!")
puts the_pleasant_life("pleasure", "flow", "strengths", "meaningful life", "for lasting happiness!")    


###################################################################################################################################


#EXTRA CREDIT
# Write out a function checklist for later exercises. Write these on an index card and keep it by you while you complete the rest of these exercises or until you feel you do not need it:

# Did you start your function definition with def?
# Does your function name have only characters and _ (underscore) characters?
# Did you put an open parenthesis ( right after the function name?
# Did you put your arguments after the parenthesis ( separated by commas?
# Did you make each argument unique (meaning no duplicated names).
# Did you put a close parenthesis ) after the arguments?
# Did you indent all lines of code you want in the function 2 spaces?
# Did you close your function body by typing "end"?
# And when you run (aka "use" or "call") a function, check these things:

# Did you call/use/run this function by typing its name?
# Did you put ( character after the name to run it? (this isn't required, but is idiomatic)
# Did you put the values you want into the parenthesis separated by commas?
# Did you end the function call with a ) character.
# Use these two checklists on the remaining lessons until you do not need them anymore.

# Finally, repeat this a few times:

# "To 'run', 'call', or 'use' a function all means the same thing."
