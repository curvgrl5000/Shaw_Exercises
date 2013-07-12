# Exercise 34: ACCESSING ELEMENTS OF ARRAYS 
# Arrays are pretty useful, but unless you can get at the things in them they aren't all that great. You can already go through the elements of a list in order, but what if you want say, the 5th element? You need to know how to access the elements of an array. Here's how you would access the first element of an array:


animals = ['bear', 'python', 'peacock',
'kangaroo', 'whale', 'platypus', 'snails']

bear = animals[0]; puts bear  # bear
puts animals[0]               # bear
puts animals[0 + 3]           # kangaroo
puts animals[1]               # python
puts animals[2]               # peacock
puts animals[3]               # kangaroo
puts animals[4]               # whale
puts animals[5]               # platypus
puts animals[6]               # snails
puts #
puts ":::\\:::\\" *8
puts #
puts animals.first            # 'first' method returns the first element in the array of the variable 'animals'
puts animals.first(2)         #  So here the 'first' method returns the first two parameters in the array... 
puts animals.last             #  So here the 'last' method returns the last element in the array...
puts animals.last(3)          #  So here the 'last' method returns the last three parameters in the array...
puts #
puts ":::\\:::\\" *8
puts #
puts animals.sort              # Returns a new array created by sorting self in alphabetical order
puts animals.sort { |x,y| y <=> x }  # Sorts self in place and comparisons for the sort will be done using the <=> operator 
puts animals.length            # Returns the number of elements in self, with an integer.
puts #blank  
puts ":::\\:::\\" *8
puts #blank


###############################################################################################

# Extra Credit
# Read about ordinal and cardinal numbers online.
# In mathematics, cardinal numbers, or cardinals for short, are a generalization of the natural numbers used to measure the cardinality (size) of sets. The cardinality of a finite set is a natural number – the number of elements in the set. The transfinite cardinal numbers describe the sizes of infinite sets.

# With what you know of the difference between these types of numbers, can you explain why this really is # 2011? (Hint, you can't pick years at random.)
 
# Write some more arrays and work out similar indexes until you can translate them.
# Use Ruby to check your answers to this as well.

snacks = ['popcorn', 'seeds', 'cookies', 'nuts', 'm&ms', 'protein-bars', 'carrot sticks']
puts "A great list of snacks to eat:"
puts snacks [0]  # popcorn
puts snacks [1]  # seeds
puts snacks [2]  # cookies
puts snacks [3]  # nuts
puts snacks [4]  # m&ms
puts snacks [5]  # protein-bars
puts snacks [6]  # carrot sticks 
puts snacks [7] = 'trail mix'                     # Adds another element /  parameter into the array of the variable 'snacks'
puts snacks [8] = ['oranges', 'apples', 'pears']  # Adds 3 arrays / parameters into the array of the variable 'snacks' 
puts #blank

def prompt
  print "Type it out: "
end

snacks.delete(snacks[8])
snacks.each do |s|             # The 'each' method calls the given block once for each element in self, passing that element as a parameter. 
  puts 'I love ' + s + '!'     # prints 'I love + each element returned by the method in the variable snacks placed into the block: |s| + !'
end
puts #blank
puts "What's missing?"         # prints the string
prompt; new_snack = gets.chomp()  # Then the prompt, and then 'new_snack' will be equal to the value of what the 'gets' method passes,
                                  # and 'chomp' pushes a new line and a carriage return back to a new line.
puts #blank
puts "Okay added to our list:" # prints the string
puts [snacks, new_snack]       # prints the variables


