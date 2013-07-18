# Exercise 40: Modules, Classes, And Objects 
# Ruby is something called an "Object Oriented Programming Language". What this means is there's a construct in Ruby called a class that lets you structure your software in a particular way. Using classes you can add consistency to your programs so that they can be used in a cleaner way, or at least that's the theory.

# Modules Are Like Hashes
# You know how a Hash is created and used, and that it is a way to map one thing to another. That means if you have a Hash with a key 'apple' and you want to get it then you do this:

#    mystuff = {'apple' => "I AM APPLES!"}
#    puts mystuff['apple']

# Keep this idea of "get X from Y" in your head, and now think about modules. You've made a few so far, and used them, and you know they are:

# A Ruby file with some functions or variables inside a Module.
# You then require that file.
# And then you can access the functions or variables in that module with the '.' (dot) operator.
# Imagine if I have a module that I decide to name mystuff.rb and I put a function in it called apple. Here's the module mystuff.rb:

require 'mystuff'

MyStuff.apple()
puts MyStuff::TANGERINE

# The first line is the "instantiate" operation, and it's a special function available on classes for making instances. However, when you call this there's a sequence of events that Ruby coordinates for you. I'll go through them using the above code for MyStuff:

# Ruby looks for MyStuff and sees that it is a class you've defined.
# Ruby crafts an empty object with all the functions you've specified in the class using def.
# Ruby then looks to see if you made a "magic" initialize function, and if you have it calls that function to initialize your newly created empty object.

# In the MyStuff function initialize I then get this extra variable self which is that empty object Ruby made for me, and I can set variables on it just like you would with a module, dict, or other object.

# In this case, I set @tangerine to a song lyric and then I've initialized this object. Now Ruby can take this newly minted object, and assign it to the thing variable for me to work with.


# hash style
mystuff['apples']

# module style
mystuff.apples()
puts mystuff.tangerine

# class style
thing = MyStuff.new()
thing.apples()
puts thing.tangerine 


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

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()


# Extra Credit
# Write some more songs using this, make sure you understand that you're passing a list of strings as the lyrics. Put the lyrics in a separate variable, then pass that variable to the class to use instead.

# See if you can hack on this and make it do more things. Don't worry if you have no idea how, just give it a try, see what happens. Break it, trash it, thrash it, you can't hurt it.

# Search online for "object oriented programming" and try to overflow your brain with what you read. Don't worry if it makes absolutely no sense to you. Half of that stuff makes no sense to me too.
  