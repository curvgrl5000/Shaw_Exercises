# Exercise 38: DOING THINGS WITH LISTS:
# Ruby sees you mentioned mystuff and looks up that variable. It might have to look backwards to see if you created with =, look and see if it is a function argument, or maybe it's a global variable. Either way it has to find the mystuff first.

# Once it finds mystuff it then hits the . (period) operator and starts to look at variables that are a part of mystuff. Since mystuff is a list, it knows that mystuff has a bunch of functions.

#It then hits push and compares the name "push" to all the ones that mystuff says it owns. If push is in there (it is) then it grabs that to use.

#Next Ruby sees the ( (parenthesis) and realizes, "Oh hey, this should be a function." At this point it calls (aka runs, executes) the function just like normally, but instead it calls the function with an extra argument.

#It then treats the push as a function, gets it from mystuff and calls it with your parameter.


ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there's not 10 things in that list, let's fix that."

stuff = ten_things.split(' ')
more_stuff = %w(Day Night Song Frisbee Corn Banana Girl Boy)

while stuff.length != 10
  next_one = more_stuff.pop()
  puts "Adding: #{next_one}"
  stuff.push(next_one)
  puts "There's #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1] # whoa! fancy
puts stuff.pop()
puts stuff.join(' ') # what? cool!
puts stuff.values_at(3,5).join('#') # super stellar!

########################################################################################
# Extra Credit
# Take each function that is called, and go through the steps outlined above to translate them to what Ruby does.

# Translate these function calls into English sentences. For example mystuff.push('hello') would be, "From mystuff get the push function and call it with 'hello'".

# Go read about "Object Oriented Programming" online. Confused? I was too. Do not worry. You will learn enough to be dangerous, and you can slowly learn more later.

# Read up on what a "class" is in Ruby. Do not read about how other languages use the word "class". That will only mess you up. 

# If you do not have any idea what I'm talking about do not worry. Programmers like to feel smart so they invented Object Oriented Programming, named it OOP, and then used it way too much. If you think that's hard, you should try to use "functional programming".