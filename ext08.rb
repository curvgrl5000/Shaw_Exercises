# Exercise 8: PRINTING, PRINTING

# More of that stuff we just did to build good ol' chops and now we are printing and printing and printing

# 'formatter' variable equals the string of printf symbols '%s'
formatter = "%s %s %s %s"

# 'puts' prints the variable 'formatter' and the special symbol '%', signals the return of each '%s' symbol with the corresponding parameter in the array, held by integers 
puts formatter % [1, 2, 3, 4]

# 'puts' prints the variable 'formatter' and the special symbol '%', signals the return of each "%s" symbol with the corresponding string in the array 
puts formatter % ["one", "two", "three", "four"]

# 'puts' prints the variable 'formatter' and the special symbol '%', signals the return of each "%s" symbol with the corresponding boolean value in the array 
puts formatter % [true, false, false, true]

# 'puts' prints the variable 'formatter' and the special symbol '%', signals the return of each "%s" symbol with the corresponding parameter in the array, which happens to be the same variable.             
puts formatter % [formatter, formatter, formatter, formatter]

# 'puts' prints the variable 'formatter' and the special symbol '%', returns the string inside the brackets
puts formatter % [
     "I had this thing.",
     "That you could type up right.",
     "But it didn't sing.",
     "So I said goodnight."
  ]

formatter = "%s" # so formatter is a variable that is being defined by a preformatted string 

# Notice that even though I have an array of two strings, it only prints one string based on how the variable is redefined with only one symbol '%s'. See exercise below.
puts formatter % ["thingy" , "thingy"]  
puts formatter % ["that thingy"]
puts formatter % ["no, that thing", "no this thing", "nope that thing"]

puts formatter % ["nope "] * 10

puts formatter % ["test "] + formatter % ["test "]

formatting_two_strings = "%s %s"
puts formatting_two_strings % ["that thing", "that thingy"]

format_this = "%s %s"
puts format_this % ["one", "two", "three" "four", "five"] 
# again, if you don't call out what's going to be accepted into the formatter, it won't print

# 'format_that' variable is equal to the six printf '%s' symbols
format_that = "%s %s %s %s %s %s"

# puts method prints variable 'format_that' and the symbol '%' signals the return of each string parameter in the array 
puts format_that % ["one", "two", "three", "four", "five", "six"]