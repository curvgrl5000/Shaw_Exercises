# Exercise 33: WHILE LOOPS 

i = 0
numbers = []

while i < 3
  puts "At the top i is #{i}"
  numbers.push(i)

  i = i + 1
  puts "Numbers now: #{numbers}"
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

for num in numbers
  puts num
end


###############################################################################################

# Extra Credit
# Convert this while loop to a function that you can call, and replace 6 in the test (i < 6) with a variable.
# Now use this function to rewrite the script to try different numbers.
# Add another variable to the function arguments that you can pass in that lets you change the + 1 on line 8 so you can change how much it increments by.

# Rewrite the script again to use this function to see what effect that has.

i = 0
numbers = []
x = 10 / 2

while i < x
  puts "At the top i is #{i}"
  numbers.push(i)

  i = i + 2
  puts "Numbers now: #{numbers}"
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

for num in numbers
  puts num
end

# Now, write it to use for-loops and ranges instead. Do you need the incrementor in the middle anymore? What happens if you do not get rid of it?

# If at any time that you are doing this it goes crazy (it probably will), just hold down CTRL and hit c (CTRL-c) and the program will abort.   




