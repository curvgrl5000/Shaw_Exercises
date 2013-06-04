#Exercise 29: WHAT 'IF' 

# THE Rockstars... The Girlfriends and the Gigs.
rockstar = 10
girlfriends = 2000
gigs = 500

if rockstar < girlfriends
  puts "Hey, look at all these aging guitars"
end

if rockstar > girlfriends
  puts "Wow, look at all these aging cowboys and thier cowbells!"
end

if rockstar < gigs
  puts "Tiny giants making lots of noise!"
end

if rockstar > gigs
  puts "I can't believe these folks get away with it."
end

gigs +=10

if rockstar >= gigs
  puts "Hey, I said these events get bigger and bigger with these wacky men & women!"
end

if rockstar <= gigs
  puts "And we pay good money to see them!"
end

if rockstar == gigs
  puts "How that's why the earth rotates."
end
puts  #blank line


##############################################################################################

# The Countries... The Travellers, Months and Days.

countries = 20
travelers = 2
months = 12
days = 365

if countries < travelers
  puts "Wow, you aren't getting far."
end

if countries > travelers 
  puts "There's at least 20 countries worth visiting!"
end

if countries < days
  puts "And there's 365 days that can be used to plan a trip."
end

if months > travelers
  puts "And that means a solid 12 months to plan inside of for 2 people."
end

travelers +=10

if travelers >= months
  puts "And that means a ton of good old fashioned discovery."
end

if travelers <= days
  puts "Take #{days} days, divided by #{travelers*7} and you've got #{days/(travelers*7)} sprints that one can plan out over the course of #{months} months."
end

if months === days
  puts "This won't print."
end
puts  #blank line


###############################################################################################
# THE People thing and the CATS and DOGS too.
people = 20
cats = 30
dogs = 15

if people < cats
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


#########################################################################################

#  Extra Credit
#  In this extra credit, try to guess what you think the if-statement is and what it does. Try to answer these questions in your own words before moving onto the next exercise.

# What do you think the 'if' does to the code under it?
# An if statement creates what is called a "branch" in the code. It's kind of like those choose your own adventure books where you are asked to turn to one page if you make one choice, and another if you go a different direction. The if-statement tells your script, "If this boolean expression is True, then run the code under it, otherwise skip it."

# Can you put other boolean expressions from Ex. 27 in the if-statement? Try it. 

# What happens if you change the initial variables for people, cats, and dogs?
# Then the expression changes the entire set of expressions.
  

  
  
  
  
  


