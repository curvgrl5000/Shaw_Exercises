# Exercise 30: ELSE AND IF  
# 'if' expressions are used for conditional execution. The values false and nil are false, and everything else is true. Notice Ruby uses elsif, not else if nor elif. 

# 'if' is a modifier, and executes code if the conditional is true. There's other statements including: 'unless' which creates an interesting scenario; whereby the value of true or false is used to initialize the branch of code to be executed.

# An 'if' expression's conditional is separated from code by the reserved word 'then', a newline, or a semicolon. The follolwing program uses: 'if', 'elsif','else' and I threw in 'unless' just for fun! 

# The people, cars and buses
# EXAMPLE NO.1
people = 30
cars = 40
buses = 15

if cars > people
  puts "We should take the cars."
 elsif cars < people
   puts "We should not take the cars."
 else
   puts "We can't decide."
 end

# Try some more complex boolean expressions like cars > people and buses < cars. Above each line write an English description of what the line does.      
 
 if buses > cars
   puts "That's too many buses."
 elsif buses < cars
   puts "Maybe we could take a bus."
 else
   puts "We still can't decide."
 end
 
 if people > buses
   puts "Alright, let's just take the bus."
 else
   puts "Fine, let's stay home then."
 end
puts #blank  
puts "^^^///>>>///<<<///" *5
puts #blank 
 
############################################################################################################

# Extra Credit
# Remember what an 'if' statment does:
# An if statement creates what is called a "branch" in the code. It's kind of like those choose your own adventure books where you are asked to turn to one page if you make one choice, and another if you go a different direction. The if-statement tells your script, "If this boolean expression is True, then run the code under it, otherwise skip it."

# Try to guess what 'elsif' and 'else' are doing.
# else: The keyword 'else' leads to a path for a program to resume if the conditions for an if statement weren't met. An else statement must come after an if statement. Or else, what would the else be an alternative to? 

# elsif: This indicates an alternative to the preceding if – and any other preceding elsif statements. So, you start off with the if, have any number of elsif alternatives, and end with an else to capture all the leftover possibilities. In other languages, elsif is spelled out as: else if


# EXAMPLE NO.2  - Here I'm creating a class Dog, then playing around with methods inside the class, on line 68 I begin to create the logic using if and else....

class Dog  
  def initialize(breed, name)  
    # Instance variables  
    @breed = breed  
    @name = name
  end
  # a method called display using the instance methods 
  def display
    puts "I'm a #{@breed}, and my name is #{@name}."
  end
end

# d is created with the 'new' method as a 'Dog' class, and we're passing the 2 values back to parameters in the array of the class.
d = Dog.new('Chihuahau', 'Elizabeth The Great')
d.display

doggie = 1
kitty = 3

if doggie < kitty
  puts "Whoa, that dog is fiesty!"
else 
  puts "The cats are still the kings of the jungle."
end

puts #blank  
puts "^^^///>>>///<<<///" *5
puts #blank
                            
############################################################################################

# EXAMPLE NO.3, In this example I build out a class called 'Recipes' and then define a set of 
# methods: 'name', 'initialize', and 'ingredient_list'. The instance variables are shared between
# the methods, making them local methods and helping build out the logic for the acutal ingredients.  

class Recipes
  def name (name)
    @name = name
  end
  def initialize(grains, veggies, carbs, protein, herbs, meat, milk, fruit_1, fruit_2, roots) 
    @grains = grains
    @veggies = veggies
    @carbs = carbs
    @protein = protein
    @herbs = herbs
    @meat = meat
    @milk = milk
    @fruit1 = fruit_1
    @fruit2 = fruit_2
    @roots = roots
  end
  
  def ingredient_list
    puts "The name of the recipe: #{@name}\nIngredients include: \n#{@grains},\n#{@veggies},\n#{@carbs},\n#{@protein},\n#{@herbs},\n#{@meat},\n#{@milk},\n#{@fruit1},\n#{@fruit2},\n#{@roots}"
  end
end
 
recipe1=Recipes.new('1 Cup of Rice', '1 Onion', '1 tblspn of butter', 'cheese sliver', 'salt n pepper to taste', '2 boneless chicken breasts', 'milk', '1 pear', 'lemon zest', 'Ginger Root')
recipe1.name('Orange-Glazed Chicken with Pears')
recipe1.ingredient_list 
puts #blank

recipe2=Recipes.new('1/2 teaspoon baking soda', '1 sweet potatoe', 'gouda cheese', '3 eggs', '1 cinnamon stick', 'no-meat', '1 1/2 cups whole milk', 'zest fron 1 lemon', 'zest from 1/2 orange', '2 teaspoons ground cinnamon')
recipe2.name('Spiced Sweet-Potato Cake With Custard Sauce')
recipe2.ingredient_list
puts #blank 


def hunger(how_hungry_are_you)
  meal = ""
  meal += "Orange-Glazed Chicken with Pears!!\n" if how_hungry_are_you >= 5
  meal += "Spiced Sweet-Potatoe Cake with Custard Sauce\n" if how_hungry_are_you <= 3
end 

puts hunger(5) #prints the value passed by the logic of the method, defined by the number in parens 
puts hunger(3)

puts #blank  
puts "^^^///>>>///<<<///" *5
puts #blank

# With this method, I create the logic with 'if', 'elsif' and 'else' for the method 'reallyhungry'...
def reallyhungry(how_hungry_are_you)
  meal = ""
  if how_hungry_are_you >= 9
    meal = "Potatoe Latkas" 
  elsif how_hungry_are_you >= 7
    meal = "Chicken"
  elsif how_hungry_are_you >= 4
    meal = "Soup"
  else
    meal = "Salad"
  end   
end 
#... and here we print the values that then define what gets printed in the shell
puts reallyhungry(9)
puts reallyhungry(4)
puts reallyhungry(3)

puts #blank  
puts "^^^///>>>///<<<///" *5
puts #blank

############################################################################################################
# EXAMPLE NO.4, here we're doing even more practice

# Here we define the variables iwth a number...
not_hungry = 0
getting_hungry = 1
kinda_hungry = 2
hungry = 3
really_hungry = 4
starving = 5  
famished = 6

#...Then we start to build the logic out with the logic statements and variables
# This might be cleaner as a module or could be set up as a 'case' with global variables, 
# where the logic statements 'when' and 'unless' are used. Watch for this in the coming 
 
if not_hungry < getting_hungry
  puts "Hey, I'm not that hungry, let's wait to grab a bite."
elsif not_hungry > getting_hungry
  puts "Mmmmm I'm getting hungry."
else
  puts "I can't decide!"
end
 
if kinda_hungry > getting_hungry
 puts "Hey, I think we should get something to eat."
elsif kinda_hungry < getting_hungry
  puts "Wow, I thought I was getting hungry, but I'm not."
else
  puts "I could skip the meal."
end

if hungry > kinda_hungry
 puts "It's time to eat."
elsif hungry < really_hungry
  puts "Wow, I'm really hungry."
else
  puts "I'm fasting, no meal even though I'm hungry."
end

if really_hungry < starving
 puts "I got to eat."
elsif really_hungry > kinda_hungry
  puts "I really got to eat."
else
  puts "I lost my appetite."
end

if famished > starving
 puts "I can't think, I gotta eat!"
elsif famished < starving
  puts "I'm ready to eat, but I can wait a bit."
else
  puts "Whoa, I'm way hungry, but I can't eat right now."
end 

if famished < starving 
 puts "I can't think, I gotta eat!"
elsif famished < starving
  puts "I'm ready to eat, but I can wait a bit."
else
  puts "Whoa, I'm way hungry, but I can't eat right now."
end 
  
  
