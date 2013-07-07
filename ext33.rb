# Exercise 33: WHILE LOOPS 
# Now to totally blow your mind with a new loop, the while-loop. A while-loop will keep executing the code block under it as long as a boolean expression is True.

# Wait, you have been keeping up with the terminology right? That if we write a statement such as if items > 5 or for fruit in fruits we are starting a code block. Then we indent the lines that follow, which are said to be within the block, until we reach an end statement, which closes the block. This is all about structuring your programs so that Ruby knows what you mean. If you do not get that idea then go back and do some more work with if-statements, functions, and the for-loop until you get it.

# Later on we'll have some exercises that will train your brain to read these structures, similar to how we burned boolean expressions into your brain.

# Back to while-loops. What they do is simply do a test like an if-statement, but instead of running the code block once, they jump back to the "top" where the while is, and repeat. It keeps doing this until the expression is False.

# Here's the problem with while-loops: sometimes they do not stop. This is great if your intention is to just keep looping until the end of the universe. Otherwise you almost always want your loops to end eventually.

#To avoid these problems, there's some rules to follow:

# 1. Make sure that you use while-loops sparingly. Usually a for-loop is better.
# 2. Review your while statements and make sure that the thing you are testing will become False at some point.
# 3. When in doubt, print out your test variable at the top and bottom of the while-loop to see what it's doing.

##################################################################################################################################

i = 0          # Okay, so obviously the variable 'i' is equal to the integer 0
numbers = []   # Here the variable will be populated with a new array from a given object coming from the 'push' method on line 25

while i < 6    # 'while-loop' is setting up the logic that will end once 'i' is not less than 6, which means ladies that it's gonna      
               # keep looping unitl it reaches 5. Test it by changing the number then run in the command line.
  puts "At the top i is #{i}"  # put prints the string and the current value of 'i', which will be dynamicly changed with each looping cycle
  numbers.push(i) # The 'push' method literally PUSHES the given objects, which returns the array itself to the value of 'i'
  # And this continues to occur until the 'while-loop' produces a 'false' result. I'm going to keep repeating this for posterity.

  i = i + 1  # So with a starting value of 0; it's added to by + 1. And this will continue until the 'while-loop' produces a 'false' result
  puts "Numbers now: #{numbers}"  # 'numbers' is dynamically added to by + 1 each time it loops, expressed as a new parameter in the array
  puts "At the bottom i is #{i}"  # And now when we print the string, we get the final value of 'i'. 
                                  # If it's not obvious, the copy in the string can say anything you wish, but the value of 'i' will always render 
                                  # the last value produced by this method's scope. Test it!
end

puts "The numbers: "  # puts the string

for num in numbers   # 'num' is a built-in ruby function that returns the value of a variable. In this case, it's the variable 'numbers', 
  puts num           #  and since numbers returns an array, it will print the numbers in the array that the 'push' method dynamically creates
end                   
puts #blank  
puts ":::\\:::\\" *10
puts #blank

##################################################################################################################################
# Extra Credit
# Convert this while-loop to a function that you can call, and replace 6 in the test (i < 6) with a variable.
# Now use this function to rewrite the script to try different numbers.
# Add another variable to the function arguments that you can pass in that lets you change the + 1 so you can change how much it increments by.

# Rewrite the script again to use this function to see what effect that has.

y = 0
numbers = []
x = 12 / 2

while y < x  # 'while-loop' is setting up the logic that will end once 'y' is not less than x which is equal to 6
  puts "The top number in the array is #{y}" # prints the string and the current value of 'y', which will be dynamicly changed with each looping cycle
  numbers.push(y)  # The 'push' method literally PUSHES the given objects, which returns the array itself to the value of 'y'
  # And this continues to occur until the 'while-loop' produces a 'false' result.

  y = y + 2  # So with a starting value of 0; it's added to by + 2. And this will continue until the 'while-loop' produces a 'false' result
  puts "Numbers now: #{numbers}"  # 'numbers' is dynamically added to by + 2 each time it loops, expressed as a new parameter in the array
  puts "At the bottom of y is #{y}"  # And now when we print the string, we get the final value of 'y'.
end

puts "The numbers: "  # puts the string   

for num in numbers    # 'num' is a built-in ruby function that returns the value of a variable. In this case, it's the variable 'numbers', 
  puts num            #  and since numbers returns an array, it will print the numbers in the array that the 'push' method dynamically creates
end
puts #blank  
puts ":::\\:::\\" *10
puts #blank

##################################################################################################################################
# More Extra Credit   
# Now, write it to use for-loops and ranges instead. Do you need the incrementor in the middle anymore? What happens if you do not get rid of it? Go ahead and test this in the command line and see what happens 

i = 0
numbers = []

for i in 0..6   # Here, the range has been defined for the variable 'i' and the 'for' method will execute each element in the expression once.
  if i > 6 then  # and then sets up the logic to note that if 'i' is greater than 6 then break or terminate the looping
    break  # Terminates the most internal loop. Terminates a method with an associated block if called within the block (with the method returning nil). 
  end
  puts "The top number in the range is #{i}" # prints the string and the current value of 'i', which will be dynamicly changed with each for-looping cycle
  numbers.push(i)  # The 'push' method literally PUSHES the given objects, which returns the array itself to the value of 'i'
  # And this continues to occur until the 'for-loop' stops with the help of the 'break' method as i reaches the value of 6

  i = i + 2  # So with a starting value of 0; it's added to by + 2. And this will continue until we see that break
  puts "The numbers in the range: #{numbers}"  # 'numbers' is dynamically added to by + 2 each time it loops, expressed as a new parameter in the array
  puts "At the bottom of the main number is #{i}"  # And now when we print the string, we get the final value of 'i'.
end

puts "The numbers: "  # puts the string   

for num in numbers    # 'num' is a built-in ruby function that returns the value of a variable. In this case, it's the variable 'numbers', 
  puts num            #  and since numbers returns an array, it will print the numbers in the array that the 'push' method 
                      #  dynamically creates              
  
end
puts #blank  
puts ":::\\:::\\" *10
puts #blank

##################################################################################################################################
# More Extra Credit  Here's an expample using the 'begin' and 'end until' modifier with a global variable

i = 0    # Obviously 'i' is zero, folks!     
n = 5    # Obviously 'n' is 5!  

begin    # Just another way to 'begin' the program 
   puts("The top number in the range is = #{i}") # Here, we're printing the string and the integer
   i +=1;  # Captures the dynamic value of 'i' and the shorthand notation of '+=' means: i = i + 1
   puts "At the bottom of the main number is #{i}"  # And now when we print the string, we get the final value of 'i'.
end until i > n  # HERE is where the logic gets noted. UNTIL we get to where i > n the 'until-looping' will continue

puts "The final number in the spectrum is: #{n + 1} "  # puts the string and the variable plus one

puts #blank  
puts ":::\\:::\\" *10
puts #blank 


##################################################################################################################################
# More Extra Credit  Here's another expample using the'until' modifier:     

i = 0           # Obviously 'i' is zero, folks!
numbering = []  # Here we make room for a returning array

until i > 6  do # the 'until' method sets up the logic for the variable 'i' and then says 'do' the following:
  puts("First i starts out as: #{i}, then changes by one.") # print out the string and the dynamic value of the 'i' variable
  numbering.push(i) # Here we use the 'push' method to the variable'numbering' and the pass it to 'i'
  i = i + 1; # Everytime we loop over this logic, remember 'i' gets dynamically updated, and added to by 1.
  puts "Tada, and now the array includes: #{numbering}" # Check out the command line, you'll see it's been updated. 
  puts "And boom now, i is: #{i}"  # And now when we print the string, we get the final value of 'i'.
end

puts "Those numbers here: "  #  puts the string
for num in numbering         #  'num' is a built-in ruby function that returns the value of a variable. In this case, it's the variable 'numbers',               
  puts num                   #  and since numbers returns an array, it will print the numbers in the array that the 'push' method 
                             #  dynamically creates              
end
