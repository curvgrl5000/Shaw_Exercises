# EXERCISE 35: BRANCHES AND FUNCTIONS        

def prompt() # the method 'prompt' is just prompting the user to with the character '>""
  print "> "
end

def gold_room()  # defines the method 'gold_room' and sets up the logic...
  puts "This room is full of gold.  How much do you take?" # prints the string

  prompt; next_move = gets.chomp # this line starts out with the method 'prompt', then the var 'next_move' is equal to the console input the          
                                 # 'gets' method literally gets. The 'chomp' method give us a new line and carriage return.
  if next_move.include? "0" or next_move.include? "1" # this line sets up the logic: If the value '0' or '1' is included in the 
                                           # string collected by 'gets' from the console, then...
    how_much = next_move.to_i()            # ... the variable 'how_much' will be equal to the 'next_move' with the method
                                           # 'to_i' appended to it, collected in the empty parens 
  else                                     # OR
    dead("Man, learn to type a number.")   # variable 'dead' passes the string
  end

  if how_much < 50                            # if variable 'how_much' is less than the integer 50
    puts "Nice, you're not greedy, you win!"  # then it prints the string
    Process.exit(0)                           # module 'Process'is a collection of methods to manipulate a 
                                              # process, and 'exit' is a public method that initiates the 
                                              # termination of a Ruby script.  
                                              # The optional parameter, (0) is used to return a status code to         
                                              # invokes the environment.
  else                                       # Or                                
    dead("You greedy bastard!")              # variable 'dead' puts string. Checkout how the method 'dead' is defined below.
  end
end

def bear_room()                              # method 'bear_room' returns the value in the parens
  puts "There is a bear here."               # prints string
  puts "The bear has a bunch of honey."      # prints string
  puts "The fat bear is in front of another door." # prints string
  puts "How are you going to move the bear?"       # prints string
  bear_moved = false                               # 'variable' bear_moved is set to the global value false

  while true                                 # executes code 'while' conditional is true
    prompt; next_move = gets.chomp           # prints the prompt, then 'next_move' is again refreshed by console input

    if next_move == "take honey"             # the conditional logic begins with if next_move is equal to the string
      dead("The bear looks at you then slaps your face off.")  # then variable 'dead' prints the string, which is the 1st argument
                                                                  
    elsif next_move == "taunt bear" and not bear_moved     # or, if the variable is equal to 'taunt bear' and bear_moved is false
                                                           # then the input from the console will be analyzed for a match in
                                                           # the argument initiating the next step
      puts "The bear has moved from the door. You can go through it now."  # prints string
      bear_moved = true                                           # variable is set to the public method true
    elsif next_move == "push bear" and bear_moved                 # OR if the var is equal to the string and 'bear_moved' is true
      dead("The bear gets pissed off and chews your leg off.")    # then the var 'dead' prints the 1st argument / string in the parens
    elsif next_move == "open door" and bear_moved                 # OR if the var 'next_move equals this string and 'bear_moved is true
      gold_room()                                                 # then the var 'gold_room' is initiated
    else                                                          # FINALLY if the latter arguments don't return a match, then...
      puts "I got no idea what that means."                       # ... print this string
    end
  end
end

def cthulhu_room()                                                # defines the method 'cthulhu'
  puts "Here you see the great evil Cthulhu."                     # prints the string
  puts "He, it, whatever stares at you and you go insane."        # prints the string
  puts "Do you flee for your life or eat it's head?"

  prompt; next_move = gets.chomp          # prints the prompt, then 'next_move' is again refreshed by console input

  if next_move.include? "flee"            # the conditional logic begins with 'if' and asks with the 'include' method if the string 
                                          # 'flee' has been input from the console and passed to the var 'next_move' 
    start()                               # if the answer is 'flee' then the 'start' method begins the game form  the start
  elsif next_move.include? "head"         # ELSE, the 'include' method asks if the string has been passed  to the var 'next_move'
    dead("Well that was tasty!")          # and again if the answer is yes, then print the var 'dead' and it's 1st argument
  else                                    # FINALLY or ELSE if the latter arguments don't return a match then...
    cthulhu_room()                        # print the method 'cthulu_room' which prints out several strings
  end
end

def dead(why)                             # method 'dead' is defined by one parameter and
  puts "#{why}  Good job!"                # prints the string and the 1st argument, which is defined by the parameter 'why'
  Process.exit(0)                         # public module Process is initiated by the public method 'exit' which terminates the ruby script
end

def start()                               # defines the method 'start'
  puts "You are in a dark room."          # prints the string
  puts "There is a door to your right and left."   # prints the string
  puts "Which one do you take?"           # prints the string

  prompt; next_move = gets.chomp          # prints the prompt, then 'next_move' is again refreshed by console input

  if next_move == "left"                  # if var is equal to the input from the console, 'left' then...
    bear_room()                           # the methd bear_room is printed
  elsif next_move == "right"              # or if the var is equal to the input from the console 'right' then
    cthulhu_room()                        # print the method 'cthulhu_room' and it's passing value
  else                                    # ELSE...
    dead("You stumble around the room until you starve.") # the method 'dead' is expressed, with it's first arg a string...
  end
end
                                                                              
start()                                   # starts is a public method that initiates the program

###################################################################################################################################

# Extra Credit
# Draw a map of the game and how you flow through it.
# Fix all of your mistakes, including spelling mistakes.
# Write comments for the functions you do not understand. Remember RDoc comments?

###################################################################################################################################
# Extra Credit 
# Add more to the game. What can you do to both simplify and expand it.
# The gold_room has a weird way of getting you to type a number. What are all the bugs in this way of doing it? Can you make it better than just checking if "1" or "0" are in the number? Look at how to_i() works for clues. 

## CHECK OUT: ext35_extra credit.rb
