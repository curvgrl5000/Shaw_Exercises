#Exercise 20: FUNCTIONS AND FILES

# "input_file" is an object that is defined as the the first slot or zero of the Argument Variable 
# in this case, it's the file that is input in the command line: 'testy.txt'
input_file = ARGV[0]

# "print_all" is a method, that is defined by the variable 'f'; which represents a file
# 'puts' prints what the 'read' method has read from the file
# It's literally saying: Print what has been read in the file.
def print_all(f)
  puts f.read()
end

# "rewind" is a method, that positions the ios to the beginnning of the input, resetting back to ARGV:[0]
#  the 'seek' method seeks within the two parameters, first '0', defined by the first argument
#  and the second parameter is a constant, IO::SEEK_SET  = 0,  which literally means from beginning of the file 
def rewind(f)
  f.seek(0, IO::SEEK_SET)
end

# 'print_a_line' is a method, that is passing two parameters in an array, the 'line_count' of the 'f' or file.
# 'puts' prints the variable 'line_count'; which literally captures the actual line position of a file
#  ... and the variable 'f.readline()' reads the contents of the file and passes it through the parens. 
def print_a_line(line_count, f)
  puts "#{line_count} #{f.readline()}"
end

# 'current_file' is a variable equal to the file that the 'open' method is opening, which in this case is the 'input_file'.
current_file = File.open(input_file)

# 'puts' prints the string in quotesa
puts "First let's print the whole file:"
puts # a blank line
  
# 'print_all' is the method that literally says to print the read file and in this case it's the 'current_file',
# 'current_file' is expressed as the opened file passed in the 'input_file' variable, or the first ARGV
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
# 'current_line' is the first parameter, which in 'print_a_line' is noted as the 'line_count' variable
# 'current_file is the second parameter, which in 'print_a_line' is notes as the 'f.readline' variable
print_a_line(current_line, current_file)
  
# 'curent_line' is a variable that is equal to '10' + '1' = 11   
current_line = current_line + 1


print_a_line(current_line, current_file)

# 'curent_line' is a variable that is equal to '10' + '1' = 12     
current_line = current_line + 1
print_a_line(current_line, current_file)
  
#EXTRA CREDIT
# Go through and write English comments for each line to understand what's going on.
# Each time print_a_line is run you are passing in a variable current_line. Write out what current_line is equal to on each function call, and trace how it becomes line_count in print_a_line.
# Find each place a function is used, and go check its def to make sure that you are giving it the right arguments.
# Research online what the seek function for file does. Look at the rdoc documentation using the ri command and see if you can figure it out from there.


##########################################################################################################

# Research the shorthand notation += and rewrite the script to use that. 