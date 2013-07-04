#Exercise 20: FUNCTIONS AND FILES

# "input_file" is an object that is defined as the the first slot or zero of the Argument Variable. 
# It's the single argument we pass from the commmand line. 
# So you could type: 'ruby ext20.rb good_news.txt' in the command line. 
# And 'good_news.txt' has now been set as the first argument.
# I created this text file to use for this excercise, but go ahead and make your own text file to experiment with.

input_file = ARGV[0]

# "print_all" is a method, that is being defined by one parameter, the variable 'f'; which in this case is setting itself to be 'good_news.text' or the 'current_file' as you will later see in the program. Just think of 'f' as a placeholder for a value yet to come.
# 'puts' prints what the 'read' method will have read from the expressed value of the variable 'f'.
# It's literally saying: 'read' what's in the 'f' variable, place the results within the parens() and print it.
def print_all(f)
  puts f.read()
end

# "rewind" is a method, that positions the ios to the beginnning of the input, resetting back to ARGV:[0]
#  the 'seek' method seeks within the 'f' variable, and is defined by the two parameters, first '0', 
# and the second parameter which is a constant, IO::SEEK_SET  = 0,  that literally means from beginning of the file. 
def rewind(f)
  f.seek(0, IO::SEEK_SET)
end

# 'print_a_line' is a method, that is passing two parameters in an array: 'line_count' and 'f'
# 'puts' prints the 'line_count'; which literally captures the actual line position of a line from the variable 'f'
#  and the instance variable 'f.readline()' reads the contents of the file and passes it into the empty parens. 
#  The most confusing part of this is of course, what in the heck is inside of 'f'? 
#  But again that's your 'current_file' line 36, your first argument and essentially the text file you've set in the first argument.
def print_a_line(line_count, f)
  puts "#{line_count} #{f.readline()}"
end

# The variable 'current_file' is equal to expressed value of 'File.open'(input_file')
# It's literallly saying:  The variable in the parens 'input_file', go ahead and 'open' that 'File'.
# Okay, so trace that 'input_file' up to line 9, and you'll see that it's set as the first argument, which is the text file "good_news.txt"
current_file = File.open(input_file)

# 'puts' prints the string in quotes
puts "First let's print the whole file:"
puts # a blank line
  
# 'print_all' is a method that literally prints the variable 'current_file', and 
# 'current_file' is expressed as the opened file passed in the 'input_file' variable, which is the first ARGV[0]
# I know I'm repeating myself here, but it's just good to hear it over and over again.
print_all(current_file)

# 'puts' prints the string  
puts "Now let's rewind, kind of like a tape."

# 'rewind' method calls the IO to reset to the beginning of what is passed into the variable 'current_file'  
rewind(current_file)

# 'puts' prints the string "Let's print three lines:"  
puts "Let's print three lines:"
  
# 'curent_line' is a variable that is equal to '10'
current_line = 10

# print_a_line is a method that sets up the logic referenced in the two parameters of the array.
# 'current_line' is the first parameter, which is equal to the integer 10
# 'current_file is the second parameter, which again is equal to the first ARGV[0]
print_a_line(current_line, current_file)
  
# 'curent_line' is a variable that is equal to '10', and then it's extended here as '10' + '1' = 11   
current_line = current_line + 1
# Now print_a_line has been refreshed with the extended logic and will print the value
print_a_line(current_line, current_file)

# Now 'curent_line' has been updated and we are adding to it with a + '1'     
current_line = current_line + 1
# And it's refreshed value is being passed and will be printed as such
print_a_line(current_line, current_file)
  
#EXTRA CREDIT
# Go through and write English comments for each line to understand what's going on.
# Each time print_a_line is run, you are passing in the variable current_line. Write out what current_line is equal to on each function call, and trace how it becomes line_count in print_a_line.
# Find each place a function is used, and go check its def to make sure that you are giving it the right arguments.
# Research online what the seek function for file does. Look at the rdoc documentation using the ri command and see if you can figure it out from there.


##########################################################################################################

# Research the shorthand notation += and rewrite the script to use that.  

input_file = ARGV[0]


def print_all(f)
  puts f.read()
end


def rewind(f)
  f.seek(0, IO::SEEK_SET)
end


def print_a_line(line_count, f)
  puts "#{line_count} #{f.readline()}"
end

current_file = File.open(input_file)

puts "First let's print the whole file:"
puts # a blank line
  
print_all(current_file)

puts "Now let's rewind, kind of like a tape."

rewind(current_file)

puts "Let's print three lines:"
  
current_line = 10
print_a_line(current_line, current_file)
  
# Here we're taking the value of the current_line and adding + '1', a form of Self Assignment
current_line += 1
print_a_line(current_line, current_file)

# This time it's taking the value of what was expressed on line 121 and adding to it
current_line += 1  
print_a_line(current_line, current_file)
