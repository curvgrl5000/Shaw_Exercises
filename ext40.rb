# Exercise 40: Modules, Classes, And Objects 
# Ruby is something called an "Object Oriented Programming Language". What this means is there's a construct in Ruby called a class that lets you structure your software in a particular way. Using classes you can add consistency to your programs so that they can be used in a cleaner way, or at least that's the theory.

# Modules Are Like Hashes
# You know how a Hash is created and used, and that it is a way to map one thing to another. That means if you have a Hash with a key 'apple' and you want to get it then you do this:

mystuff = {'apples' => "I AM APPLES IN A HASH!"}
puts mystuff['apples']

# Keep this idea of "get X from Y" in your head, and now think about modules. You've made a few so far, and used them, and you know they are:

# A Ruby file with some functions or variables inside a Module.
# You then require that file.
# And then you can access the functions or variables in that module with the '.' (dot) operator.

# Here I've created the mystuff.rb module and I'm requiring  it  here to use....
require './mystuff'
puts " -- "*10
MyStuff.apple()
puts MyStuff::TANGERINE
 
# The first line is the "instantiate" operation, and it's a special function available on classes for making instances. However, when you call this there's a sequence of events that Ruby coordinates for you. I'll go through them using the above code for MyStuff:

# Ruby looks for MyStuff and sees that it is a class you've defined.
# Ruby crafts an empty object with all the functions you've specified in the class using def.
# Ruby then looks to see if you made a "magic" initialize function, and if you have it calls that function to initialize your newly created empty object.

# In the MyStuff function initialize I then get this extra variable self which is that empty object Ruby made for me, and I can set variables on it just like you would with a module, dict, or other object.

# In this case, I set @tangerine to a song lyric and then I've initialized this object. Now Ruby can take this newly minted object, and assign it to the thing variable for me to work with.

# hash style
puts " -- "*10 
mystuff['apples']         # This is coming from the Hash on line 7
puts mystuff

# module style
puts " -- "*10
MyStuff.apple             # Okay we're printing the module again
puts MyStuff::TANGERINE  

# class style
puts " -- "*10
thing = MyStuff.apple()
puts thing

# Now on to Song...
class Song

    def initialize(lyrics)
        @lyrics = lyrics
    end

    def sing_me_a_song()
        for line in @lyrics
            puts line
        end
    end
end

happy_bday = Song.new(["Happy birthday to you",
                   "I don't want to get sued",
                   "So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around the family",
                        "With pockets full of shells"])

aretha_sez = Song.new(["Chain, chain, chain",
                       "Chain, chain, chain", 
                       "Chain of Fools"])
a = Song.new(["Got to pay your dues", "if you want to sing the blues",
              "And you know it don't come easy", "You don't have to shout or leap about",
               "You can even play them easy!"])
pass_a_var = a                       
happy_bday.sing_me_a_song()
bulls_on_parade.sing_me_a_song()
aretha_sez.sing_me_a_song()
pass_a_var.sing_me_a_song()  

# Extra Credit
# Write some more songs using this, make sure you understand that you're passing a list of strings as the lyrics. Put the lyrics in a separate variable, then pass that variable to the class to use instead.

# See if you can hack on this and make it do more things. Don't worry if you have no idea how, just give it a try, see what happens. Break it, trash it, thrash it, you can't hurt it.

# Search online for "object oriented programming" and try to overflow your brain with what you read. Don't worry if it makes absolutely no sense to you. Half of that stuff makes no sense to me too. 

# Here's some great resources to read about object oriented programoing:def programoing
#1 - https://en.wikipedia.org/wiki/Object-oriented_programming
# Object-oriented programming (OOP) is a programming paradigm that represents concepts as "objects" that have data fields (attributes that describe the object) and associated procedures known as methods. Objects, which are usually instances of classes, are used to interact with one another to design applications and computer programs.[1][2] Objective-C, Smalltalk, and Java are examples of object-oriented programming languages.

#2 - http://www.ruby-lang.org/en/about/
# All about Ruby and it's history and best features listed. It's roots combine the power of SmallTalk, Lisp and other Oject Oriented Languages while introducing 
# flexibility that all programmers can be content to work with.

#3 -http://railscasts.com/episodes/286-draper
# A bit more advanced but worth looking at. It's using the idea of OOP, with view-logic. Okay have fun!



  