# Exercise 13: PARAMETERS, UNPACKING AND VARIABLES 

# Some handy notes from Zed: when you run the name of a file in the termial, it's basicly noted as an "argument". And 'scripts' are just another name for your .rb files.
# When you type "ruby ext13.rb",  "ext13.rb" is actually the argument, and also the script.

first, second, third = ARGV  #ARGV means argument variable, used in many other languages, and it's in ALL CAPS because it's a CONSTANT. A CONSTANT should not be changed once the value has been assigned. This variable holds the arguments you pass to your script, when you run it.

# 'puts' prints the string and the varible $0
# '$' is the selector 
# '0' is the ARGV variable of zero, and in this case is the name of the script
# 'first' 'second' and 'third are the variables defined by ARGV that will be printed 

puts "The script is called: #{$0}"
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

apples, cheese, bread = ARGV
puts "The script is called: #{$0}"
puts "Your first variable is: #{apples}"
puts "Your second variable is: #{cheese}"
puts "Your third variable is: #{bread}"

red, pink, green = ARGV
puts "The script is called: #{$0}"
puts "Your first variable is: #{red}"
puts "Your second variable is: #{pink}"
puts "Your third variable is: #{green}"

something, I, like = ARGV # since ARGV is a constant, all variables are replaced by what is typed into the commandline as the script is defined by first, second, third

############################################################################################################
#EXTRA CREDIT
# 1. Try giving fewer than three arguments to your script. What values are used for the missing arguments?
# Going to the commandline, and running the script and only two arguments:
#    "ruby ext13.rb wink wink"
# ... replaces the first two variables with "wink", and the last one with no value

############################################################################################################
#EXTRA CREDIT
# 2. Write a script that has fewer arguments and one that has more. Make sure you give the unpacked variables good names.
something, like = ARGV
puts "The script is called: #{$0}"
puts "Your first variable is: #{something}"
puts "Your second variable is: #{like}"


############################################################################################################
#EXTRA CREDIT
# 3. Combine STDIN.gets.chomp() with ARGV to make a script that gets more input from a user.

something, was, liked = ARGV
puts "What is the script called? " 
name = STDIN.gets.chomp()
puts "How is a human being addressed when talking about themselves? "
ME = STDIN.gets.chomp()
puts "What is the thing every twenty year old says 500 times? "
like = STDIN.gets.chomp()

puts "This assignment #{name} is making me think that #{ME} will be using the word #{like} alot."


