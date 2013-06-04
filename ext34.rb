# Exercise 34: ACCESSING ELEMENTS OF ARRAYS 

animals = ['bear', 'python', 'peacock',
'kangaroo', 'whale', 'platypus']

bear = animals[0]; puts bear
puts animals[0]
puts animals[0 + 3]
puts animals[1]
puts animals[2]
puts animals[3]
puts animals[4]
puts animals[5]
puts animals[6]

puts animals.first
puts animals.last
puts animals.sort
puts animals.length  



###############################################################################################

# Extra Credit
# Read about ordinal and cardinal numbers online.
# In mathematics, cardinal numbers, or cardinals for short, are a generalization of the natural numbers used to measure the cardinality (size) of sets. The cardinality of a finite set is a natural number – the number of elements in the set. The transfinite cardinal numbers describe the sizes of infinite sets.

# With what you know of the difference between these types of numbers, can you explain why this really is # 2011? (Hint, you can't pick years at random.)
 
 
# Write some more arrays and work out similar indexes until you can translate them.
# Use Ruby to check your answers to this as well.

snacks = ['popcorn', 'seeds', 'cookies', 'nuts', 'm&ms', 'protein-bars', 'carrot sticks']
puts "A great list of snacks to eat:"
puts snacks [0]
puts snacks [1]
puts snacks [2]
puts snacks [3]
puts snacks [4]
puts snacks [5] 
puts snacks [6]   
puts snacks [7] = 'trail mix'
puts snacks [8] = ['oranges', 'apples', 'pears']   
puts #blank

def prompt
  print "Type it out: "
end

snacks.delete(snacks[8])
snacks.each do |s| 
  puts 'I love ' + s + '!' 
end
puts #blank
puts "What's missing?"  
prompt; new_snack = gets.chomp()  
puts #blank
puts "Okay added to our list:"
puts [snacks, new_snack]


