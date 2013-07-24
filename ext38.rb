# Exercise 38: DOING THINGS WITH LISTS:
# Ruby sees you mentioned mystuff and looks up that variable. It might have to look backwards to see if you created with =, look and see if it is a function argument, or maybe it's a global variable. Either way it has to find the mystuff first.

# Once it finds mystuff it then hits the . (period) operator and starts to look at variables that are a part of mystuff. Since mystuff is a list, it knows that mystuff has a bunch of functions.

#It then hits push and compares the name "push" to all the ones that mystuff says it owns. If push is in there (it is) then it grabs that to use.

#Next Ruby sees the ( (parenthesis) and realizes, "Oh hey, this should be a function." At this point it calls (aka runs, executes) the function just like normally, but instead it calls the function with an extra argument.

#It then treats the push as a function, gets it from mystuff and calls it with your parameter.

#################################################################################################################
# Ex: 1
ten_things = "Apples Oranges Crows Telephone Light Sugar"
# variable 'ten_things' is equal to the string "Apples Oranges Crows..."

puts "Wait there's not 10 things in that list, let's fix that."
# prints the string

stuff = ten_things.split(' ')
# variable 'stuff' is equal to the variable 'ten_things' and then the method split is taking the value of 
# the variable 'ten_things' and literally spliting each word with a quote, ignoring all the white space.

more_stuff = %w(Day Night Song Frisbee Corn Banana Girl Boy)
# The variable 'more_stuff' is equal to the expression of what the 'write' method liteally writes 
# in the parens.

while stuff.length != 10                     
  # the 'while' method will loop unitl the variable's length is 10 items long
  next_one = more_stuff.pop()
  # the 'next_one' variable is equal to the return value of 'morestuff' and the 'pop' method identifies 
  # the last parameter in the array and literally pops it off the end of the array. This is dynamic and will 
  # continue to ocurr until the while loop has returned a length of 10 items.                 
  puts "Adding: #{next_one}"
  # prints the string and the dynamiclly collected vallue of the variable 'next_one'
  stuff.push(next_one)
  # variable 'stuff' is added to by the 'push' method, which takes the value of 'next_one' which remember is
  # dynamic, it's constantly being updated until the 'while' method keeps looping.
  puts "There's #{stuff.length} items now." 
  # prints the string and the variable 'stuff.length'. The length method determines and reads the length of       
  # variable 'stuff' which is then expressed as an integer. Again we're in dynamic mode until we get to 10 items.  
end

puts "There we go: #{stuff}"  # prints the string and the current value of the variable 'stuff' that at this point
# is returning the entire set of itmes in qutoes and in a bracket.

puts "Let's do some things with stuff."  # prints the string

puts stuff[1]    # prints the variable 'stuff' and the first parameter, remember we're dealing with cardinal numbers where zero holds the first position of an array. And that means '0' returns Apples, and '1' returns Oranges and '2' would return 'Crows'

puts stuff[-1]   # whoa! fancy... prints the variable 'stuff' and -1 retunrs the value of the last item in the array, which is 'corn' 


puts stuff.pop() # whoa! fancy again... now the 'pop' method literally takes the last item in the array, 
# pops it off and returns it into the empty parens, a kind of placeholder for a returning value.


puts stuff.join(' ') # Here, we take the value of 'stuff' and with the 'join' method we take all the items in the 
# array and join them together into one string. Yay!
puts stuff.values_at(3,5).join('#') # super stellar! Now we're taking the value of the string and with the 
# 'values_at' method we're identifying the position of the itmes by thier position in thier array, then joining 
# them with the 'join' number with the '#' between them and printing them.


#################################################################################################################
# Ex: 2
shopping = "Lamp Rug Painting Frame Print"
# variable 'ten_things' is equal to the string "Apples Oranges Crows..."

puts "You've got 5 things in your Shopping Cart, let's keep shopping."
# prints the string
                                   
cart = shopping.split(' ')
# variable 'cart' is equal to the variable 'shopping' and then the method split is taking the value of 
# the variable 'ten_things' and literally spliting each word with a quote, ignoring all the white space.

more_items = %w(Table Pillow Sofa Throw)
# The variable 'more_itmes' is equal to the expression of what the 'write' method liteally writes 
# in the parens.

while cart.length != 9                     
  # the 'while' method will loop unitl the variable's length is 10 items long
  next_one = more_items.pop()
  # the 'next_one' variable is equal to the return value of 'morestuff' and the 'pop' method identifies 
  # the last parameter in the array and literally pops it off the end of the array. This is dynamic and will 
  # continue to ocurr until the while loop has returned a length of 10 items.                 
  puts "You've just purchased a: #{next_one}"
  # prints the string and the dynamiclly collected vallue of the variable 'next_one'
  cart.push(next_one)
  # variable 'cart' is added to by the 'push' method, which takes the value of the 'next_one' which remember is
  # dynamic, and  pushes the value onto the variable 'cart', which is constantly being updated until 'while'  
  # method keeps looping.
  puts "There's #{cart.length} items now." 
  # prints the string and the variable 'cart.length'. The length method determines and reads the length of       
  # variable 'stuff' which is then expressed as an integer. Again we're in dynamic mode until we get to 10 items.  
end

puts "Here's what you've purchased: #{cart}"  # prints the string and the current value of the variable 'stuff' that at this point
# is returning the entire set of itmes in qutoes and in a bracket.

puts "Here's some of the items you've purchased:"  # prints the string

puts cart[1]    # prints the variable 'stuff' and the first parameter, remember we're dealing with cardinal numbers where zero holds the first position of an array. And that means '0' returns Apples, and '1' returns Oranges and '2' would return 'Crows'

puts cart[-3]   # whoa! fancy... prints the variable 'stuff' and -1 retunrs the value of the last item in the array, which is 'corn' 


puts cart.pop() # whoa! fancy again... now the 'pop' method literally takes the last item in the array, 
# pops it off and returns it into the empty parens, a kind of placeholder for a returning value.


puts cart.join(' ') # Here, we take the value of 'stuff' and with the 'join' method we take all the items in the 
# array and join them together into one string. Yay!

puts cart.values_at(0,1,2,3).join(' --- ') # super stellar! Now we're taking the value of the string and with the 
# 'values_at' method we're identifying the position of the itmes by thier position in thier array, then joining 
# them with the 'join' number with the '---' between them and printing them. 

#################################################################################################################
# Ex: 3
ingredients = "Salt Peppers Olives Lettuce Arugala Cheese Almonds"
puts "There's more to puchase for the salad to be just right. So far you've got #{ingredients}."
list = ingredients.split(' ')
more_items = %w(Table Pillow Sofa Throw)

while list.length != 10                     
  puts "Add an ingredient:"
  next_item = gets.chomp
  puts "You've just added #{next_item}"
  list.push(next_item)
  puts "The list includes #{list.length} items now." 
end

puts "Here's what you've purchased: #{list}"  
puts "Here's some of the items you've purchased:"  

puts list[1]    
puts list[-1]    
puts list.pop() 
puts list.join(' ') 
puts list.values_at(0,1,2,3).join(' --- ') 


########################################################################################
# Extra Credit
# Take each function that is called, and go through the steps outlined above to translate them to what Ruby does.

# Translate these function calls into English sentences. For example mystuff.push('hello') would be, "From mystuff get the push function and call it with 'hello'".

# Go read about "Object Oriented Programming" online. Confused? I was too. Do not worry. You will learn enough to be dangerous, and you can slowly learn more later.

# Read up on what a "class" is in Ruby. Do not read about how other languages use the word "class". That will only mess you up. 

# If you do not have any idea what I'm talking about do not worry. Programmers like to feel smart so they invented Object Oriented Programming, named it OOP, and then used it way too much. If you think that's hard, you should try to use "functional programming".