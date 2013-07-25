# Exercise 41: Learning To Speak Object Oriented

# We are practicing what we know and explaining everything what we say in our flash Cards.
# Here's some Word Drills:def Drills:
# object : Two meanings: the most basic kind of thing, and any instance of some thing.
# instance : What you get when you tell Ruby to create a class.
# def : How you define a function inside a class.
# @ : Inside the functions in a class, @ is an operator for variables in the instance/object being accessed.
# inheritance : The concept that one class can inherit traits from another class, much like you and your parents.
# composition : The concept that a class can be composed of other classes as parts, much like how a car has wheels.
# attribute : A property classes have that are from composition and are usually variables.
# is-a : A phrase to say that something inherits from another, as in a Salmon is-a Fish.
# has-a : A phrase to say that something is composed of other things or has a trait, as in a Salmon has-a #mouth. 
# class : Tell Ruby to make a new kind of thing.
# object : Two meanings: the most basic kind of thing, and any instance of some thing.
# instance : What you get when you tell Ruby to create a class.
# def : How you define a function inside a class.
# composition : The concept that a class can be composed of other classes as parts, much like how a car has wheels.
# attribute : A property classes have that are from composition and are usually variables.
# is-a : A phrase to say that something inherits from another, as in a Salmon is-a Fish.
# has-a : A phrase to say that something is composed of other things or has a trait, as in a Salmon has-a mouth.
  
# BIG TIP  
# is-a : A phrase to say that something inherits from another, as in a Salmon is-a Fish.
# has-a : A phrase to say that something is composed of other things or has a trait, as in a Salmon has-a mouth.

#########################################################################################################
# No. 1
# class X(Y)
# "Make a class named X that is-a Y."

# Here we show how a class can be created and building the relationship between X and Y
# The class Fruit's method 'set_kind' will set or write the kind with the placeholder variable K
# The class Fruit's method 'get_kind' will read the value of the first param, as long as there is one.
class Fruit
  def set_kind(k) # a writer
    @kind = k
  end
  def get_kind  # a reader
    @kind
  end
end 

f1 = Fruit.new
p f1.set_kind("peach")  # uses the writer, and boom your parmater is a writer, and sets "peach"
p f1.get_kind           # uses the reader, and boom the value of the variable is returned
puts f1                 # here we are just printing what 'fi' is, returning the class name and the numbers

# Let's make it cleaner:
class Fruit
  def kind=(k)
    @kind = k
  end
  def kind
    @kind
  end
end

f2 = Fruit.new
p f2.kind = "banana"
p f2.kind

f3 = Fruit.new
p f1.kind, f2.kind, f3.kind = ("tasty")

# Okay, one more way to showcase the power of this relationship using the shortcut Attribute Accessor:
class Fruit
  attr_accessor :kind   # attr_accessor is a getter and a setter > See chart below
  def kind(k)
    @kind = k
  end
end

f4 = Fruit.new
p f4.kind("small")

# Shortcut	            Effect
# attr_reader :v	      def v; @v; end
# attr_writer :v	      def v=(value); @v=value; end
# attr_accessor :v	    attr_reader :v; attr_writer :v
# attr_accessor :v, :w	attr_accessor :v; attr_accessor :w

#########################################################################################################
