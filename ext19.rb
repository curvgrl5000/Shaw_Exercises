#Exercise 19: FUNCTIONS AND VARIABLES 

# More practice...
# One hot top from Zed: The variables in your function are not connected to the variables in your script.

# In this case, we're defining a method, which is passing an array of variables / parameters, which are further defined outside of the actual method.
def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "you have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket."
  puts # a blank line
end

# 'puts' prints the string, and then defines the variables 'amount_of_cheese', 'amount_of_crackers, 'cheese_and_crackers', which are then passed into the array of parameters when the variable 'cheese_and_crackers' are called again.
# This is a bit convoluted, but it's showcasing the flexibility of the ruby programming language, to work with value references inside and outside the expressions when working with variables inside of methods. It also shows you how one can actually work with variables in combining flexible logic systems.
puts "We can just give the function numbers directly:"
amount_of_cheese = 100
amount_of_crackers = 500
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)


##########################################################################################################
# Extra Credit
# Go back through the script and type a comment above each line explaining in English what it does.
# Start at the bottom and read each line backwards, saying all the important characters.

########################################################################################################## 

# Write at least one more function of your own design, and run it 10 different ways.

# FIRST WAY
def classifications_of_mentals(loonies, neurotics, compulsives)
  puts "Look around you and you'll realize that you know about #{loonies} crazy people!"
  puts "But it's really those select #{neurotics} that will intrigue you, because  of the stories they tell."
  puts "And it's those folks that are both neurotic and compulsive, that are the best #{compulsives}."
  puts # blankline
end

puts "Okay, so how many people do you know are actually crazy?"
total_crazy_people = 10 
entertaining_folks = 2 || 3
non_stop_folks = "entertainers"
classifications_of_mentals(total_crazy_people, entertaining_folks, non_stop_folks)

########################################################################################################## 

# SECOND WAY
def classifications_of_mentals(loony="100", neurotic="2", compulsive="entertainers")
  puts "Look around you and you'll realize that you know about #{loony} crazy people!"
  puts "But it's really those select #{neurotic} that will intrigue you, because of the stories they tell."
  puts "And it's those folks that are both neurotic and compulsive, that are the best #{compulsive}."
  puts # blankline
end

puts "Okay, so how many people do you know are actually crazy?"
classifications_of_mentals()

########################################################################################################## 

# THIRD WAY
def classifications_of_mentals(arg1, arg2, arg3)
  puts "Look around you and you'll realize that you know about #{arg1} crazy people!"
  puts "But it's really that select #{arg2} that will intrigue you, because of the stories they tell."
  puts "And it's those folks that are both neurotic and compulsive, that are the best #{arg3}."
  puts # blankline
  
end

puts "Okay, so how many people do you know are actually crazy?"
loony = 100
neurotic = 3
compulsive = "entertainers"
classifications_of_mentals(loony * 10, neurotic - 2, "comedians and " + compulsive)

########################################################################################################## 

# FOURTH WAY
def classifications_of_mentals(arg1, arg2, *rest)
  puts "Look around you and you'll realize that you know about #{arg1} crazy people!"
  puts "But it's really that select #{arg2} that will intrigue you, because of the stories they tell."
  puts "And it's those folks that are both neurotic and compulsive, that are the best #{rest.join(', ')}."
  puts # blankline
end

puts "Okay, so how many people do you know are actually crazy?"
loony = 100
neurotic = 3
compulsive = "entertainers","comedians","life-jockies","soul-searching bastards"
classifications_of_mentals(loony * 10, neurotic - 2, compulsive)

########################################################################################################## 

# FIFTH WAY
def classifications_of_mentals(arg1, arg2, arg3="compulsives!!!")
  puts "Look around you and you'll realize that you know about #{arg1} crazy people!"
  puts "But it's really those select #{arg2} that will intrigue you, because of the stories they tell."
  puts "And it's those folks that are both neurotic and compulsive, that are the best #{arg3}."
  puts # blankline
  
end

puts "Okay, so how many people do you know are actually crazy?"
loony = 100
neurotic = "few"
classifications_of_mentals(loony * 10, neurotic) # Here the third argument is passed with the default value 

########################################################################################################## 

# SIXTH WAY
def classifications_of_mentals(arg1, arg2, arg3)
  puts "Look around you and you'll realize that you know about #{arg1} crazy people!"
  puts "But it's really those select #{arg2} that will intrigue you, because of the stories they tell."
  puts "And it's those folks that are both neurotic and compulsive, that are the best #{arg3}."
  puts # blankline
  
end

puts "Okay, so how many people do you know are actually crazy?"
loony = 10
neurotic = "few, "
compulsives= "entertainers"
classifications_of_mentals(loony * 10 - 5, neurotic + "those treasures", compulsives)


##########################################################################################################

# SEVENTH WAY
def classifications_of_mentals(arg1, arg2, arg3)
  puts "Look around you and you'll realize that you know about #{arg1} crazy people!"
  puts "But it's really those select #{arg2} that will intrigue you, because of the stories they tell."
  puts "And it's those folks that are both neurotic and compulsive, that are the best #{arg3}."
  puts # blankline
  
end

puts "Okay, so how many people do you know are actually crazy?"
classifications_of_mentals(2000, 2, "story-tellers")

##########################################################################################################

# EIGHTH WAY
def classifications_of_mentals(arg1, arg2, arg3)
  puts "Look around you and you'll realize that you know about #{arg1} crazy people!"
  puts "But it's really those select #{arg2} that will intrigue you, because of the stories they tell."
  puts "And it's those folks that are both neurotic and compulsive, that are the best #{arg3}."
  puts # blankline

end


one= 1000
two= 1
def foo()
  var = "compulsive " "talkers " *20
end

puts "Okay, so how many people do you know are actually crazy?"
classifications_of_mentals(one, two, foo)

##########################################################################################################

# NINTH WAY
def classifications_of_mentals(arg1, arg2, arg3)
  puts "Look around you and you'll realize that you know about #{arg1} crazy people!"
  puts "But it's really those select #{arg2} that will intrigue you, because of the stories they tell."
  puts "And it's those folks that are both neurotic and compulsive, that are the best #{arg3}."
  puts # blankline

end

one= 100
two= "few" 
three = "story tellers"

def foo()
  yield 200
  puts "Think!"
  yield "At least 2 right?"
end

puts "Okay, so how many people do you know are actually crazy?"
classifications_of_mentals(one, two, three )
foo {|i| puts "Be honest, how many? #{i}"}


##########################################################################################################

# TENTH WAY
def classifications_of_mentals(arg1, arg2, arg3)
  puts # blankline   
  puts "Hey, Look around you and you'll realize that you know about #{arg1} crazy people!"
  puts "But it's really those select #{arg2} that will intrigue you, because of the stories they tell."
  puts "And it's those folks that are both neurotic and compulsive, that are the best #{arg3}."
  puts # blankline

end
one= 10
two= "few" 
three= "story tellers"    

puts "Okay, so how many people do you know are actually crazy?"
classifications_of_mentals(one, two, three)

def sample (*test)
   for i in 0...test.length
      puts "They're fabulously #{test[i]}"
   end
end
sample "entertaining.", "funny.", "and worth keeping around. "

