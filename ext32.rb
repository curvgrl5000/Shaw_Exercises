# EXERCISE 32: LOOPS AND ARRAYS    

the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

#this first kind of for-Loop goes through an array
for number in the_count
  puts "This is count #{number}"
end

# same as above, but using a block instead
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

#also we can go through mixed arrays too
for i in change
  puts "I got #{i}"
end

# we can also build arrays, first start with an empty one
elements = []

# then use a range object to do 0 to 5 counts
for i in (0..5)
  puts "Adding #{i} to the list."
 # push is a method that arrays understand. Append — Pushes the given object(s) on to the end of this array. This expression returns the array itself, so several appends may be chained together. See also #pop for the opposite effect.
 elements.push(i)
end

# now we can puts them out too
for i in elements
  puts "Element was: #{i}"
end
puts #blank

###############################################################################################

# Extra Credit
# Take a look at how you used the range (0..5). Look up the Range class to understand it.
# Could you have avoided that for-loop entirely on line 24 and just assigned (0..5) directly to elements?
# Find the Ruby documentation on arrays and read about them. What other operations can you do to arrays besides push?

#########################################################################################

# Extra Credit
# Make new parts of the game and change what decisions people can make. Expand the game out as much as you can before it gets ridiculous.

# a trailing comma is ignored
top_picks = [1, 2, 3, 4, 5]
hairstyles = ['bob', 'wave', 'braid', 'ponytail', 'pixie-cut', 'twist']
shoes = ['heels', 'flats', 'boots', 'sandals', 'sneakers']

puts shoes[0]
puts shoes[1]
puts shoes[2]
puts shoes[3]
puts shoes[4]
puts shoes[5] = 'flip-flops'
puts shoes[6] = 'platforms'  
puts shoes[7] = 'slippers'
puts shoes[8] = ['red shoes', 'tennies', 'black boots']   

for number in top_picks
  puts "The range of top picks include: #{number}"
end

hairstyles.each do |hairstyle|
  puts "A type of hairstyle: #{hairstyle}"
end

for i in hairstyles
  puts "I've had a #{i}"
end

elements = []  

for i in (shoes)
  puts "I love those #{i}, I got to have more of them!"
  elements.push(i)
end

for i in elements
  puts "I'm gonna wear #{i} today."
end

puts hairstyles.sort   # sorts the items in the array alphabetically
puts shoes.length      # counts the number of items in the shoes array
puts top_picks.first   # chooses the first item in the array and prints it
puts hairstyles.last   # chooses the last item in the array and prints it


shoes.delete(shoes[8]) # The array in Shoes 8 couldn't be confereted in to a string, so I deleted it
shoes.each do |s| 
  puts 'I love ' + s + '!' 
  puts "Don't you?"  
end

puts shoes.class.ancestors


# An environment variable is a link between our program and the outside world. An environment variable is essentially a label referring to a piece of text; and can be used to store configuration information such as paths, usernames, and so on. You can access operating system environment variables using the predefined variable ENV. ENV is simply a hash.
ENV.each {|k,v| puts "#{k}: #{v}"}

  
       