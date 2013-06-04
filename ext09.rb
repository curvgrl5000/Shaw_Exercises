#Exercise 9: MORE OF THAT PRINTING PRINTING PRINTING STUFF...   

# 'days' variable is equal to the string, same for 'months'
days = "Mon Tue Wed Thu Fri Sat Sun"
months = "Jan\nFeb\nMar\nMar\nApr\nMay\nJun\nJul\nAug"

# notice here that we don't have to use the markup #{days} to get the same output but places the variable in another line
puts "here are the days: ", days

# 'puts' method prints the string and the string interpolation
puts "here are the days again #{days}" 

# 'puts' method prints the string and the string format 
puts "here are the days yet again: %s" % days

# 'puts' method prints the string and the variable
puts "here are the months: ", months

#Did you see the difference in that output? That is because of the "\n" character, which does something special. What do you think it does?
#Since the backslash is a special character, this is an instance where it would be important to use double quotes instead of single quotes
fruits = "apples\nbananas\npears"
veggies = 'broccoli\nasparagus\npeppers'

puts fruits
puts veggies
puts # blank line

# 'puts' method inherits the PARAGRAPH method that allows one to place as many lines as you wish with a carriage return 
puts <<PARAGRAPH
There is something going on here.
With the PARAGRAPH def thing
We will be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
And one can keep typing and with as much you want, as long as you do not input a carriage return you can keep going and going and going and going and a carriage return will not show up.  
PARAGRAPH

# 'names' variable equals the string
names = "Jen Ashley Mary Gina Sarah Lisa "

#this markup \n is a carriage return with the symbol "\" and placing the item in a new line which is understood as "n" or new line                
last_name = "Smith\nJones\nJohnston\nGomez\nMcDonnel\nLazar" 

# 'puts' method prints the string and each name with a carriage return
puts "here's those names: ", names

# 'puts' method prints the string and each last name with a carraige return
puts "here's those last names: ", last_name

# Here again 'puts' inherits the PARAGRAPH method
puts <<PARAGRAPH
So this is how ruby handles what html handles as the <p></p> tags
and basicly you can presumably use this in instances where the you got
to just keep typing and keep typing in some kind of paragraph.
The interesting thing here is that a carriage return is accepted.
So I am typing and typing
and hitting the carriage
return
and its being duplicated in the 
terminal how I happen to be typing it.
PARAGRAPH

# 'names' variable equals the string
names = "Jen Ashley Mary Gina Sarah Lisa Joan "  # At the end of this string I've added a space so that the first names don't get smashed together with the last_name.

# 'last_name' variable equals the string
last_name = "Smith Jones Johnston Gomez McDonnel Lazar Smith"

# 'puts method prints the string with the string interpolation
puts "here's those names #{names}"

# 'puts method prints the string with the string interpolation
puts "here's those last names: #{last_name}"

# Here's that Paragraph method again
puts <<PARAGRAPH
So this last one showcases how we can basicly do the same thing alot of different ways.
PARAGRAPH

# 'puts' method prints the two variables connected by the operator '+' sign
puts names + last_name 
