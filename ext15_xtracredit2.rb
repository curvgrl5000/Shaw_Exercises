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