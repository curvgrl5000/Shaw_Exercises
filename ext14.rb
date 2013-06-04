#Exercise 14: PROMPTING AND PASSING

# 'user' variable equals the following:
# 'ARGV' is the argument variable
# '.' is the send method 
# 'first' method  defines the ARGV's value that is passed to the 'user' variable
user = ARGV.first

# variable 'prompt' prompts the user's input
prompt = '> '

# 'puts' prints the string and string interpolation variables 'user' and $0 
# '$' selects the name of the argument, which in this case is the name of the file: ext14.rb
puts "Hi #{user}, I'm the #{$0} script."

# prints the string
puts "I'd like to ask you a few questions."

# 'puts' prints the string and the string interpolation variable 'user', which is the first argument input
# that was input in the terminal
puts "Do you like me #{user}?"

# 'print' prints the user input captured in the shell without a return, so it will serve as a familiar prompt for the user to put their response
print prompt

# 'likes' variable is equal to the following:
# 'STDIN" is the standard input notation 
# 'gets' method returns the user input, STDIN 
# 'chomp' method cuts the string and starts a new line with a carrige return
# What's happening: 'gets' retuns the string input by the user into the parens and passes it to the 'likes' variable
likes = STDIN.gets.chomp() 

# 'puts' prints the string and the string interploation method, 'user'
puts "Where do you live #{user}?"

# prints the user input
print prompt

# 'lives' variable is equal to the following: 
# 'STDIN', standard input 
# 'gets' method returns the string from the STDIN
# 'chomp' method cuts the string and starts a new line with a carrige return 
# What's happening: 'gets' retuns the string input by the user into the parens and passes it to the 'lives' variable
lives = STDIN.gets.chomp() 

# 'puts' prints the string
puts "What kind of computer do you have?"

# 'print' prints the user input
print prompt

# 'computer' variable is equal to the following:
# 'STDIN', standard input 
# 'gets' method returns the string from the STDIN
# 'chomp' method cuts the string and starts a new line with a carrige return 
# What's happening: 'gets' retuns the string input by the user into the parens and passes it to the 'computer' variable
computer = STDIN.gets.chomp() 

# 'puts' prints the inherited value defined by 'message' which is a paragraph
puts <<MESSAGE
"Alright, so you said #{likes} about liking me.
You live in #{lives}. 
And you have a #{computer}.     Nice."
MESSAGE
#When you put many extra spaces inside the MESSAGE, it's honrored. See how NICE is way out there in the terminal.

#EXTRA CREDIT: Find out what ZORK and ADVENTURE were. Try to find a copy and play it.
# Somehow chang the prompt variab.lnto something else entirely, ASK THE STUDY GROUP what that might be.


