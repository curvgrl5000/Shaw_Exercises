
class Game

  def initialize(start)  # the initialize method is set by the start parameter
    @quips = [
      "You died.  You kinda suck at this.",  
      "Nice job, you died ...jackass.",
      "Such a luser.",
      "I have a small puppy that's better at this.",
      "Life is short and then you die....scumbag",
      "Your Brain has shrunk to the size of a pea.... Congrats!"
    ]
    @start = start  # the instance variable @start is equal to the parameter 'start' set by the initialize method in the class Game
  end

  def prompt() # 'prompt' prints the "> " when used
    print "> "
  end

  def play()  # the play method starts the dependency chain of the new_room calling @start
    next_room = @start  # The next_room is equal to the instance variable @start defined by the initialize method 
                        # which is set by the 'start' parameter and loads one of the strings in the @quips var.
                        # Each time the 'next_room' is called, you get a quip pending the logic of the answer.

    while true
      puts "\n----------------------------------------------------------------"   # The condition of true will print out the lines
      room = method(next_room)  # the 'room' variable is always being dynamically defined by the 'method' variable which is set by the 
                                #'next_room' value
      next_room = room.call()   # and 'next_room' variable is equal to the 'room' variable invoked by the 'call' method. 
                                # So each time you get call a room, you're resetting the play method to call a quip pending
                                # the logic of the statement, but since it's always true that a room is called, we always get the dashes.
    end
  end

  def death()
    puts @quips[rand(@quips.length())]
    Process.exit(1)
  end

  def central_corridor()
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

    prompt()
    print "[Type out one of the choices!]>"
    action = gets.chomp()

    if action == "shoot!"
      puts "Quick on the draw you yank out your blaster and fire it at the Gothon."
      puts "His clown costume is flowing and moving around his body, which throws"
      puts "off your aim.  Your laser hits his costume but misses him entirely.  This"
      puts "completely ruins his brand new costume his mother bought him, which"
      puts "makes him fly into an insane rage and blast you repeatedly in the face until"
      puts "you are dead.  Then he eats you."
      return :death  # For more info on the symbol: http://www.ruby-doc.org/core-2.0.0/Symbol.html

    elsif action == "dodge!"
      puts "Like a world class boxer you dodge, weave, slip and slide right"
      puts "as the Gothon's blaster cranks a laser past your head."
      puts "In the middle of your artful dodge your foot slips and you"
      puts "bang your head on the metal wall and pass out."
      puts "You wake up shortly after only to die as the Gothon stomps on"
      puts "your head and eats you."
      return :death  # For more info on the symbol: http://www.ruby-doc.org/core-2.0.0/Symbol.html 

    elsif action == "tell a joke"
      puts "Lucky for you they made you learn Gothon insults in the academy."
      puts "You tell the one Gothon joke you know:"
      puts "Lbhe zbgure vf fb sng, jura fur fvgf nebhaq gur ubhfr, fur fvgf nebhaq gur ubhfr."
      puts "The Gothon stops, tries not to laugh, then busts out laughing and can't move."
      puts "While he's laughing you run up and shoot him square in the head"
      puts "putting him down, then jump through the Weapon Armory door."
      return :laser_weapon_armory  # For more info on the symbol: http://www.ruby-doc.org/core-2.0.0/Symbol.html 

    else
      puts "DOES NOT COMPUTE!"
      return :central_corridor # For more info on the symbol: http://www.ruby-doc.org/core-2.0.0/Symbol.html 
    end
  end

  def laser_weapon_armory()
    puts "You do a dive roll into the Weapon Armory, crouch and scan the room"
    puts "for more Gothons that might be hiding.  It's dead quiet, too quiet."
    puts "You stand up and run to the far side of the room and find the"
    puts "neutron bomb in its container.  There's a keypad lock on the box"
    puts "and you need the code to get the bomb out.  If you get the code"
    puts "wrong 10 times then the lock closes forever and you can't"
    puts "get the bomb. The code is 3 digits."
    code = "%s%s%s" % [rand(2)+1, rand(2)+1, rand(2)+1]   # the rand method will generate a random number, 
                                                          # and the parens note it's potential range
                                                          # while '+ 1' equaling the amount of tries allowed 
                                                          # Check out this site: http://pleac.sourceforge.net/pleac_ruby/numbers.html
    print "[Use your keypad! Hint: 1 or 2]> "
    guess = gets.chomp()
    guesses = 0


    while guess != code and guesses < 10
      puts "BZZZZEDDD!"
      guesses += 1
      print "[C'mon! Use that keypad!]> "
      guess = gets.chomp()
    end

    if guess == code
      puts "The container clicks open and the seal breaks, letting gas out."
      puts "You grab the neutron bomb and run as fast as you can to the"
      puts "bridge where you must place it in the right spot."
      return :the_bridge
    else
      puts "The lock buzzes one last time and then you hear a sickening"
      puts "melting sound as the mechanism is fused together."
      puts "You decide to sit there, and finally the Gothons blow up the"
      puts "ship from their ship and you die."
      return :death
    end
  end

  def the_bridge()
    puts "You burst onto the Bridge with the neutron destruct bomb"
    puts "under your arm and surprise 5 Gothons who are trying to"
    puts "take control of the ship.  Each of them has an even uglier"
    puts "clown costume than the last.  They haven't pulled their"
    puts "weapons out yet, as they see the active bomb under your"
    puts "arm and don't want to set it off. Do you 'throw the bomb' or 'slowly place the bomb'? Choose one."

    prompt()
    action = gets.chomp()

    if action == "throw the bomb"
      puts "In a panic you throw the bomb at the group of Gothons"
      puts "and make a leap for the door.  Right as you drop it a"
      puts "Gothon shoots you right in the back killing you."
      puts "As you die you see another Gothon frantically try to disarm"
      puts "the bomb. You die knowing they will probably blow up when"
      puts "it goes off."
      return :death

    elsif action == "slowly place the bomb"
      puts "You point your blaster at the bomb under your arm"
      puts "and the Gothons put their hands up and start to sweat."
      puts "You inch backward to the door, open it, and then carefully"
      puts "place the bomb on the floor, pointing your blaster at it."
      puts "You then jump back through the door, punch the close button"
      puts "and blast the lock so the Gothons can't get out."
      puts "Now that the bomb is placed you run to the escape pod to"
      puts "get off this tin can."
      return :escape_pod
    else
      puts "DOES NOT COMPUTE!"
      return :the_bridge
    end
  end

  def escape_pod()
    puts "You rush through the ship desperately trying to make it to"
    puts "the escape pod before the whole ship explodes.  It seems like"
    puts "hardly any Gothons are on the ship, so your run is clear of"
    puts "interference.  You get to the chamber with the escape pods, and"
    puts "now need to pick one to take.  Some of them could be damaged"
    puts "but you don't have time to look.  There's 5 pods, which one"
    puts "do you take: '1', '2', '3', '4', '5'?"

    good_pod = rand(5)+1 
    print "[pod #]>"
    guess = gets.chomp()

    if guess.to_i != good_pod
      puts "You jump into pod %s and hit the eject button." % guess
      puts "The pod escapes out into the void of space, then"
      puts "implodes as the hull ruptures, crushing your body"
      puts "into jam jelly."
      return :death
    else
      puts "You jump into pod %s and hit the eject button." % guess
      puts "The pod easily slides out into space heading to"
      puts "the planet below.  As it flies to the planet, you look"
      puts "back and see your ship implode then explode like a"
      puts "bright star, taking out the Gothon ship at the same"
      puts "time.  You won!"
      Process.exit(0)
    end
  end
end

a_game = Game.new(:central_corridor)
a_game.play() 


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
