# EXERCISE 31: MAKING DECISIONS...  

def prompt
  print "> "
end

puts "You enter a dark room with two doors. Do you go through door #1 or door #2?"

prompt; door = gets.chomp

if door =="1"
  puts "There's a giant bear here eating a cheese cake. What do you do?"
  puts "1. Take the cake."
  puts "2. Scream at the bear."
  
  prompt; bear = gets.chomp
  
  if bear == "1"
    puts "The bear eats your face off. Good job!"
  elsif bear == "2"
    puts "The bear eats your legs off. Good job!"
  else
    puts "Well, doing #{bear} is probably better. Bear runs away."
  end
  
elsif door == "2"
  puts "You stare into endless abyss at Cthuhlu's retina. What do you do?"
  puts "1. Blueberries."
  puts "2. Yellow jacket clothespins."
  puts "3. Understanding revolvers yelling melodies."
  
  prompt; insanity = gets.chomp
  
  if insanity == "1" or insanity == "2"
    puts "Your body survives powered by a mind of jello. Good job!"
  else
    puts "The insanity rots your eyes into a pool of muck. Good Job!"
  end
  
else
  puts "You stumble around and fall on a knife and die. Good job!"
end

##################################################################################################################################################### 
# Extra Credit
# Make new parts of the game and change what decisions people can make. Expand the game out as much as you can before it gets ridiculous.

def prompt
  print "> "
end

puts "You got down a rabbit hole. Do you drink the potion labeled death or life?"

prompt; potion = gets.chomp

if potion =="death"
  puts "You're in a bubbling pool of nasty oil. What do you do?"
  puts "1. Reach for a towel."
  puts "2. Scream and writhe and make your last wish."
  
  prompt; deadly = gets.chomp
  
  if deadly == "1"
    puts "Well, that saved you for about 3 minutes. Now prepare to die!"
  elsif deadly == "2"
    puts "Your wishes saves you and magically get sent to the north pole. Safe and sound!"
  else
    puts "Well, choosing to do #{deadly} is probably better. You got game."
  end
  
elsif potion == "life"
  puts "You choose a path for peace and love. What do you choose?"
  puts "1. Work with the Dali Lama."
  puts "2. Work with Yoko Ono."
  puts "3. Work with the Carter Foundation."
  
  prompt; life = gets.chomp
  
  if life == "1" or self == "2"
    puts "The monks accept you with a warm welcome. It's your dharma!"
  else
    puts "You get to wear John's glasses and get his perspective. Clear and true!"
  end
  
else
  puts "Your going to be free to do your own peace-keeping in the world, for doing #{potion} Yay!"
end  

