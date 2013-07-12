# EXERCISE 35: BRANCHES AND FUNCTIONS        

# Extra Credit 
# Add more to the game. What can you do to both simplify and expand it.
# The gold_room has a weird way of getting you to type a number. What are all the bugs in this way of doing it? Can you make it better than just checking if "1" or "0" are in the number? Look at how to_i() works for clues.


def prompt() 
  print "> "
end

def gold_room()  
  number = (1000)   
  puts "This room is full of gold.  How many bars do you take?" 

  prompt; next_move = gets.chomp 
                                 
  if (0..1000).include?(number)
    how_much = next_move.to_i()            
  else                                     
    try("Man, learn to type a number!")
    gold_room()   
  end
  if how_much < 50                            
    puts "Nice, you're not greedy, you win!"  
    Process.exit(0)                           
  else                                                                      
   escape("You greedy bastard!")              
  end
end

def bear_room()                              
  puts "Now you've got a bear to deal with."               
  puts "The bear has a bunch of honey."      
  puts "The fat bear is in front of another door." 
  puts "To move the bear you got choices: take the honey, taunt bear or scream at bear?"       
  bear_moved = false                               

  while true                                 
    prompt; next_move = gets.chomp           

    if next_move.include? "honey"             
      kill("The bear looks at you then slaps your face off.")  
    elsif next_move == "taunt bear" and not bear_moved     
      puts "The bear has moved from the door. You can go through it now."  
      Process.exit(0)                                           
    else next_move == "scream at bear" and bear_moved                 
      new_choice("The bear gets pissed off and chews your leg off.")    
      gold_room()                                                 
    end
  end
end

def cthulhu_room()                                                
  puts "Here you see the great evil Cthulhu."                     
  puts "He, it, whatever stares at you and you go insane."        
  puts "Do you flee for your life or eat it's head?"

  prompt; next_move = gets.chomp          

  if next_move.include? "flee"             
    bear_room()                               
  elsif next_move.include? "eat"         
    kill("Well that was tasty!")          
  else                                    
    puts "Let's try this again, shall we?"
    start()
  end
end

def new_choice(choice)                             
  puts "#{choice} To help out with your missing leg, and costly operation, you go the the next phase."                
end

def kill(killed)                             
  puts "#{killed}  Good job!"                
  Process.exit(0)                          
end

def try(try_again)                             
  puts "#{try_again} Let's try this again!"                
end

def escape(why)                             
  puts "#{why}  Good job!"                
  Process.exit(0)                          
end

def start()                               
  puts "You are in a dark room."          
  puts "There is a door to your right and left."   
  puts "Which one do you take?"           

  prompt; next_move = gets.chomp          

  if next_move.include? "left"                  
    bear_room()                           
  elsif next_move.include? "right"              
    cthulhu_room()                        
  else                                    
    escape("Good choice, there are more choices in life than left or right.") 
  end
end
                                                                              
start()                                  


