# Exercise 42: Is-A, Has-A, Objects, and Classes

# This defines the 

# Here's some Word Drills:def Drills:
  
# BIG TIP  
# is-a : A phrase to say that something inherits from another, as in a Salmon is-a Fish.
# has-a : A phrase to say that something is composed of other things or has a trait, as in a Salmon has-a mouth.
# class : Tell Ruby to make a new kind of thing. 

# First, you need to learn two catch phrases "is-a" and "has-a". You use the phrase is-a when you talk about objects and classes being related to each other by a class relationship. You use has-a when you talk about objects and classes that are related only because they reference each other.

# Now, go through this piece of code and replace each ##?? comment with a replacement comment that says whether the next line represents an is-a or a has-a relationship, and what that relationship is. In the beginning of the code, I've laid out a few examples, so you just have to write the remaining ones.

# Remember, is-a is the relationship between Fish and Salmon, while has-a is the relationship between Salmon and Gills.


######################################################################################################
## Animal is-a object look at the extra credit
class Animal
end

## Dog is-a class that is an Animal
class Dog < Animal

    def initialize(name)
        ## the Dog class has-a intializer that takes the parameter name
        @name = name  ## the instance variable name is equal to the value of the the parameter 'name', which is initialized when the class Dog is created
                      ## by an instance of a new object
        
    end
end
# A note about the initializer method:
# initialize is a special method in Ruby programs. When you call Dog.new to create a new Dog object, Ruby creates an uninitialized object and then calls that object's initialize method, passing in any parameters that were passed to new. This gives you a chance to write code that sets up your object's state.


## Cat is-a class that is a subclass of Animal
class Cat < Animal

    def initialize(name)
        ## the Cat class has an initializer that takes the paramter name, which is set by the instance variable 'name'
        @name = name
    end
end

## Person is-a object
class Person

    def initialize(name)
        ## the class Person has an intializer method that takes a paramter name, which is called by an instance variable name
        @name = name

        ## Person has-a pet of some kind and can be set from the instance of the object's class
        @pet = nil
    end

    attr_accessor :pet 
end

## Employee is-a subclass of Person, Person is also a superclass of Employee
class Employee < Person

    def initialize(name, salary)
        ## the initialize method sets two parameters, name and salary
        super(name)
        ## the superclass Person will be setting the value for the variable name
        @salary = salary
    end

end

## Fish is-a object
class Fish
end

## Salmon is-a subclass of Fish, and Fish is a superclass of Salmon
class Salmon < Fish
end

## Halibut is-a subclass of Fish, and Fish is a superclass of Halibut
class Halibut < Fish
end

## rover is-a Dog, rover is an instance of the Dog class and is setting the value of the first parameter by the string "Rover"
rover = Dog.new("Rover")

## satan is-a Cat, satan is an instance of the Cat class and is setting the value of the first parameter by the string "Satan"
satan = Cat.new("Satan")

## mary is-a Person, mary is an instance of the Person class and is setting the value of the first parameter by the string "Mary"
mary = Person.new("Mary")

## mary has-a attribute that we're setting with the value of the object satan; which is an instance ( an object ) of the class Cat
mary.pet = satan

## frank is-a instance of the class Employee and is setting values for two parameters in the array. The first param is a string, the second one an integer
frank = Employee.new("Frank", 120000)

## frank has-a attribute that we're settting with the value of the object rover; which is an instance ( an object ) of the class Dog
frank.pet = rover

## flipper is-a instance of the class Fish
flipper = Fish.new()

## couse is-a instance of the class Salmon
crouse = Salmon.new()

## harry is-a instance of the class Halibut
harry = Halibut.new()


##############################################################################################################################
# EXTRA CREDIT....
# Reading More Code
# You are now to go on a new quest to read even more code and this time, to read the phrases you just learned in the code you read. You will look for all the files with classes, and then do the following:

# For each class give its name and what other classes it inherits from.
# Under that, list every function it has, and the parameters they take.
# List all of the attributes it uses on self.
# For each attribute, give the class it is.
# The goal is to go through real code and start learning to "pattern match" the phrases you just learned against how they're 
# used. If you drill this enough you should start to see these patterns shout at you in the code whereas before they just 
# seemed like vague blank spots you didn't know.


















