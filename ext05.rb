#Exercise 5: MORE VARIABLES AND PRINTING

# The format string specifies a method for rendering an arbitrary number of varied data type parameter(s) into a string. This string is then by default printed on the standard output stream, but variants exist that perform other tasks with the result. Characters in the format string are usually copied literally into the function's output, with the other parameters being rendered into the resulting text at points marked by format specifiers, which are typically introduced by a % character.

# Let’s talk about how would you format strings in ruby, for example if you want to have a leading 0 even if the number is under 10 (01, 02, 03…) , in other languages you can use the printf function to do this and if you ever used C you probably are familiar with it, you do this using format specifiers and then the variables you would like to print.

# While printf is also available in ruby we can also do this using puts, here is an example:

#  message = "Processing of the data has finished in %d seconds" % [time]
#  puts message

# Output => "Processing of the data has finished in 12 seconds"

# So in this example %d is the format specifier (see list of specifiers below) and time is the variable we want formatted, a %d format will give us whole numbers only, if we want floating point numbers we need to use %f, we can specify the number of decimal places we want like this %0.2f, here is an example:

#  score = 78.5431
#  puts "The average is %0.2f" % [score]

#  Output => The average is 78.54

# As you can see from this example, we don’t need to store it into a variable first and we can shorten the actual value (it will automatically round up) hope you enjoyed this fast trip into the world of output formatting.


#### AN EXAMPLE ##################################################################################################### 
my_name = 'John Doe'  # variable = literal string   
my_age = 45 # variable = integer
my_height = 74 # variable = integer
my_weight = 180 # variable = integer
my_eyes = 'Green' #variable = literal string
my_teeth = 'White' #variable = literal string
my_hair = 'Black' #variable = literal string

#prints string and embeds the variable inside the string, '% my_name' is the special syntax noting the variable to be placed inside the string, hence the name of the method: ruby format strings. 
puts "Let's talk about %s." % my_name 
puts "He's %d inches tall." % my_height
puts "He's %d pounds heavy." % my_weight
puts "Actually that's not too heavy."

#prints string and the variables embedded in the array. Each parameter is the slot for the data held by the variable
puts "He's got %s eyes and %s hair." % [my_eyes, my_hair]
puts "His teeth are usually %s depending on the coffee." % my_teeth

# this line is tricky, try to get it exactly right. Again, the parameters are slotting the data held by the variables in the array.
puts "If I add %d, %d, and %d, I get %d." % [
    my_age, my_height, my_weight, my_age + my_height + my_weight] 
    
#printf : print formatted, format specifiers
#Here's a quick summary of the available printf format specifiers:

#   %c	 character
#   %d	 decimal (integer) number (base 10)
#   %e	 exponential floating-point number
#   %f	 floating-point number
#   %i	 integer (base 10)
#   %o	 octal number (base 8)
#   %s	 a string of characters
#   %u	 unsigned decimal (integer) number
#   %x	 number in hexadecimal (base 16)
#   %%	 print a percent sign
#   \%	 print a percent sign



#### ANOTHER EXAMPLE ##################################################################################################### 
her_name = 'Diane Von Furstenberg' #variable = string
her_age = 66 # variable = integer
her_experience = 46 # #variable = integer  
her_sig = 'DVF' #variable = string  
her_worth = 120.00 # #variable = integer that is not a floating number
her_equity = 80 # #variable = integer    
her_dress = 'wrap dress' #variable = string 
her_husband = 'Barry Diller' #variable = string 
her_business = 'Fashion'  #variable = string 
available_in = 70 # #variable = integer
small_investment = 40"k"

# prints the string and the embedded variable, which is a 'format string'.
puts "Introducing the fabulous %s." % her_name   
puts "She and her company are known as %s." % her_sig

# prints the string and the embedded variables which are noted in the array of 2 parameters, which is a 'format string'.
puts "She's now %d, and has had an amazing career for over %d years." % [her_age, her_experience]
puts "Her popularity can be showcased when she sold %d%% of her company's equity over QVC for %d million in less than 2 hours." % [her_equity, her_worth] # note that '%d%% is equalling 80 percent when the format specifiers are concatinated

# prints the string and the embedded variables which are noted in the array of 2 parameters
puts "And it all started with the %s and her family's small invesment %d" % [her_dress, small_investment]
puts "These days %s and %s live happily in New York and her products are available in over %s countries." % [her_sig, her_husband, available_in]



#### ANOTHER EXAMPLE ##################################################################################################### 
#Converting inches and pounds to centimeters and kilos
ideal_w = 165.0 # pounds
kilo = 2.2 # is equal to 1 pound
ideal_w_in_kilos = ideal_w / kilo #variable is equal to the values of the two variables divided
height = 80 # inches
centimeters = 2.54 # is equal to 1 inch

puts "Joanna's weight in kilos is %d and she's about %d centimeters tall." % [ideal_w / kilo, height / centimeters]
