#Exercise 3: NUMBERS AND MATH

# CHEATSHEET of COMMON OPERATORS

#  + plus
#   - minus
#  / slash
#  * asterisk
#  % percent
#  < less-than
#  > greater-than
#  <= less-than-equal
#  >= greater-than-equal

# 'puts' method : prints the string
puts "I will now count my chickens:"

# 'puts' method: prints the string, a carriage return and then the results of the integers and operators: 25 + 30 / 6
# Note that ruby automatically follows order of operations when evaluating operations
puts "Hens", 25 + 30 / 6 

# 'puts' method: prints the string and the results of the integers and operators: 100 - 25 x 3 % 4
#What does a percent sign do? We will find out in a bit.
puts "Roosters", 100 - 25 * 3 % 4

# 'puts' method : prints the string
puts "Now I will count the eggs:"

# 'puts' method  : prints the operation of  3 + 2 + 1 - 5 + 4 x .02 - 1 divided by 4 + 6
# The math is expressing floating numbers
# Wikipedia says this about floating numbers: In computing, floating point describes a method of representing an approximation to real numbers in a way that can support a wide range of values. 
puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6

# 'puts' method: prints the string and the results of the integers and operators: .02 x 100 / 2
# Have you figured out the percent sign yet?
# The percent sign is called modulo. It returns the remainder from a division problem as an answer.
# Ex. (7 / 3) is (2 remainder 1), so 7 % 3 would return the remainder, or 1
# Note: If you use modulo, and the divisor is bigger than the dividend, the operation will always return the divisor
# Ex. (3 % 6) and (3 % 100) both return 3 as the answer
puts "Is this correct?", 2 % 100 / 2

# 'puts' method : prints the string
puts "Is it true that 3 + 2 < 5 - 7?"

# 'puts' method : prints the string 
puts 3 + 2 < 5 - 7

# 'puts' method : prints the string and the results of the integers and operators: 3 + 2
puts "What is 3 + 2?", 3 + 2

# 'puts' method : prints the string and the results of the integers and operators: 5 - 7
puts "what is 5 - 7?", 5 - 7

# 'puts' method : prints the string
puts "Oh, that's why it's false."

# 'puts' method : prints the string
puts "How about some more."

# 'puts' method : prints the string and the results of the integers and operators: 5 is greater than -2
puts "Is it greater?", 5 > -2  #boolean answer

# 'puts' method : prints the string and the results of the integers and operators: 5 is greater or equal than -2
puts "Is it greater or equal?", 5 >= -2 #boolean answer

# 'puts' method : prints the string and the results of the integers and operators: 5 is less or equal than -2
puts "Is it less or equal?", 5 <= -2 #boolean answer

# 'puts' method : prints the string and the results of the integers and operators: 5 divided by 3
puts "Okay so 5 / 3?", 5 / 3  # Remember that comma or you'll see an error in the terminal

# ''puts' method : prints the string and the results of the integers and operators: 10 divided by 3
puts "10 / 3?", 10 / 3  #boolean answer

# 'puts' method : prints the string and the results of the integers and operators: 100.00 divided by 3
puts "100.0 / 3?", 100.0 / 3  #Using a floating number will give you a full decimal response and that's something worth controlling. This is different than a floating number which rounds the output