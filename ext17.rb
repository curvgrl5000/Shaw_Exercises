#Exercise 17: MORE FILES...

# 'from_file' and 'to_file' are the slotted variables respectively of the first and second parameters of the ARGV
# script is the variable that identifies both the name of the program, and it's position  as '0' in the ARGV's parameters
from_file, to_file = ARGV
script = $0

# prints the string and the variables
puts "We are copying from #{from_file} to #{to_file}"

# we could do these two on one line too, how? With that semicolon between the two expressions
# 'input' variable
# 'File.open' method
# '(from_file)' is the parameter and a variable
# 'indata' variable
# 'read' method, reads what is in the file: ()
# What's happening: "from_file" is being opened by the 'File.open' method and the value is passed back to the  'input' variable.
# Meanwhile, the 'read' method reads the 'input' variable of the file and passes the value back to the 'indata' variable 
input = File.open(from_file); indata = input.read()

# prints the string and the amount of bytes in the variable 'indata' that the 'length' method counted.
puts "The input file is #{indata.length} bytes long"

# prints the string and the method 'File.exists?' and the variable 'to_file'
# What's happening: The 'File.exists?' method asks if 'to_file' variable exists, which is referenced in the question in the string.
# The program will respond with a boolean result of 'True' or 'False'. 
puts "Does the output file exist? #{File.exists? to_file}"

# prints the string and accepts the keyboard command CTRL-C, ending or aborting the next method in the program.
puts "Ready, hit RETURN to continue, CTRL-C to abort."

# 'gets' method, literally gets the user's input from the commandline
STDIN.gets

# 'ouput' variable
# 'File.open' is the open method
# 'to_file' is the variable targetted by the 'File.open' method
# 'w' mode defines the 'File.open' method 
# What's happening: 'to_file' variable is being opened by the 'File.open' method, in the 'w' mode which truncates it's contents and writes to it, and the sum value of this expression is passed back to the 'output' variable.
output = File.open(to_file, 'w')

# Remember, the 'to_file' is still open. The 'write' method is passing the value of the parameter / variable 'indata' to the 'output' variable. And the value of the 'output' variable is again, being written to the 'to_file' variable with the 'w'rite mode.
output.write(indata)

# prints the string
puts "Alright, all done."

# 'output' variable is closed by the 'close' method
output.close()
# 'input' variable is also closed by the 'close' method
input.close


############################################################################################################################################################
# Extra Credit
# Go read up on Ruby's require statement, and start Ruby to try it out. Try importing some things and see if you can get it right. It's alright if you do not.
# In order to create reusable components--ones that can be easily used in other programs--a programming language must have some way of smoothly importing 
# that code at run-time. In Ruby, the require method is used to load another file and execute all its statements. 

# This serves to import all class and method definitions in the file. In addition to simply executing all of the statements in the file, 
# the require method also keeps track of which files have been previously required and, therefore will not require a file twice.


############################################################################################################################################################
# This script is really annoying. There's no need to ask you before doing the copy, and it prints too much out to the screen. Try to make it more friendly to use by removing features.
# See how short you can make the script. I could make this 1 line long.

from_this_file, to_that_file = ARGV
script = $0
puts "We are now copying from #{from_this_file} to #{to_that_file}"    
input = File.open(from_this_file); indata = input.read()    
puts "This input file is #{indata.length} bytes long.\nDoes the output file exist? #{File.exists? to_that_file}.\nReady, hit RETURN to continue, CTRL-C to abort." 
STDIN.gets
output = File.open(to_that_file, 'w'); output.write(indata)
puts "Okay, we've close the file and we're essentially all done."
output.close()
input.close        


############################################################################################################################################################
# Notice at the end of the WYSS I used something called cat? It's an old command that "con*cat*enates" files together, but mostly it's just an easy way to print a file to the screen. Type man cat to read about it.
# Windows people, find the alternative to cat that Linux/OSX people have. Do not worry about man since there is nothing like that.


############################################################################################################################################################
# Find out why you had to do output.close() in the code.
# ANSWER: This prevents the file from being accessible; therefore the file can't be overwritten. It's like closing the door after you've opened it, polite and tidy folks!

