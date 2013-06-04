# 'puts' means prints, and everything in quotes is a string.

# Okay so a STRING object holds a sequence of bytes, typically represented by characters in quotes.
# STRING objects may be created using String::new or as literals. Literals are the actual contents between quotes.

puts "Hello World!"
puts "Hello Again"
puts "I like typing this."
puts "This is fun."
puts 'Yay! Printing.'
puts "I'd much rather you 'not'."
puts 'I "said" do not touch this.'   
puts "Remember that when youre flipping back and forth between printing and irb you have to hit that control D" 
# Or you'll get an error for sure! You do all that inline commenting here. Where you say things to your collaborators when something needs some tuning up.
puts "So that hash sign is obviously important right?" #Cuz you don't see what's being written here.
puts "And the interesting thing between puts and print are subtle but are worth knowing" # What's the difference you may ask?
puts "puts: writes to the screen with a carriage return at the end"
print "print: does the same without a carriage return."
printf "printf: formats a variabls like in C and Java."
print "So is this output a variable or a string?" # It's a string. A string object holds and manipulates an arbitrary sequence of bytes typically representing characters. 
puts "A string is generally understood as a data type and is often implemented as an array of bytes (or words)." 
puts "A variable is a string, but a string is not a variable. Hu?" #Check out the layout that showcases the difference.
puts "So what is this thing puts?" #It's a method, that writes a record separator and it writes a newline. If you call it with an array arguement, then it writes each element on a new line.
puts "this", "is", "a", "test" # So is this an array of strings? Yes, but they could also be an array of variables.def variables.
print "See what happened on the terminal when you hit the ruby ex1.rb" #Might be the same thing but apparently print is slightly different output.
prints "And of course you can take it a step futher and discover how other languages print or put files from the command line"  #Worth exploring of course. What's the way Python does it? Java? or even C++. What are the differences? Are there any? 
puts "What's another name for the hash symbol?" #octothorpe, is also called a 'pound', 'hash', 'mesh', or any number of names. As Mr. Zed said: pick one and chill out
puts "So are we ready for more?" #I thought so. 
