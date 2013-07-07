# EXERCISE 31: MAKING DECISIONS...  
# In the first half of this book you mostly just printed out things and called functions, but everything was basically in a straight line. Your scripts ran starting at the top, and went to the bottom where they ended. If you made a function you could run that function later, but it still didn't have the kind of branching you need to really make decisions. Now that you have if, else, and elsif you can start to make scripts that decide things.

# In the last script you wrote out a simple set of tests asking some questions. In this script you will ask the user questions and make decisions based on their answers. Write this script, and then play with it quite a lot to figure it out.

def prompt    # Okay so this is the prompt; which alerts the user
  print "> "  # '>' can really be anything... I mean we can be more clever than what we got here.
end

puts "You enter a dark room with two doors. Do you go through door #1 or door #2?"

prompt; door = gets.chomp  # prints the '>'  and 'get's method literally gets the input from the command line,
# while chomp retuns a string with a given seperator removed from the end of the string; which then becomes
# the value of the door... clever right?
                                 
if door =="1"
  puts "There's a giant bear here eating a cheese cake. What do you do?"
  puts "1. Take the cake."
  puts "2. Scream at the bear."
  
  prompt; bear = gets.chomp  # Again, we use the same methods to get and return the value of the variable 'bear'
  
  if bear == "1"
    puts "The bear eats your face off. Good job!"
  elsif bear == "2"
    puts "The bear eats your legs off. Good job!"
  else
    puts "Well, if you #{bear} it's probably better and the bear will most likely run away."
  end
  
elsif door == "2"
  puts "You stare into endless abyss at Cthuhlu's retina. What do you do?"
  puts "1. Eat blueberries and think of H.P Lovecraft."
  puts "2. Think of yellow jacket clothespins and prepare for some more weird tales."
  puts "3. Understanding revolvers yelling melodies, strange but a choice nonetheless."
  
  prompt; insanity = gets.chomp  # Again, we use the same methods to get and return the value of the variable 'insanity'
  
  if insanity == "1" or insanity == "2"
    puts "Your body survives powered by a mind of jello. Good job!"
  else
    puts "The insanity rots your eyes into a pool of muck. Good Job!"
  end

else
    puts "You stumble around and fall on a knife and die. Good job & game over!"
end

#######################################################################################################################
# Extra Credit
# Make new parts of the game and change what decisions people can make. Expand the game out as much as you can before it gets ridiculous. Okay so here I've composed a similar game but with slightly different outcomes.

def prompt
  print ":^( "
end

puts "You got down a rabbit hole. Do you choose to drink the potion labeled death or life?"

prompt; potion = gets.chomp # Again, we use the same methods to get and return the value of the variable 'potion'  

if potion =="death"
  puts "You're in a bubbling pool of nasty oil. What do you do?"
  puts "1. Reach for a towel."
  puts "2. Scream and writhe and make your last wish."
  
  prompt; deadly = gets.chomp  # Again, we use the same methods to get and return the value of the variable 'deadly'   
  
  if deadly == "1"
    puts "Well, that saved you for about 3 minutes. Now prepare to die!"
  elsif deadly == "2"
    puts "Your wishes saves you and magically get sent to the north pole. Safe and sound!"
  else
    puts "Well, choosing to #{deadly} is probably better. But you'll die from heat exhaustion and lack of water."
  end
  
elsif potion == "life"
  puts "You choose a path for peace and love. What do you choose?"
  puts "1. Work with the Dali Lama."
  puts "2. Work with Yoko Ono."
  puts "3. Work with the Carter Foundation."
  
  prompt; life = gets.chomp  # Again, we use the same methods to get and return the value of the variable 'life' 
  
  if life == "1" or self == "2"
    puts "The monks accept you with a warm welcome. It's your dharma!"
  else
    puts "You get to wear John's glasses and get his perspective while you work helping save children in Africa.   
    Clear and true your life's work will be!"
  end
  
else
  puts "Your going to be free to do your own peace-keeping in the world, enjoy doing #{potion}."
end  

