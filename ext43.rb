# Exercise 43: GOTHONS FROM PLANET PERCAL #25   
class Game

  def initialize(start)  # The initialize method is set by the start parameter
    @quips = [           # The instance variable '@quips' is passing the array of comma deliminated strings
      "You died.  You kinda suck at this.",  
      "Nice job, you died ...jackass.",
      "Such a luser.",
      "I have a small puppy that's better at this.",
      "Life is short and then you die....scumbag",
      "Your Brain has shrunk to the size of a pea.... Congrats!"
    ]
    @start = start  # The instance variable @start is equal to the parameter 'start' set by the initialize method
  end               # Now, @start can be passed around inside the class Game, always referencing the first parameter of initialize

  def prompt() # 'prompt' method prints the "> " as it's used
    print "> "
  end

  def play()  # The 'play' method passes all the logic defined for how the var 'next_room' is initiated, and how the var 'room' is dyanmically set 
    next_room = @start  # The var 'next_room' is equal to the instance variable @start 
                        # Each time 'next_room' is called, you get 'start' initialized, it's dynamic.

    while true   # The condition of true defines the following logic:  
      puts "\n----------------------------------------------------------------"    #  Prints a new line ( \n ) with all the dashes in the string
      room = method(next_room)  # The 'room' var is always being dynamically defined by the 'method' var called by the parameter 'next_room' 
      next_room = room.call()   # And the var 'next_room' is equal to the 'room' var invoked by the 'call' method... So it's one big loop that gets reset
                                # Each time we 'call' a 'room', we're resetting the value of 'next_room' which re-initializes the start parameter and loads all those           
                                # quips ready to display based on the outcome of the game play; hence all this logic is the 'play' method.
    end                         # Neat, hu?
  end

  def death()
    puts @quips[rand(@quips.length())]  # Okay so we're printing one of the strings invoked by the 'length' method ( which returns the character length of str ) 
                                        # from the instance var '@quips', in random order with the help of the 'rand' method and finally passing it to the 'death' method 
    Process.exit(1)  # The 'Process' module is basically a collection of methods used to manipulate processes, invoked by the 'exit' method called by the integer one.
                     # What's so interesting about this integar is that it's got special meaning and belongs to a library of exit codes. However, many scripts use an 
                     # exit 1 as a general bailout-upon-error. Since exit code 1 signifies so many possible errors, it is not particularly useful in debugging.
                     # The Exit Code Number: '1' is the catchall for general errors, misc. errors, and other "impermissables".  
                     # For all list of possible codes: http://tldp.org/LDP/abs/html/exitcodes.html  
  end

  def central_corridor() # Our first method that gets called from the git-go
    puts "The Gothons of Planet Percal #25 have invaded your ship and destroyed"
    puts "your entire crew.  You are the last surviving member and your last"
    puts "mission is to get the neutron destruct bomb from the Weapons Armory,"
    puts "put it in the bridge, and blow the ship up after getting into an "
    puts "escape pod."
    puts "\n"
    puts "You're running down the central corridor to the Weapons Armory when"
    puts "a Gothon jumps out, red scaly skin, dark grimy teeth, and evil clown costume"
    puts "flowing around his hate filled body.  He's blocking the door to the"
    puts "Armory and about to pull a weapon to blast you. Pick one: 'shoot!', 'dodge!'. 'tell a joke'."

    prompt()  # prints prompt
    print "[Type out one of the choices!]> " # Remember that extra space after the brackets is there for easy readability when the user inputs thier answers
    action = gets.chomp() # The user input passed into the parens, is invoked by the 'gets' method and ultimately passed to the value of the 'action' variable. 
                          # Meanwhile the 'chomp' method makes sure all data captured displays on one line. These things are dynamic, which means they will trigger 
                          # a particular set of logic expressed in the if, elseif and else statements. 
                          # By now, variables like 'action' should seem like 'buckets' of data, constantly and dynamically being refreshed.

    if action == "shoot!"     # So here we're saying: if the var action is equal to the string 'shoot', then print the following strings:
      puts "Quick on the draw you yank out your blaster and fire it at the Gothon."
      puts "His clown costume is flowing and moving around his body, which throws"
      puts "off your aim.  Your laser hits his costume but misses him entirely.  This"
      puts "completely ruins his brand new costume his mother bought him, which"
      puts "makes him fly into an insane rage and blast you repeatedly in the face until"
      puts "you are dead.  Then he eats you."
      return :death  # For more info on the symbol: http://www.ruby-doc.org/core-2.0.0/Symbol.html

    elsif action == "dodge!"  # So here we're saying: if the var action is equal to the string 'dodge!', then print the following strings:     
      puts "Like a world class boxer you dodge, weave, slip and slide right"
      puts "as the Gothon's blaster cranks a laser past your head."
      puts "In the middle of your artful dodge your foot slips and you"
      puts "bang your head on the metal wall and pass out."
      puts "You wake up shortly after only to die as the Gothon stomps on"
      puts "your head and eats you."
      return :death  # For more info on the symbol: http://www.ruby-doc.org/core-2.0.0/Symbol.html 

    elsif action == "tell a joke"  # So here we're saying: if the var action is equal to the string 'tell a joke', then print the following strings: 
      puts "Lucky for you they made you learn Gothon insults in the academy."
      puts "You tell the one Gothon joke you know:"
      puts "Lbhe zbgure vf fb sng, jura fur fvgf nebhaq gur ubhfr, fur fvgf nebhaq gur ubhfr."
      puts "The Gothon stops, tries not to laugh, then busts out laughing and can't move."
      puts "While he's laughing you run up and shoot him square in the head"
      puts "putting him down, then jump through the Weapon Armory door."
      return :laser_weapon_armory  # For more info on the symbol: http://www.ruby-doc.org/core-2.0.0/Symbol.html 

    else
      puts "DOES NOT COMPUTE!"  # And this is where when nothing matches user input, it prints the string: "Does not compute!"
      return :central_corridor  # And here we initiate the game back to the 'central_corridor' method, as a way to get the user to input an answer
                                # that we've got logic for. It can seem like a bit limiting, but it ultimately workds okay. 
    end
  end

  def laser_weapon_armory() # This method gets loaded via a symbol :laser_weapon_armory, if the user's input triggers this logic.  
    puts "You do a dive roll into the Weapon Armory, crouch and scan the room"
    puts "for more Gothons that might be hiding.  It's dead quiet, too quiet."
    puts "You stand up and run to the far side of the room and find the"
    puts "neutron bomb in its container.  There's a keypad lock on the box"
    puts "and you need the code to get the bomb out.  If you get the code"
    puts "wrong 10 times then the lock closes forever and you can't"
    puts "get the bomb. The code is 3 digits."
    code = "%s%s%s" % [rand(2)+1, rand(2)+1, rand(2)+1]   # The values passed thru string interpolation to the variable 'code', are generated by the the 'rand' method inside the
                                                          # the array. So each 'rand' method in this array, generates a random number within an expressed range 
                                                          # and assigns this number to a user's try, if you will. In this case the user can try to guess once per each number, 
                                                          # that's what this means: '+1' and the parens note it's potential range: 1 and 2, the numbers to use when guessing.
                                                          # This site has great references: http://pleac.sourceforge.net/pleac_ruby/numbers.html
    print "[Use your keypad! Hint: Use 1 or 2]> "
    guess = gets.chomp()  # The user input passed into the parens, is invoked by the 'gets' method and ultimately passed to the value of the 'guess' variable. 
                          # And the 'chomp' method makes sure all data captured displays on one line. 
    guesses = 0           # The 'guesses' variable starts with a default of zero


    while guess != code and guesses < 10  # Finally, here we see how 'guess' is bound to 'code' explicitly with an exclamation point, remember to catch these things.
                                          # And of course if the guesses or code are less than 10 (tries), then the followingset of messaging ocurrs below
      puts "BZZZZEDDD!"   # The silly alarm sound that's perfect for that 'wrong-answer'
      guesses += 1        # Here, we decide that we start those 'guesses' with at least a +1 intengar.
      print "[C'mon! Use that keypad!]> "
      guess = gets.chomp()   # And finally we use the 'gets' method, with that formatting 'chomp' mehtod to re-embrace the value  loaded into the 'guess' variable.
    end

    if guess == code  # If the user's 'guess' equals random generated code, then the 'if' statement unlocks the game and the game goes forward
      puts "The container clicks open and the seal breaks, letting gas out."
      puts "You grab the neutron bomb and run as fast as you can to the"
      puts "bridge where you must place it in the right spot."
      return :the_bridge  # Then it moves forward from the symbol ':the_bridge' to the method 'the_bridge' continuing the game forward
    else # And if the user doesn't get it right, well they are headed for ':death'!
      puts "The lock buzzes one last time and then you hear a sickening"
      puts "melting sound as the mechanism is fused together."
      puts "You decide to sit there, and finally the Gothons blow up the"
      puts "ship from their ship and you die."
      return :death
    end
  end

  def the_bridge()  # This method is activated by the last block of code if the user get's it right, continuing the game play the same way
    puts "You burst onto the Bridge with the neutron destruct bomb"
    puts "under your arm and surprise 5 Gothons who are trying to"
    puts "take control of the ship.  Each of them has an even uglier"
    puts "clown costume than the last.  They haven't pulled their"
    puts "weapons out yet, as they see the active bomb under your"
    puts "arm and don't want to set it off. Do you 'throw the bomb' or 'slowly place the bomb'? Choose one."

    prompt()  # Here we print the 'prompt'
    print "[C'mon! Type out your choice!]> "  # Then we print the hint...
    action = gets.chomp()   # And then we get the user's input and pass it back to the variable 'action' by way of that trusty 'gets' method.

    if action == "throw the bomb"   # Here if the user's input matches the 'if' statement: 'throw the bomb', then the following ocurrs:
      puts "In a panic you throw the bomb at the group of Gothons"
      puts "and make a leap for the door.  Right as you drop it a"
      puts "Gothon shoots you right in the back killing you."
      puts "As you die you see another Gothon frantically try to disarm"
      puts "the bomb. You die knowing they will probably blow up when"
      puts "it goes off."
      return :death  # this choice, basilcy sends the gamer the 'death' message.

    elsif action == "slowly place the bomb" # Here if the user's input matches the 'elsif' statement: 'slowly place the bomb', then the following ocurrs:  
      puts "You point your blaster at the bomb under your arm"
      puts "and the Gothons put their hands up and start to sweat."
      puts "You inch backward to the door, open it, and then carefully"
      puts "place the bomb on the floor, pointing your blaster at it."
      puts "You then jump back through the door, punch the close button"
      puts "and blast the lock so the Gothons can't get out."
      puts "Now that the bomb is placed you run to the escape pod to"
      puts "get off this tin can."
      return :escape_pod  # this choice, basilcy sends the gamer to another room: the ':escape_pod', a symbol 
    else
      puts "DOES NOT COMPUTE!" # And this is where when nothing matches user input, it prints the string: "Does not compute!"   
      return :the_bridge       # And here we initiate the game back to 'the_bridge' method, as a way to get the user to input an answer
                               # that we've got logic for.
    end
  end

  def escape_pod() # This method is activated by the last block of code if the user get's it right, continuing the game play the same way
    puts "You rush through the ship desperately trying to make it to"
    puts "the escape pod before the whole ship explodes.  It seems like"
    puts "hardly any Gothons are on the ship, so your run is clear of"
    puts "interference.  You get to the chamber with the escape pods, and"
    puts "now need to pick one to take.  Some of them could be damaged"
    puts "but you don't have time to look.  There's 5 pods, which one"
    puts "do you take: '1', '2', '3', '4', '5'?"

    good_pod = rand(5)+1   # Here again, we are generating a random value via the 'rand' method and assigning it to 'good_pod' 
    print "[pod #]>"       # Then it prints the hint
    guess = gets.chomp()   # And finally we get the user's input which is defined as the value of the 'guess' variable

    if guess.to_i != good_pod   # Next is the logic: if the guess is equal to the random generated number created by the 'rand' method then...
      puts "You jump into pod %s and hit the eject button." % guess
      puts "The pod escapes out into the void of space, then"
      puts "implodes as the hull ruptures, crushing your body"
      puts "into jam jelly."
      return :death  #... the user dies!
    else   #Otherwise the circumstances the user inputs are used as string interpolated data and is announced a winner.
      puts "You jump into pod %s and hit the eject button." % guess
      puts "The pod easily slides out into space heading to"
      puts "the planet below.  As it flies to the planet, you look"
      puts "back and see your ship implode then explode like a"
      puts "bright star, taking out the Gothon ship at the same"
      puts "time.  You won!"
      Process.exit(0)  # The 'Process' module is basically a collection of methods used to manipulate processes, invoked by the 'exit' method called by the integer zero.
                       # What's so interesting about this integar is that it's got special meaning and belongs to a library of exit codes. 
                       # For all list of possible codes: http://tldp.org/LDP/abs/html/exitcodes.html
    end
  end
end

a_game = Game.new(:central_corridor) # Here we are noting the first set of symbolds / methods are pre-cached and ready to go
a_game.play()  # Finally here, we begin the program by noting the financial needs and the structure of the ame. 


# Extra Credit
# Explain how returning the next room works.
# From the get go a finite state begins with the first parameter being called by the :central_corridor and then we call the
# 'play' method which is where the 'next_room' is called by the instance variable @start.
# What is really happening here is that each time an answer is provided we get both the dashes while the condition is true,
# but more importantly we initiate the the value of the 'next_room' via the call method on the 'room' variable that basicly 
# re-prompts the start method with all it's quips. It keeps the quips around per the logic of the game. 
# For instance, if the user gets all the answers right, then they never see any of the quips, but if they make a mistake
# then it intializes the next_room > @start > @quip > "one of the strings"

# Add cheat codes to the game so you can get past the more difficult rooms. I can do this with two words on one line.

# Instead of having each function print itself, learn about "doc string" style comments. Write the room description as doc comments, and change the runner to print them. CHECK OUT: https://gist.github.com/chendo/2146319

# Once you have doc comments as the room description, do you need to have the function prompt even? Have the runner prompt the user, and pass that in to each function. Your functions should just be if-statements printing the result and returning the next room.
# CHECK OUT: ext43-2.rb for the added doc comments.

# This is actually a small version of something called a "finite state machine". Read about them here:
# http://en.wikipedia.org/wiki/Finite-state_machine
# They might not make sense but try anyway.
# I have a bug in this code. Why is the door lock guessing 11 times?
