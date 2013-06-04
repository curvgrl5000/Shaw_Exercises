#Exercise 16: READING AND WRITING FILES

# close -- Closes the file. Like File->Save.. in your editor.
# read -- Reads the contents of the file, you can assign the result to a variable.
# readline -- Reads just one line of a text file.
# truncate -- Empties the file, watch out if you care about the file.
# write(stuff) -- Writes stuff to the file.

####################################################################################################################################

# 'filemname' is a variable
# 'ARGV' is the ARGument Variable
# 'first' is the method
#  What's happening: The 'first' method targets the first line, that defines the ARGV and this value is passed to the 'filename' variable.
filename = ARGV.first

# 'script' is a variable
# '$0' is a common naming convention that passes the program_name back to the 'script' variable
# it's used in python, perl and smalltalk
script = $0

# 'puts' method : prints the string in quotes, and the string interpolation, 'filename'.
# In this case the variable 'filename' is defined by ARGV.first. 
puts "We're going to erase #{filename}."

# 'puts' method : prints the string in quotes, and instructs the user to choose a conclusion with a common keyboard command, which fundamentally means logic has been put into place that accepts the user's input and controls the application's response.
puts "If you don't want that, hit CTRL-C (^C)."

# 'puts' method : prints the string and instructs the user to choose a conclusion with a common keyboard command, 'Return". In this case, a return sequence fires the application's response to user input
puts "If you do want that, hit RETURN."

# 'puts' : prints the string
print "?"

# the 'gets' method, literally gets the user's 'STDIN' or standard input from the commandline, in this case it's the answer that the application is asking on line 29
STDIN.gets

# 'puts' : prints the string 
puts "Opening the file..."

# The 'target' variable is defined dynamically by a class, a method, two parameters (one being a mode). 
# First, the 'File' class is opened by the 'open' method, and the file to be opened is defined in 
# parens (filename) the first parameter, finally the "w" or write mode, which writes to the filename.
# The file name will be the first argument that is input into the command line, example: ruby ext16.rb 
target = File.open(filename, 'w')

# 'puts' : prints the string
puts "Truncating the file. Goodbye!"

# the 'target' variable is  modified by the 'truncate' method which truncates the 'size' of the 'target'.
# Essentially the 'size' method captures the size of the 'target' variable ( defined by the filename variable ),
# The 'truncate' method zapps the entire contents of the 'target' variable. 
# What's happening:  The contents of the 'target' variable is being defined by the 'size' method' then it's being deleted by the 'truncate' method, this action is being passed to the dynamic 'target'
target.truncate(target.size)

# 'puts' : prints the string
puts "Now I'm going to ask you for three lines."

# What's happening: 'Print' prints the string to prompt the user, and the variable  'line1' is set to the users input returned by the gets method from STDIN and cuts it with 'chomp'. 
# The big idea here is that the semicolon 
 
print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

# 'puts' : prints the string
puts "I'm going to write these to the file."

# the value of the variable 'line1' which has been defined above, is passed to the target by the  'write' method
target.write(line1)

# "\n" means carraige return : "\" and new line : "n"
# In this sequence, take the value of a new line : "\n" and with the 'write' method pass it to the target variable
target.write("\n")

# Same thing : line 47ruby
target.write(line2)

# Same thing : line 60
target.write("\n")

# Same thing : line 47
target.write(line3)

# Same thing : line 60
target.write("\n")

# 'puts' :prints the string
puts "And finally, we close it."

# variable 'target' which is the opened file is then 'closed', with the empty parens : ()
target.close()

############################################################################################################################################

# If you chose to delte the contents of the file, and truncate it. You can check your work in two ways:
# Open the file in your text editor that you were writing to.
# type:
   # 'cat name_of_file' 
# to see it printed in the commandline. 'cat' means concatenate, or print


#Extra Credit
# Write a script similar to the last exercise that uses read and argv to read the file you just created.
#There's too much repetition in this file. Use strings, formats, and escapes to print out line1, line2, and line3 with just one target.write() command instead of 6.

consciousness = ARGV.first
script = $0

puts "We're going to keep emptying our minds and #{consciousness}."
puts "Let's start this exercise by clearing our minds, erasing the contents of the file and hitting RETURN."
print "Okay?"
STDIN.gets
puts "Opening the file..."
target = File.open(consciousness, 'w')
puts "Erasing our minds. Goodbye!" 
target.truncate(target.size)
puts "Okay, unenlightened one. We will ask you to clear your mind and state three mantras."
print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()
target.write("#{line1}\n#{line2}\n#{line3}\n")
puts" And finally , we close our minds and we are enlightened."
target.close()


############################################################################################################################################

# Find out why we had to pass a 'w' as an extra parameter to open. Hint: open tries to be safe by making you explicitly say you want to write a file.
# Okay so you need to open the file prior to writing to it. Its a routine where one comes before the other.

# Mode |  Meaning
#  -----+--------------------------------------------------------
# "r"  |  Read-only, starts at beginning of file  (default mode).
#  -----+--------------------------------------------------------
#  "r+" |  Read-write, starts at beginning of file.
#  -----+--------------------------------------------------------
#  "w"  |  Write-only, truncates existing file
#       |  to zero length or creates a new file for writing.
#  -----+--------------------------------------------------------
#  "w+" |  Read-write, truncates existing file to zero length
#       |  or creates a new file for reading and writing.
#  -----+--------------------------------------------------------


# Examples of each of the modes:
# THE READ MODE
a_file, b_file, c_file, d_file = ARGV
script = $0

a_file = ("testfile_1.txt")
b_file = ("testfile_2.txt") 
c_file = ("testfile_3.txt") 
d_file = ("testfile_4.txt") 

# THE r+, READS ONLY
puts "** Here's the contents of a file #{a_file}:"
  File.open(a_file, "r") do |aFile|
# ... process the file
  puts aFile.gets
end


# THE r+, READ AND WRITE MODE
puts "** Here's the contents of a file #{b_file}:" 
File.open(b_file, "r+") do |bFile|
# ... process the file
  puts bFile.gets
end


# THE 'w' WRITE MODE, ONLY WRITES
puts "** Here's the contents of a file #{c_file}:"
File.open(c_file, "w+") do |cFile|
# ... process the file
  puts cFile.gets
end


# If you open the file with 'w' mode, then do you really need the target.truncate()? 
# Go read the docs for Ruby's File.open function and see if that's true.
# Answer: No, it's redundant


