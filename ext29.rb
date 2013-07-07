#Exercise 29: WHAT 'IF' 

# THE People thing and the CATS and DOGS too.
people = 20 # variable 'poeple' is equal to the integer 20
cats = 30   # variable 'cats' is equal to the integer 30 
dogs = 15   # variable 'dogs' is equal to the integer 15

if people < cats  # What if is doing is 
  puts "Too many cats! The world is doomed!"
end

if people > cats
  puts "Not many cats! The world is saved!"
end

if people < dogs
  puts "the world is drooled on!"
end

if people > dogs
  puts "The world is dry!"
end

dogs += 5

if people >= dogs
  puts "People are greater than or equal to dogs."
end

if people <= dogs
  puts "People are greater than or equal to dogs."
end

if people == dogs
  puts "People are dogs."
end 
puts  #blank line
puts "xxx///" *12
puts  #blank line


#########################################################################################
#  Extra Credit
#  In this extra credit, try to guess what you think the if-statement is and what it does. Try to answer these questions in your own words before moving onto the next exercise.

# What do you think the 'if' does to the code under it?
# An if statement creates what is called a "branch" in the code. It's kind of like those choose your own adventure books where you are asked to turn to one page if you make one choice, and another if you go a different direction. The if-statement tells your script, "If this boolean expression is True, then run the code under it, otherwise skip it."

# Rockstars... Guitars and Gigs.
rockstars = 10
guitars = 5
gigs = 500

# 'if', 'elsif' and 'else' statements are used for conditional execution. Here the variable's values, which happen to be all integers drive the resulting logic.
if rockstars < guitars
  puts "We need more equipment here!"
elsif rockstars > guitars
  puts "The musicians need to take turns on the stage, there isn't enough instruments."
else
  puts "We need more talent here!"
end

if rockstars < gigs
  puts "They're on road again, many people to visit and people to play for!"
elsif rockstars > gigs
  puts "Everyone wants to play at the Royal Abert Hall." 
else
  puts "The program has not been set."
end

gigs += 10

if rockstars >= gigs
  puts "Hey, I said these events get bigger and bigger with these wacky men & women!"
elsif rockstars <= gigs
  puts "And we pay good money to see them!"
end

if rockstars == gigs
  puts "And that's why the earth rotates."
end
puts  #blank line
puts "xxx///" *12
puts  #blank line

##############################################################################################
# More Extra Credit:
# Can you put other boolean expressions from Ex. 27 in the if-statement? Try it.

# The Countries... The Travellers, Months and Days.

$countries = 20
$travelers = 2
travelin = 500
months = 12
days = 365

case $countries
when $countries < $travelers
  puts "There's alot of travelers who want to go to that country!"
when $countries > $travelers 
  puts "There's at least 20 countries worth visiting!"
else $countries < days
  puts "There's 365 days that can be used to plan a trip."
end

if months > $travelers
  puts "That means a solid 12 months to plan and adventure for at least 2 people."
else $travelers < months
  puts "Time for a bbq in your backyard."
end    

if travelin > months
  puts "There's a mob of people on the road this summer."
elsif travelin < days
  puts "Take #{days} days, divided by #{travelin} and you've got #{travelin} sprints that one can plan out over the course of #{months} months." 
else travelin === days
  puts "Every day is an adventure."
end
puts  #blank line

# What happens if you change the initial variables for people, cats, and dogs?
# Then the expression changes the entire set of expressions.
  
