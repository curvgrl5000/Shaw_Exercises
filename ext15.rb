#Exercise 15: READING FILES

# Remember, a 'method' is simply a set of expressions that returns a value. 
# Methods by in large are symantic, which enables a quick read to what the 'function' or 'method' will actually do and what kind of value will be returned.

# Ruby methods are very similar to functions in any other programming language.
# In this exercise, we pass use methods to pass values to variables and objects.

# Here's an interesting note from the Ruby forum by Gary Wright:
# "It is confusing to me to even think about methods returning objects unless you are using that as a very specific shorthand for saying that methods return *references* to objects. That is the unifying idea that helped me understand how Ruby manipulates data -- it is all references and not the objects themselves. The objects themselves are almost completely hidden from the programmer (excluding C extensions) in Ruby. Everything is a reference to an object."

##############################################################################################################

# 'filename' is the variable equal to the following:
# ARGV (argument variable) 
# '.' is the 'send' method that sends the method to the class
# 'first' method defines the the first argument's variable, 'ARGV' 
# What's happening: The value of first argument is passed to the 'filename'
filename = ARGV.first

# 'prompt' variable is equal to the "> "  and signals the programmer, that a prompt cycle is in effect 
prompt = "> "

# 'txt' is the variable and txt extention equal to the following:
# 'File' is the class
# '.' is the 'send' method 
# 'open' method opens the 'File' class defined by the only parameter (filename)
# What's happening: The first paramater, the 'filename' variable is a 'File' class, opened by the open method 
txt = File.open(filename)

# 'puts' method prints the string and the variable 'filename' (string interpolation)
puts "Here's your file: #{filename}"

# 'read' method reads the txt variable, identified by it's file extension; which is returned as a string inside the parens
# 'puts' prints the results
puts txt.read()

# 'puts' prints the string
puts "I'll also ask you to type it again:"

# 'print' method prints the 'prompt' variable
print prompt

# 'file_again' is the variable equal to the following: 
#  'gets' is a method that gets the user input - STDIN - and returns a string
#  'gets' will use 'Kernel #gets'  which first tries to read the contents of files passed in 
# through standard user input. If there are no files in ARGV, it will use standard input instead  - at which  point it's the same as STDIN.gets.
# 'chomp' cuts the string input
# What's happening: The user's input is gotten by the 'get's method, and the last line of the input is cut or 'chomped', captured within the parens, and then it's passed back to the 'file_again' variable
file_again = STDIN.gets.chomp()

# 'text_again' is the variable equal to the following:
# 'open is the method that opens the 'File' class defined in the first parameter, 'file_again' 
# What's happening: What was typed in by the user in line 48 is dynamically passed to the 'file_again' variable, which the 'open' method opens, and passes to the 'txt_again' variable.
txt_again = File.open(file_again)

# 'puts' prints the string returned by the 'read' method, when it reads the variable 'txt_again
puts txt_again.read()

# This last sequence of events from line 31 to 43, creates a great recipe for reading files.
# Whatever is input from the command line will be evaluated by the 'read' method and printed.
# Testing this idea by inputting different files will surely hammer it home. 

############################################################################################################

# Extra Credit...  
# Excercise No.3 - Other ways to work with a ruby function (method) syntax

#    def functionname (variable)
#      return <value>
#    end 

# Your function can compute values and store them in local variables that are specific to the function. Those values can then be returned with the return statement.
def say_hello(name)
   var = "Hello, " + name
   return var
end

# The return statement also can be shortened for very simple functions into a single line:
def say_hello(name)
   return "Hello, " + name
end

# Simplify the function further:
def say_hello(name)
   "Hello, " + name
end

puts say_hello("Geek Girl, thanks for taking the time to play with functions and variables!")


############################################################################################################
# Extra Credit... 
# Excercise No. 7 - In the command line, start irb and then type the following:

# File.open("ext15_sample.txt") => #<File:ext15_sample.txt> 

# To read a file, go to the command line, start irb if you've closed it, then type: 
# File.read("Name_of_String")
# And the contents of the file will then be output


