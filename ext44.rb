# Exercise 44: Inheritance Vs. Composition¶  
# What Is Inheritance?
# Inheritance is used to indicate that one class will get most or all of its features from a parent class. This happens implicitly whenever you write # # class Foo < Bar which says "Make a class Foo that inherits from Bar." When you do this, the language makes any action that you do on instances of Foo # also work as if they were done to an instance of Bar. Doing this lets you put common functionality in the Bar class, then specialize that # functionality in the Foo class as needed.

# When you are doing this kind of specialization, there's three ways that the parent and child classes can interact:

# 1. Actions on the child imply an action on the parent.
# 2. Actions on the child override the action on the parent.
# 3. Actions on the child alter the action on the parent.


# Okay so let's take this example and break it down....
###################################################################################################################################################
# EXAMPLE 1

puts "XXXX" *15
class Parent

    def implicit()
        puts "PARENT implicit()"
    end
end

class Child < Parent
end    

dad = Parent.new()  # A new instance of the Parent class 'dad' 
son = Child.new()   # A new instance of the Parent class 'son' 

dad.implicit()  # The key () is calling the method implicit from the object 'dad' and returning the value
son.implicit()  # The key () is calling the method implicit from the object 'son' which is inheriting from the Parent class
puts #blank


###################################################################################################################################################
# EXAMPLE 2
# But if we want to overide the implicity from the inherited class, what do we do?
# Then you have to define the method / fucntion with the same name in the 'Child' class.
# Here's that example again:

puts "XXXX" *15
class Parent

    def override()
        puts "PARENT override()"
    end
end

class Child < Parent
    
    def override()                # We're namning the same method coming from method, but defining it differently
        puts "CHILD override()"   # Now, the following string will print when it's called
    end
end

dad = Parent.new() # A new instance of the Parent class 'dad'
son = Child.new()  # A new instance of the Child class 'sonl

dad.override()
son.override()
puts #blank 

###################################################################################################################################################
# EXAMPLE 3
# Here's a case where the Child class is inheriting a private method from the Parent class,
# and how we need to use the method 'instance_eval' to get a private method from the Parent to print

puts "XXXX" *15
class Parent
  private
  def mom(value)
    puts "favorite kid = #{value}"
  end
end

class Child < Parent
end

kid = Child.new
begin
  kid.mom("Hey, I can't get this to work! ")
rescue Exception=>e   # When you use the exception class, you're using a special kind of object that is an instance
                      # of the class 'Exception'; which represents some kind of exceptional condition indicating that something has
                      # has gone wrong. And it will throw an 'excepton': code that tells you what's going on.
                      # Since we're using the 'rescue' clause, it's doing two things, it's running the 'Exception' clause; and the program
                      # is not being terminated and instead runs the code on line 73
  puts "Do you hear me calling you? #{e}"
end                                                              
kid.instance_eval{ mom("Mary, I'm calling you now!")} # To get to that private method inherited from the Parent to print, we then need to 
                                                      # use the 'instance_eval' method, which finally does succeed in getting to that private method
puts #blank line

###################################################################################################################################################
# EXAMPLE 4
# How we can use inheritance with something like color?

puts "XXXX" *15
class TopColor
  attr_accessor :color
  
  def tint
    puts "#{color}"
  end
end
season_color = TopColor.new
season_color.color = "hot pink"  # Here we're setting the value of the color from outside the class and everywhere we use this it's going to inherit
                                # this value "hotpink". It's a DRY way to get that TopColor to show up everywhere.
season_color.tint    # And now when we call the 'tint' method, we get the name of the color, 'hot pink'

class Lipstick < TopColor
  def balm(color)
    puts "The season's color is a #{color}!" # So we're setting up a variable that will accept an argument when we define the color.
                                             # And the color is being inherited by the TopColor class and set from the season_color object's color method
  end
end

class Handbag < TopColor
  def purse(color)
    puts "Even handbags are a deep #{color}! "
  end
end

class Hair < TopColor
  def mane(color)
    puts "You'll be tempted to dye your hair #{color} this year! "
  end
end

lips = Lipstick.new()
lips.balm(season_color.color)     

bag = Handbag.new() 
bag.purse(season_color.color)

bag = Hair.new() 
bag.mane(season_color.color)
puts #blank line   

###################################################################################################################################################
# EXAMPLE 5
# Okay, so how about inheriting a blanket statement where we get to change or manage some part of it?

puts "XXXX" *15

class BigCheese
  def inspect(condition)               # Here are setting the method with one parameter 'condition'
    puts "a #{condition} part of war"  # Then we're noting the instance variable 'condition' inside the string
  end
end

dictator = BigCheese.new               # Now we've got dictator as an instance of the class 'BigCheese'
dictator.inspect("horrendous")         # And we're setting the value of condition when we call the 'inspect' method

class Monger < BigCheese               # the 'Monger' class is now inheriting from the class 'BigCheese'
end
syria = Monger.new                     # And syria is an instance of the 'Monger' class, which is inheriting everything from that class
syria.inspect("terrible")              # So when we call that method 'inspect', it's going to it's Parent 'BigCheese', and we're modifying the argument 
                                       # 'condition' with the value 'terrible'. That should make sense how these things are getting passed.

puts # blank line

                                       ###################################################################################################################################################
# MOVING ON TO ALTER BEFORE OR AFTER
# The third way to use inheritance is a special case of overriding where you want to alter the behavior before or after you the parent class's version runs. You first override the function just like in the last example, but then you use a Ruby built-in function named 'super' to get the Parent version to call. Here's the example of doing that so you can make sense of this description:

puts "XXXX" *15
class Parent

    def altered()
        puts "PARENT altered()"
    end

end

class Child < Parent

    def altered()     # So we're using the same method, 'altered' and we've literally altered with a slightly different statement
        puts "CHILD, BEFORE PARENT altered()"
        super()       # And super is calling the 'altered' method from Parent and the string prints again
        puts "CHILD, AFTER PARENT altered()"   # And then we return from the Parent class and we continue to print out 'altered' from the Child class
    end

end

dad = Parent.new() # So 'dad' is an instance of 'Parent'
son = Child.new()  # And 'son' is an instance of 'Child'

dad.altered()      # And when we call the method 'altered' we  get what's in the 'altered' class
son.altered()      # And when we call the method 'altered' from the object 'son', well we get a new statement... 
                   # and with 'super' we call the original method from the 'Parent' class...
                   # and finally what's noted last in 'altered'
puts #blank

###################################################################################################################################################
# COMBINING ALL THREE METHODS

puts "XXXX" *15
class Parent                        # Okay so here's that 'Parent' class

    def override()                  # And the 'override' method which prints the following on line 204
        puts "PARENT override()"
    end

    def implicit()                  # And the 'implicit' method which prints the following on line 208 
        puts "PARENT implicit()"
    end

    def altered()                   # And the 'altered' method which prints the following on line 212
        puts "PARENT altered()"
    end
end

class Child < Parent                # Now we've got the 'Child' class inheriting from 'Parent', let's see what's going to happen:
    
    def override()                  # With the same name, the method 'override' will print out it's own version
        puts "CHILD override()"
    end

    def altered()                    # With the same name, the method 'altered' will print out it's own version....  
        puts "CHILD, BEFORE PARENT altered()"
        super()                      #... and then that super, which calls the 'Parent' classes' 'altered' method
        puts "CHILD, AFTER PARENT altered()" # and finally the last string in the method.
    end
end

dad = Parent.new()  # dad object is a new instance of the 'Parent' class
son = Child.new()   # son object is a new instance of the 'Child' class

dad.implicit()      # Here we're calling the 'implicit' method from the dad object; which returns: "PARENT implicity()"
son.implicit()      # Here we're calling the 'implicit' method from the dad object again ; since we don't hae a 'implicit' method in 'son'
                    # it prints out what's being inheritied from 'Parent'

dad.override()      # Now we're calling the 'overrride' method from the 'dad' object; an instance of 'Parent'; which returns: "PARENT overide()"
son.override()      # Now we're calling the 'overrride' method from the 'son' object, and we get a new version returned.

dad.altered()       # Finally we call the 'altered' method from the 'dad' object, an instance of 'Parent'; which returns: "PARENT altered()"
son.altered()       # And lastly we call the 'altered' method from the 'son' object, an instance of 'Child', which returns: "CHILD, AFTER PARENT alktered()"
puts #blank

###################################################################################################################################################
# SOME NOTES ON SUPER....
# In the Child.altered() function I used a special function named super(). This isn't a function you define, but instead one Ruby gives you. This function figures out how to call the same function, but in a parent class. The reason you need a special function is that what is "the parent class" is a bit complex. It relies on Ruby knowing the full inheritance structure of the current class, and any possible modules you've added to it with mixins (which I'll show you soon). By using super() you don't need to worry about figuring this out and can just let Ruby do it.

#You use super() by passing it the right number of arguments for the parent class's argument count. In the example above, neither version of altered() had arguments, so I just called super(). If the class Parent had arguments, then I'd add them to the super() call.

# super() With initialize
# You use super() by passing it the right number of arguments for the parent class's argument count. In the example above, neither version of altered() had arguments, so I just called super(). If the class Parent had arguments, then I'd add them to the super() call.

class Child < Parent
  attr_writer :stuff
  def initialize(stuff)
      self.stuff = stuff
      super()
  end
end
puts #blank

# COMPOSITION
# Inheritance is useful, but another way to do the exact same thing is just to use other classes and modules, rather than rely on implicit inheritance. If you look at the three ways to exploit inheritance, two of the three involve writing new code to replace or alter functionality. This can easily be replicated by just calling functions on another class or from a module. Here's an example of doing this:

# let's look at this example:

puts "XXXX" *15
class Other

    def override()
        puts "OTHER override()"
    end

    def implicit()
        puts "OTHER implicit()"
    end

    def altered()
        puts "OTHER altered()"
    end
end

class Child

    def initialize()        # This way we're initializing the class 'Child' with an instance of @ther to be a new instance of the 'Other' class.
        @other = Other.new()
    end

    def implicit()
        @other.implicit()   # And since the instance variable '@other' is an instance of the 'Other' class, 
                            # anytime an instance (object) of the'Child' class is used with the 'implicit' method, we are inheriting from 'Other' 
    end
    
    def override()          # Here we are using the same name 'override' but are getting a different version
        puts "CHILD override()"
    end

    def altered()           # Again we're using the same name 'altered', but we're gettin different results
        puts "CHILD, BEFORE OTHER altered()"
        @other.altered()    # Here we're calling the instance variable '@other' and the 'altered' method which inherits from the "Other' class
        puts "CHILD, AFTER OTHER altered()" # Then it returns back to the 'Child' class and continues the string...
    end
end

son = Child.new()          # okay so let's create that 'son' object, an instance of the 'Child' class

son.implicit()             # then we're calling the 'implicit' method which is inheriting from the instance variable '@other' and it's implicit variable
                           # from the 'Other' class. One big inheritance stream, yay!
                           
son.override()             # And then here we're calling the 'overide' method from the instance of 'son'
son.altered()              # And finally we're calling the 'altered' method from the instance of 'son' again, but this time another 
                           # we're inheriting again with the '@other' and it's altered method... coming from the 'Other' class.
puts # blank

###################################################################################################################################################
# But there's another way: INTRODUCING MODULES!!!
# It's using the same kind of logic here, but we're now using a module instead the class
# So what's the difference? Why use one over the other?
# One thing that's important to understand is how Ruby deals with multimple inheritance. A Ruby class can only have one parent class or 
# rather 'superclass', which we've been using when we use the 'super' method. But what happens if you want to do an inheritance via modules?
# That's when we need to understand how a module, is different from a class and a mixin.


# Go to the command line and type the following in quotes, and you'll see that the Class object inherits from the Module object:
##  ruby -v -e "puts Class.ancestors"
# You'll see the following:
##  Class
##  Module
##  Object
##  Kernel
##  BasicObject

# So the class object has got an ancestor stream, with the Module as its first ancestor up the chain of command sort to speak.
# A mdoule is a collection of methods and constants...
# Matt aimonetti http://matt.aimonetti.net/posts/2012/07/30/ruby-class-module-mixins/  thinks of them as "modules as namespaced methods and constants".
# The're not suppose to be used as instances, like the Class object is. When you have a singleton class okay, that might be an 
# exception, but when you aren't chaning the states of the classes, then it's recommended to use a Module.

# But you CAN use instances of methods when we use them as 'Mixin'. Confusing set of rules, I know.
# Let's look hard at our example first, before we digress on the use of the 'mixin'....

puts "XXXX" *15
module OtherThing

    def OtherThing.override()
        puts "OTHER THING override()"
    end

    def OtherThing.implicit()
        puts "OTHER THING implicit()"
    end

    def OtherThing.altered()
        puts "OTHER THING altered()"
    end
end

class Child

    def implicit()
        OtherThing.implicit() # So here the 'Other' module is being used to define the 'implicit' method in the Child class
    end
    
    def override()
        puts "CHILD override()"
    end

    def altered()
        puts "CHILD, BEFORE OTHER altered()"
        OtherThing.altered()   # And it's used again to define the 'altered' method in the Child class
        puts "CHILD, AFTER OTHER altered()"
    end
end

son = Child.new()  # So 'son' is an instance of Child...

son.implicit()     # which then calls the 'implicit' class, which calls the 'Other' moducle and it's 'implicit' method
son.override()     # And 'son' is being called by the 'override' method'; which prints: "CHILD override()"
son.altered()      # And finally the 'altered' method is called which returns both class and module from the 'altered' of 'Child'
puts #blank

# When To Use Inheritance Or Composition
# The question of "inheritance vs. composition" comes down to an attempt to solve the problem of reusable code. You don't want to have duplicated code all over your code, since that's not clean and efficient. Inheritance solves this problem by creating a mechanism for you to have implied features in base classes. Composition solves this by giving you modules and the ability to simply call functions in other classes.

# If both solutions solve the problem of reuse, then which one is appropriate in which situations? The answer is incredibly subjective, but I'll give you my three guidelines for when to do which:

####### Avoid meta-programming at all costs, as it's too complex to be useful reliably. If you're stuck with it, then be prepared to spend time finding where everything is coming from.

####### Use composition to package up code into modules that is used in many different unrelated places and situations.

####### Use inheritance only when there are clearly related reusable pieces of code that fit under a single common concept, or if you have to because of something you're using.

#############################################################################################################################
# NOW LET'S SEE SOME MORE MODULES IN ACTION, here's a great repo to check out: 
# Ex 1 

puts "XXXX" *15
module Settings

  DATA = {repo: 'http://github.com/mattetti'}

  def repository
    DATA[:repo]
  end

  def secret_key
    DATA[:key] ||= 42*Math::PI
  end

end

a = Object.new
a.extend(Settings)
a.repository
# => "http://github.com/mattetti"

# Or we can add the code to a class so the instances of this class can access our module instance methods:
class Foo
  include Settings
end

Foo.new.repository
# => "http://github.com/mattetti"
puts #blank

#############################################################################################################################
# Ex 2

puts "XXXX" *15
module Persistence
    def load sFileName
            puts "load code to read #{sFileName} contents into my_data"
    end
        def save sFileName
    	puts "Uber code to persist #{@my_data} to #{sFileName}"
    end

end

class BrandNewClass
    include Persistence
    attr :my_data

        def data=(someData)
    	@my_data = someData
    end
end

b = BrandNewClass.new
b.data = "My pwd"
b.save "MyFile.secret"
b.load "MyFile.secret" 
puts #blank

#############################################################################################################################
# Ex 3

puts "XXXX" *15
module Artwork
    def load sArtName
            puts "Load title of art to read #{sArtName} into my_data file."
    end
    def save sArtName
    	puts "Uber code to persist #{@my_art} to #{sArtName}"
    end

end

class BrandNewArt
    include Artwork 
    attr :my_art

    def data=(someData)
    	@my_art = someData
    end
end

a = BrandNewArt.new
a.data = "My favorite artwork"
a.save "MyFavoriteArtList.secret"
a.load "Guernica, Picasso" 
puts #blank

##############################################################################################################################
# Extra Credit
# There is only one extra credit for this exercise because it is a big exercise. Go and read this https://github.com/styleguide/ruby and start trying to use it in your code.




