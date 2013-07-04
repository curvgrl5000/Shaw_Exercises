#Exercise 22: WHAT DO YOU KNOW SO FAR?    

# YE GRANDE OLE LIST OF RUBY GOOD STUFF!!!

#############################################################################################################################################
# THE PUTS METHOD, THE PRINT METHOD, AND INTRO TO STRINGS 
# 'puts' means prints, and is a method that does just that, it prints an expression.

# WHAT ARE THEY: A STRING object holds a sequence of bytes, typically represented by characters in quotes.
# STRINGS are understood as a data types, are are usually a bit of text.

# WHAT ARE THEY USED FOR? A string is usually a bit of text you want to display to someone, or "export" out of the program you are writing. The Ruby interpreter knows you want something to be a string when you put either "" (double-quotes) or '' (single-quotes) around the text.

# HOW ARE THEY IMPLEMENTED? STRING objects may be created using String::new or as literals. 
# Literals are the actual contents between quotes. 
# Double quotes evaluate and assess the expression captured  #{}, 
# Single quotes do not evaluate and simply print the literal characters inside the string

variable = 100 # an integar
variable_2 = "this is a string"

puts "This is a string, and what is in curly brackets is an integar #{variable} and here's an example of a variable: #{variable_2}."

print "print: does the same without a carriage return."
# print is another method, that does just that, but does this without a carriage return.

printf "printf: formats a variabls like in C and Java."

print "So is this sentence a variable or a string?" # It's a string. 
# A string object holds and manipulates an arbitrary sequence of bytes typically representing characters. 

# WHAT COMMENTING DOES:
puts "Religion has convinced people that there is an invisible man, living in the sky, who watches everything you do every minute of every day." 
# And the invisible man has a list of ten specific things he doesn’t want you to do. And if you do any of these things, he will send you to a special place, of burning and fire and smoke and torture and anguish for you to live forever, and suffer and burn and scream until the end of time. But he loves you. He loves you and he needs money.
puts #blank line    

#############################################################################################################################################
# CHEATSHEET of COMMON OPERATORS
# WHAT THEY ARE:
#  + plus
#   - minus
#  / slash
#  * asterisk
#  % percent
#  < less-than
#  > greater-than
#  <= less-than-equal
#  >= greater-than-equal

# WHAT DO THEY DO?
#  +, plus sign adds!

age = 35 + 5
puts "I am #{age}"
puts "cow" + "girl" # this is an example of concatentation, which literally means a value will be added together like so: 'cowgirl'
la = "la dee da "
puts la + la + la # the value of the variable 'la' will be output into a string: 'la dee da la dee da la dee da'

#  - , minus sign subtracts!
puts 100 - 60 

#  /,  slash id divides!
puts 100 / 2

# 'puts' method : prints the string and the results of the integers and operators: 100.00 divided by 3
puts "100.0 / 3?", 100.0 / 3  #Using a floating number will give you a full decimal response and that's something worth controlling. This is different than a standard integaer; which rounds the output. Check out these descriptions here: http://www.ruby-doc.org/docs/ProgrammingRuby/html/tut_stdtypes.html

#  *,  asterisk multiplies!
puts 10 * 10
puts 10 ** 10
la = "la dee da "
puts la *5 # multiplies the variable 5 times

#  %, calculates a percentage!
puts 2 % 100
# Wikipedia says this about floating numbers: In computing, floating point describes a method of representing an approximation to real numbers in a way that can support a wide range of values 

#  < less-than operator evalutes the expression
puts "Is it less-than?", 5 < -2 #boolean answer

#  > greater-than
puts "Is it greater-than?", 5 > -2 #boolean answer

#  <= less-than-equal
puts "Is it less-than or equal?", 50 <= -2 #boolean answer

#  >= greater-than-equal
puts "Is it greater-than or equal?", 50 >= -2 #boolean answer
puts #blank line    


#############################################################################################################################################
# VARIABLES
# WHAT ARE THEY? A variable is a storage location and an associated symbolic name (an identifier); which contains some known or unknown quantity or information, a value. They are commonly used in Ruby as KEY VALUE PAIRS when they are defined. Variables are strings, but strings are not variables. hu?

# VARIABLES are also STRINGS because they are made up of the same set of alpha-numeric bytes.
# Just remember that a Variable is a storage location which references a value, but a STRING is not a VARIABLE
# and the ruby evaluator will simply read the data as is in a string.

# A variable name is the usual way to reference the stored value; this separation of name and content allows the name to be used independently of the exact information it represents.

# A sample application using variables and operators:
twinkie = 1
x = 10
twinkies = 1 * x
calories = 150
n = calories * twinkies
minutes = 42
c = minutes * twinkies
h = c / 60
f = 41
fantasy_fat = f ** f
total_fat = f * twinkies
total_carbs = 27
p_grams = 1
total_protein = twinkies * p_grams
mins_per_day = c / 7
puts "I started with #{twinkie} of those nasty Hostess snacks."
puts "And then went nuts and ate #{twinkies}, which means I have to lose #{n} calories and walk for #{c} mins or #{h} hours today!"
puts "Which feels like I have to burn #{fantasy_fat} calories, but it's actually #{total_fat} for having eaten only #{x} of those silly things."
puts "The next seven days means I have to walk #{mins_per_day} mins each day to work off those calories, ugh!."
puts #blank line    

#############################################################################################################################################
# STRING FORMATTING AND STRING INTERPOLATION
# The format string specifies a method for rendering an arbitrary number of varied data type parameter(s) into a string.
# String formatting is done with format specifiers, here's a quick summary:
#   %c	 character
#   %d	 decimal (integer) number (base 10)
#   %e	 exponential floating-point number
#   %f	 floating-point number
#   %i	 integer (base 10)
#   %o	 octal number (base 8)
#   %s	 a string of characters
#   %u	 unsigned decimal (integer) number
#   %x	 number in hexadecimal (base 16)
#   %%	 print a percent sign
#   \%	 print a percent sign

famous_singer = "Tom Petty"
famous_song = "Free Falling"
famous_album = "Damn the Torpedoes"
number_one = 1
puts "Floridian rocker %s made headway with his no. %d hit, #{famous_song} from the album %s." % [famous_singer, number_one, famous_album]
puts "He's a %cocker, great %s, a top %d artist, with many no. %d hits and oodles of royalties that constitute 50%% of his earnings." % ['R', 'guy', 10, 1 ]
puts #blank

#############################################################################################################################################
# FORMATTER VARIABLES
# Working with formatter variables, means you can slot different values into the format specifiers and
# then reference the value back in brackets, for example:

formatting_two_strings = "%s %s"
puts formatting_two_strings % ["that thing", "that thingy"]
formatter = "%s"
puts formatter % ["nope, can't touch that! "] * 10

# Another way to work with variables is to pass in a variable number of arguments or capture multiple arguments in a single parameter. You can do this by placing an asterisk before the name of the parameter. 
def good_recipes(arg1, *rest)
  "The meal will be #{arg1} and #{rest.join(', ')}"
end

puts good_recipes("yummy") # since I don't provide another variable, it doesn't pass another value.
puts good_recipes("flavorfull" , "delicious" , "plus nutricious" , "plus a time saver.") # here the arguments are slotted and all of them show up.
puts #blank


#############################################################################################################################################
# THE PARAGRAPH METHOD
# 'puts' method inherits the PARAGRAPH method that allows one to place as many lines as you wish with a carriage return 

puts <<PARAGRAPH
There is something going on here.
With the PARAGRAPH def thing
We will be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
And one can keep typing and with as much you want, as long as you do not input a carriage return you can keep going and going and going and going and a carriage return will not show up.  
PARAGRAPH

#############################################################################################################################################
# MARKING UP STRINGS MANY DIFFERENT WAYS:
# The markup for a variable can be expressed many different ways, for example:

days = "Mon Tue Wed Thu Fri Sat Sun"
puts "Here are the days: ", days
puts "Here are the days again: #{days}" 
puts "Here are the days yet again: %s" % days

format = "%s"
puts format % ["The days of the week are: Mon Tues Wed Thu Fri Sat Sun"]
puts format % ["Here's the days one more time:"] + format % [" Mon Tues Wed Thu Fri Sat Sun"]
 
format = "%s %s %s %s %s %s %s %s"
puts format % ["Yo! Days of the week are", "Mon", "Tues", "Wed", "Thu", "Fri", "Sat", "Sun"]

puts format % [format, format, format, format, format, format, format, format]

format = days
puts format

puts # blank line

#############################################################################################################################################
# VARIABLE MARKUP USING METHODS
# Another sample application using variables, output with the values defined OUTSIDE a METHOD or MODULE.

monkeys_in_washington = 1000
president = 1
def parties(donkeys, thieves)
  puts "The serious nonsense between #{donkeys} and #{thieves}."
end

puts "There are about #{monkeys_in_washington} spin doctors in D.C."
puts "And #{president} guy to solve all the issues.... sort of."
puts "But the problem comes down to some fundamental basics:" 
arg1 = "democrats"
arg2 = "republicans"
parties(arg1, arg2)
puts # a blank line

# Another sample application using variables, output with the values defined OUTSIDE a METHOD or MODULE.
def serious_money(off_shore, drugs, economies)
  puts "And there are easily #{off_shore} accounts streaming profitability from the sale of #{drugs}, creating #{economies}."
end
mafia_families = 100
billionaires = 200
off_shore = billionaires * 10
drugs = "heroine,\scocaine,\sand opium"
new_economies = "profitable and dangerous new economies"

puts "There are about #{mafia_families} mafia famililes in Russia."
puts "And #{billionaires} billionaires being made each year, behind what was once coined the Iron Curtain."
serious_money(off_shore, drugs, new_economies)
puts # a blank line

#############################################################################################################################################
# ESCAPE SEQUENCES
# What are they?
# These charactes create an 'escape sequence' and depending upon the action, procure a kind of result inside a string.
# How do you use them? You place them inside of strings to format the content.
# Some escape sequences:
# \" - double quote
# \\ - single backslash
# \a - bell/alert
# \b - backspace
# \r - carriage return
# \n - newline
# \s - space
# \t - tab

beatnik_kitty = "\"cool\""
backslash_cat = "I'm  \\ a \\ backslashed cat." # \\ is just a way to introduce another symbol and in this case its the character of a backslash.
tabby_cat = "\tI'm tabbed in cuz I'm a tabby cat." # \t  So the backslash with a t is a tab
persian_cat = "I'm split\non a line cuz I'm a \r persian cat." # \n  And the backslash with an n is new line, \r  produces a carriage return. 
excited_cat = "I'm  \! an excited cat\!\!\!\!\!\!" # \\ is just a way to introduce another symbol and in this case its the character of an exclamation.
spacey_kitty = "I'm a spacey \s c \s a \s t." # \\ is

puts beatnik_kitty
puts backslash_cat
puts tabby_cat
puts persian_cat
puts excited_cat
puts spacey_kitty

#############################################################################################################################################
# GETS METHOD AND CHOMPS
# 'gets' accepts a single line of data from the standard input  - (gets a string)
# 'chomp()' is a string method that "cuts" that \n or new line character when one presses the Enter or Return key.

# And Example:
print "Are enjoying this excercise? \n"
response = gets.chomp()
print "Really? Explain why: \n"
explain = gets.chomp()

puts "So you said #{response}, and gave the reason: #{explain}."

#############################################################################################################################################
# LIBRARIES AND the OPEN, INCLUDE AND REQUIRE METHODS. Plus a whole lot of other methods!
# A library is a collection or readily written items that we can call on and "the wiring under the board" has already been done for us.

# "open" method - opens a file
# "do" or yeild method instantiates the action of yielding a value, sometimes into another variable with the pipe markup: "...do |f|"

# What does the 'require' method do vs the 'include' method? 
# The include and require methods do very different things.
# Require: File level thing
# Include: Language level thing

# The require method does what include does in most other programming languages: run another file. It also tracks what you've required in the past and won't require the same file twice. To run another file without this added functionality, you can use the load method.
#The include method takes all the methods from another module and includes them into the current module. This is a language-level thing as opposed to a file-level thing as with require. The include method is the primary way to "extend" classes with other modules (usually referred to as mix-ins). For example, if your class defines the method "each", you can include the mixin module Enumerable and it can act as a collection. This can be confusing as the include verb is used very differently in other languages.

# So if you just want to use a module, rather than extend it or do a mix-in, then you'll want to use require.

# Oddly enough, Ruby's require is analogous to C's include, while Ruby's include is almost nothing like C's include.

# EX:
require 'open-uri'
open("http://www.ruby-lang.org/en") do |f|
  f.each_line {|line| p line} #'each_line' method identified each line of 'f' variable, which is yielded into a 'line' parameter and the p mode prints the line
  puts f.base_url # base_url method identifies the base_url of the f variable and is printed
  puts f.content_type # content_type method identifies the content type of the f variable and is printed
  puts f.charset # charset method identifies the character set of the f variable and is printed
  puts f.content_encoding #content_encoding of the f variable is identified and printed
  puts f.last_modified
end

#### HOW TO REQUIRE A SCRIPT THAT DOESN'T NEED A LIBRARY ##################################################################################
# With self-defined modules, you can require a module without having to require a library.
# Here's how:
#     module Whatever
       # write some code
#     end
# Then you can import this module by invoking:
# require "Whatever"

####  WHICH DIRECTORIES ON YOUR SYSTEM, RUBY WILL LOOK INTO TO FIND LIBRARIES YOU REQUIRE  ############################################### 
#  Open an irb console and type:
#  puts $LOAD_PATH
#  You’ll see all the directories where ruby look to find the libraries needed.
#  UPDATE: also puts $: did the trick.

###########################################################################################################################################
# PARAMETERS, UNPACKING  AND VARIABLES
#Some handy notes from Zed: when you run the name of a file in the termial, it's basicly noted as an "argument". And 'scripts' are just another name for your .rb files.
# When you type "ruby ext13.rb",  "ext13.rb" is actually the argument, and also the script.

first, second, third = ARGV # ARGV is the argument variable, in ALL CAPS because its a CONSTANT
# A CONSTANT should be be changed one the value has been assigned. This variable holds the arguments
# you pass to your scripts at runtime.

puts "The script is called: #{$0}"
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

# Now in the command line, the first argument labeled $0, will be slotted as the first parameter,
# and in this case its the name of the script.
# Then typing in the arguments will then be what gets populated in all the parameters respectively.

# ADDING the STDIN or standard input method with the gets method will caputre input if you program
# it that way...

something_asked = ARGV
puts "Are you okay?"
answer = STDIN.gets.chomp()

puts "Did I hear you say #{answer}?"

###########################################################################################################################################
# PROMPTING AND PASSING
# What is the prompt method? Well its computer programming jargon that literally addresses the idea of
# symbolically noting an exchange between answer and question from a command line. A prompt can be anything:
prompt = "> "
prompt = "hey!"
prompt = ":"

# It's a way for the programmer to create a kind of pattern and emphasize the Q and A inside the script.
puts "What are you thinking?"
this = STDIN.gets.chomp()

puts << MESSAGE
  "The inherited tag MESSAGE acts just like a PARAGRAH method and can place variables with string interpolation
   or standard input from exchange patterns from Q and A exchanges. Such as #{this}."
MESSAGE

###########################################################################################################################################
# DEFINING AN ARGUMENT, OPENING A FILE & READING IT
# We've learned about STDIN.gets and ARGV and now are getting ready to read files. 
# We would use the following program, saved in it's own file and another txt file. Both would be input into the command line.

# HOW DO WE DO THIS? First we need to define the file we are going to read; and in this case its
# defined with the 'first' method called on the ARGV: Argument Variable. We're going to call this variable 'good_news'.

good_news = ARGV.first  # In this case, it's the name of the file: good_news.txt which we input in the command line.
prompt = "hey, girlfriend!"

# Next, we then call the 'open' method on the File or "FILE OPEN" and this is passed to the parameter defined
# in the parens: (good_news); which is all equal to the variable txt. "txt" is both a variable and an extension!
txt = File.open(good_news)

# Then we go to task and print it.
puts prompt
puts "See what's inside: #{good_news}!"
puts txt.read() # this is the interesting thing, we are calling a function on the txt variable; which is the new file.

# Remember, a 'method' is simply a set of expressions that returns a value. 
# Methods by in large are symantic, which enables a quick read to what the 'function' or 'method' will actually do and what kind of value will be returned.

# Here's some more fancy stuff:
puts "Hey girlfriend, what's the name of that file you just opened?"
file_again = STDIN.gets.chomp()
txt_again = File.open(file_again)
puts txt_again.read()
# This last sequence of events creates a great recipe for reading files.
# Whatever is input from the command line will be evaluated by the 'read' method and printed.
# Testing this idea by inputting different files will surely hammer it home.

###########################################################################################################################################
STOPPED AT 16