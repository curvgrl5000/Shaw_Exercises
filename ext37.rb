# EXERCISE 37: SYMBOL REVIEW      

###############################################################################################
# It's time to review the symbols and Ruby words you know, and to try to pick up a few more for the next few lessons. What I've done here is written out all the Ruby symbols and keywords that are important to know.

# In this lesson take each keyword, and first try to write out what it does from memory. Next, search online for it and see what it really does. It may be hard because some of these are going to be impossible to search for, but keep trying.

# If you get one of these wrong from memory, write up an index card with the correct definition and try to "correct" your memory. If you just didn't know about it, write it down, and save it for later.

# Finally, use each of these in a small Ruby program, or as many as you can get done. The key here is to find out what the symbol does, make sure you got it right, correct it if you do not, then use it to lock it in. 

# KEYWORDS

########################################################################################
puts "alias :::\\:::\\" *8
# 1. alias
# The 'alias' method creates an alias for an existing method, operator, or global variable. by creating a second name. Aliasing can be used either to provide more expressive options to the programmer using the class, or to help override methods and change the behavior of the class or object. Ruby provides this functionality with the 'alias' and 'alias_method' keywords.

# Ex: One
class Blowdryer
   def on
     puts "The blowdryer is on!"
   end
 
   alias :start :on
 end
 
 blow = Blowdryer.new
 blow.start # same as m.on
 
# Ex: Two
class Oven
  def on
    puts "The big oven is on."
  end
end

hot = Oven.new
hot.on

class Oven
  alias :hot_on1 :on

  def on
    puts "Warning: Don't burn your hair when you're baking the cake!"
    hot_on1
  end
end

hot.on

#  Ex: Three, Message for this specific oven
class <<hot
  alias :hot_on2 :on

  def on
    puts "This oven is weak, add extra time and don't burn your hair!"
    hot_on2
  end
end                      

  hot.on # Displays extra message

  hot2 = Oven.new
  hot2.on # Does not display extra message
   

########################################################################################
puts "and :::\\:::\\" *8
# 2. and
# Logical operator; same as && except and has lower precedence. The binary "and" operator will return the logical conjunction of both the operands. 
# And what does 'logical conjunction' mean, I hear you ask? http://en.wikipedia.org/wiki/Logical_conjunction 

a = 10
b = 20
(a and b) # is true
(a && b)  # is true

########################################################################################
puts "BEGIN :::\\:::\\" *8
# 3. BEGIN
# Code, enclosed in { code }, is decared to be called before the program is run.

puts "Hey! Check out how this sentence is printing after the string in the BEGIN statement."
BEGIN {
  puts "And this string will print first, when the program runs"
}

########################################################################################
puts "begin :::\\:::\\" *8
# 4. begin
# 'begin' expression executes a code block or group of statements; returns the value of the last evaluated expression and then closes with 'end' expression. What's interesting to me is why 'begin' and 'end' are used,
# and this lies in the what kind of ruby syntax they are: conditional expressions of control structures.

# Ex: 1
temp = 97.5
begin
  print "It's going to be " + temp.to_s + " Fahrenheit today. "
  puts "And it's getting hotter every day."
  temp += 0.2  # this controls how the numbers get calculated forward.
end while temp < 98.2 

# Ex: 2
begin  
    puts 'I am before the raise statement in this code block.'  
    raise 'Shoot, an error has occurred, I am the raise statement.'  
    puts 'I am after the raise statement.'  
rescue  
    puts 'Whoa, I am rescued.'  
end  
puts 'I am after the begin block.'
puts #blank line

# Ex: 3
a = 1
b = 2
c = 3
begin  
  raise "Testing #{a}, #{b}, #{c}"  
rescue Exception => e  
  puts e.message  
  puts e.backtrace.inspect #  prints the 'Exception'...
                           # 'backtrace' method returns an array of strings, each containing the 'filename:line No in the method
                           # 'inspect' method returns the exception’s class name
end

# What's between that begin and end?
# begin...end (what is called block in other languages) may sometimes be referred to simply as what it is, # i.e. an expression (which may in turn contain other expressions - an expression is simply something that has a return value) in Ruby. Some references will still call it a begin/end block, or a code block, adding somewhat to the confusion

# do...end or {...} will always be referred to as a block in Ruby

########################################################################################
puts "break :::\\:::\\" *8
# 5. break
# Terminates a 'while' or 'until' loop or a method inside a block. Exits from the most internal loop.
# 'break' is also a conditional expression of ruby's control structures.

# Ex: 1
i=0
	while i<3
	  print i, "\n"  # '\n' returns a newline. This symbol is part of ruby's backslash notation, see below for more info.
	  break
	end

# Ex: 2  	
six = (1..10).each {|i| break i if i > 5}
puts six  # 6
	  
########################################################################################
puts "case :::\\:::\\" *8
# 6. case
#Compares the expression specified by case and that specified by when using the === operator and 
# executes the code of the 'when' clause that matches.

# The expression specified by the 'when' clause is evaluated as the left operand. 
# If no when clauses match, case executes the code of the else clause.
# 'case' is thus a conditional expression that is a ruby conditional structure.
# A 'when' statement's expression is separated from code by the reserved word then, a newline, or a semicolon.

# Ex: 1
$age =  5
case $age
when 0 .. 2   # Here we use a rane
    puts "baby girl"
when 3 .. 6
    puts "little girl"
when 7 .. 12
    puts "girl"
when 13 .. 18
    puts "young woman"
else
    puts "female adult"
end
puts # blank line

# Ex: 2
collection = "Wrap-Around Dress"

designer = case collection
   when "Chiffon Evening Gown" then "ALBERTA FERRETTI"
   when "Poplin Dress" then "CHLOE"
   when "Wrap-Around Dress" then "DVF"
   when "Essential Line" then "DKNY"
   when "Baguette Handbag" then "FENDI"
   when "Berkin Handbag" then "HERMES"
   when "Pink Silk Pantsuit" then "J.CREW"
   when "Conical Bra" then "JEAN PAUL GAULTIER"
   when "Black Nylon Bag" then "KATE SPADE"
   when "Jap-Wrap" then "KENZO"
   else "Unknown"
end

puts "The " + collection  + " is signature to "  + designer

########################################################################################
puts "class :::\\:::\\" *8
# 7. class
# Mirroring the real world, object oriented languages like Ruby, take objects and classify them.
# So when a category is created like "shoes", it's called a 'class', and an object that belongs to the class "shoes"
# is called an instance of that class. So to create an object of that class, you have to define its characteristics.
# And finally a new method defined in that class is also a new instance of tha class.
# A class definition is a region of code between the keywords 'class' and 'end'.

# Making a new instance of a class is sometimes called instantiating or initializing that class, like 
# you'll see below in the class I've made and the object I've created. 

# Ex: 1
class Shoes
  def initialize( type, color, season )
    @type = type
    @color = color
    @season = season   
  end
  
  def kind_of_shoe
    puts "My favorite type of shoes are #{@type}."
  end
  
  def shade
    puts "And they always seem to be #{@color}."
  end
  
  def seasonable
    puts "And everybody knows the best season for #{@type} is #{@season}."
  end    
end

new_shoes = Shoes.new( "wedges", "black", "fall")
new_shoes.kind_of_shoe
new_shoes.shade
new_shoes.seasonable
puts # blank
                            
# Ex: 2 
class Yo_girlfriend
  def initialize( name )
    @name = name
  end

  def hello_there
    puts "Yo, " + @name + "!"
  end

end

hi = Yo_girlfriend.new( "Girlfriend" )
hi.hello_there
puts #

# Ex: 3
class Song
  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end
  
  def to_s
    puts "Song: #{@name}--#{@artist} (#{@duration})"
  end
end
aSong = Song.new("Respect", "Aretha Franklin", 260)
aSong.to_s
puts #

# Ex: 4
class Student
   @@no_of_students=0 # class variables
   def initialize(id, name, addr)
      @stud_id=id
      @stud_name=name
      @stud_addr=addr
   end
   def display_details()
      puts "Student id #@stud_id"
      puts "Student name #@stud_name"
      puts "Student address #@stud_addr"
    end
    def total_no_of_students()
       @@no_of_students += 1
       puts "Total number of students: #@@no_of_students"
    end
end

# Create Objects
cust1=Student.new("1", "Sarah", "2250 S. Street, Washinton, D.C.")
cust2=Student.new("2", "Lana", "1220 N. Post Rad, Boston, Mass")

# Call Methods
cust1.display_details()
cust1.total_no_of_students()
cust2.display_details()
cust2.total_no_of_students()

########################################################################################
puts "def :::\\:::\\" *8
# 8. def
# Defines a method; closes with end.

def purchase(arg1)
@thing = arg1
  puts "The price for the #{@thing} has been approved."
end
puts purchase("yacht")

########################################################################################
puts "defined? :::\\:::\\" *5
# 9. defined? 
# Determines if a variable, method, super method, or block exists.  It's a special operator
# that takes the form of a method and determines whether or not the passed expression is 
# defined. THen it returns a description string of the expression, or 'nil' if the expression 
# isn't defined.

# Ex: 1
grl_action_figure = 42
defined? grl_action_figure    # => "local-variable"
defined? $_                   # => "global-variable"
defined? men                  # => nil (undefined)

# Ex: 2 
defined? puts        # => "method"
defined? puts(bar)   # => nil (bar is not defined here)
defined? unpack      # => nil (not defined here)

# Ex: 3
defined? super     # => "super" (if it can be called)
defined? super     # => nil (if it cannot be)

# Ex: 4
defined? yield    # => "yield" (if there is a block passed)
defined? yield    # => nil (if there is no block)

########################################################################################
puts "do :::\\:::\\" *5
# 10. do
# Begins a block and executes code in that block; closes with end. 
# For instance a 'while' loop's conditional is seperated from code by the reserved word 'do',
# a newline, backslash '\', or a semi-colon ';'.

# Ex: 1
$x = 0
$num = 5

while $x < $num  do
   puts("The loop will keep groovin' until x = #$x" )
   $x +=1
end
puts # blank

# Ex: 2
(0..5).each do |y|
   puts "Value of the local variable in the range is #{y}."
end
puts # blank

# Ex: 3
$z = 0
$num = 5

until $z > $num  do
   puts("Until z is greater than the number, it will keep looping. So far z = #$z." )
   $z +=1;
end 
puts # blank

########################################################################################
puts "if :::\\:::\\" *5
# 11. if
# Executes code block if true. Closes with end. 

puts "elsif ::\\:::\\" *5
# 12. elsif
# Executes if previous conditional, in if or elsif, is not true.

puts "else :::\\:::\\" *5
# 13. else
# Executes if previous conditional, in if, elsif, unless, or when, is not true.

# Ex: 1
def prompt() 
  print "> "
end

def give(gived)                             
  puts "#{gived} You'll get reincarnated into swan. Keep it up, don't go backwards."                
  # Process.exit(0)                          
end

def try(try_again)                             
  puts "#{try_again} You'll get reincarnated into large earth worm. Try again tomorrow, please!"                
end

def start()                               
  puts "There's homeless women outside the restaurant you just exited."          
  puts "You've got left-overs of your favorite dish."   
  puts "Do you give her your leftovers? Yes? or No?"           

  prompt; next_move = gets.chomp          

    if next_move.include? "yes"             
    give("Good karma wins!")          
  elsif next_move.include? "no"         
    try("Bad karma, mon.")          
  else                                    
    puts "Not sure about this question? Meditate and try again."
    start()
  end
end               

start()

########################################################################################
puts "END :::\\:::\\" *5
# 14. END
# Code, enclosed in { code }, will be declared to be called at the end of the program.

END { puts "Cheerio, see you next time!"} # This will run at the end of the program/

########################################################################################
puts "end :::\\:::\\" *5
# 15. end
# 'end', literal ends the code block (group of statements) starting with begin, def, do, if, etc.

# Ex: 1:
class Nails
  def initialize(digits, comment)
    @digits = digits
    @comment = comment
  end  # So here we're ending the initialization
  
  def press
    puts "Take care of your #{@digits} little piggies at Nite Spa, Venice. They're open late, #{@comment}."
  end # So here we are ending the method
end  # So here we are ending the class

handy = Nails.new(10, "which makes me weak in the knees")
handy.press  
puts # blank

########################################################################################
puts "ensure :::\\:::\\" *5
# 16. ensure
# Always executes at block termination; use after last rescue.
# An ensure clause runs whether an exception is raised or not
# An ensure clause without an explicit return statement does not alter the return value.

# Ex: 1
require 'open-uri'
require 'timeout'

remote_base_url = "http://en.wikipedia.org/wiki"

start_year = 1997
end_year = 2000

(start_year..end_year).each do |yr|
 begin
   rpage = open("#{remote_base_url}/#{yr}")
 rescue StandardError=>e
   puts "Error: #{e}"
 else
   rdata = rpage.read
 ensure   
   puts "I'm busy at work gathering from wikipedia!"
   sleep 5
 end
     
 if rdata
   File.open("copy-of-#{yr}.html", "w"){|f| f.write(rdata) }
 end
end
puts # blank

########################################################################################
puts "false :::\\:::\\" *5
# 17. false
# Logical or Boolean false, instance of FalseClass. (See true.)
# false: Value representing false. It's a Pseudo-variable and its a reserved word.

print defined?(t2), "\n"	# false
puts # blank

########################################################################################
puts "for :::\\:::\\" *5
# 18. for
# Begins a for loop; used with in. A special Ruby keyword that indicates the beginning of the loop. It's an example of how you can get more done with tedius tasks.

# Ex: 1
for current_iteration_number in 1..10 do   # here we're using a range that defines the variable and then 'do' activates the value gathering
   puts "Hello world, this is number #{current_iteration_number}" # This prints until the end of the range is reached, which in this case is 10. 
end
puts # blank

# Ex: 2
for i in 1..100
   puts i if i % 7==0
end
puts # blank

########################################################################################
puts "in :::\\:::\\" *5
# 19. in

########################################################################################
puts "module :::\\:::\\" *5
# 20. module
# Defines a module; closes with end.

########################################################################################
puts "next :::\\:::\\" *5
# 21. next
# Jumps before a loop's conditional.

########################################################################################
puts "nil :::\\:::\\" *5
# 22. nil
# Jumps before a loop's conditional.
# Empty, uninitialized variable, or invalid, but not the same as zero; object of NilClass.
# nil: Value representing undefined. It's a Pseudo-variable and its a reserved word.
# the sole instance of the Class NilClass(represents false)
# In Ruby every value is an object. So, nil is an object, too. In fact, it is an instance of the NilClass:

my_object = "worth a fortune."

if my_object.nil?
  puts "There is no object!"
else
  puts "The value of the object is #{my_object}"
end


nil.class
nil == nil            # Which will render true
5.nil?                # false
{:a => 1}[:b].nil?    # true
nil.nil?              # true

nil.object_id         # 4
# Why is the object id of nil equal to 4? First, you need to know that false and true variables work exactly the same way as nil does. They are singleton instances of FalseClass and TrueClass, respectively. When the Ruby interpreter boots up, it initializes FalseClass, TrueClass and NilClass. The result is:
false.object_id       # 0
true.object_id        # 2
nil.object_id         # 4

# What happened to 1 and 3? Well, the first bit is reserved for Fixnum values (numbers) only. 
# Simple and consistent.
puts # blank

########################################################################################
puts "not :::\\:::\\" *5
# 23. not
# Logical operator; same as !.

########################################################################################
puts "or :::\\:::\\" *5
# 24. or
# Logical operator; same as || except or has lower precedence.

########################################################################################
puts "redo :::\\:::\\" *5
# 25. redo
# Jumps after a loop's conditional.

########################################################################################
puts "rescue :::\\:::\\" *5
# 26. rescue
# Evaluates an expression after an exception is raised; used before ensure.

# Ex: 1  
a = 10
b = "42"

begin
   a + b
rescue
   puts "Could not add variables a (#{a.class}) and b (#{b.class})"
else
   puts "a + b is #{a + b}"
end

########################################################################################
puts "retry :::\\:::\\" *5
# 27. retry
# Repeats a method call outside of rescue; jumps to top of block (begin) if inside rescue.

########################################################################################
puts "return :::\\:::\\" *5
# 28. return
# Returns a value from a method or block. May be omitted.

########################################################################################
puts "self :::\\:::\\" *5
# 29. self
# Current object (invoked by a method).

########################################################################################
puts "super :::\\:::\\" *5
# 30. super
# Calls method of the same name in the superclass. The superclass is the parent of this class.

########################################################################################
puts "then :::\\:::\\" *8
# 31. then
# A continuation for if, unless, and when. May be omitted.
# In english, "ternary" is an adjective meaning "composed of three items." 
# In a programming language, a ternary operator is simply short-hand for an if-then-else construct.
# In Ruby, '?' and : can be used to mean 'then' and 'else' respectively. 

def check_sign(number)
  number > 0 ? "#{number} is positive" : "#{number} is negative"
end
puts check_sign(200)

def check_sign(number)
  number > 0 ? "#{number} is positive" : "#{number} is negative"
end
puts check_sign(-200)


########################################################################################
puts "true :::\\:::\\" *5
# 32. true
# Logical or Boolean true, instance of TrueClass.
# true: Value representing true.
a = 2
b = 2
puts a <= b

########################################################################################
puts "undef :::\\:::\\" *5
# 33. undef
# Makes a method in current class undefined.

########################################################################################
puts "unless :::\\:::\\" *5
# 34. unless
# Makes a method in current class undefined. 'unless' is a conditional expressions of control structures. 

# Ex: 1
class Language
  lang = "de" 
  unless lang == "de"
    dog = "dog"
  else
    dog = "Hund"
  end
end
test = Language.new
puts test

puts # blank line

# Ex: 2
age=15
unless age>20
   puts "girl is younger than 20"
 else                   
  puts "woman is older than 20"
end

########################################################################################
puts "until :::\\:::\\" *5
# 35. until
# Executes code block while conditional statement is false. An unless statement is really like a negated if statement

# Ex: 1
x = 1
until x > 99
  puts x
  x = x * 2
end
puts # blank line

# Ex: 2
weight = 185

begin
  puts "Weight: " + weight.to_s
  weight -= 5
end until weight == 155
puts # blank line

# Ex: 3
until($_ == "q") # $_ represents the last read line
  puts "Running..."
  print "Enter q to quit: "
  $_ = gets.chomp()
end    


########################################################################################
puts "when :::\\:::\\" *5
# 36. when
# 'when' starts a clause (one or more) under case.

# Ex: 1 - One way to work with numbers with similar results
a = 1
 case 
 when a < 5 then puts "#{a} is less than 5"    
 when a == 5 then puts "#{a} equals 5"   
 when a > 5 then puts "#{a} is greater than 5" 
end

# Ex: 2 - One way to work with numbers with a similar results
case a
  when 0..4 then puts "#{a} is less than 5"    
  when 5 then puts "#{a} equals 5" 
  when 5..10 then puts "#{a} is greater than 5" 
  else puts "unexpected value #{a} "         # Just in case "a" is bigger than 10 or negative.
end

# Ex: 3 Enter this one into IRB, and the result returns => "a fruit" 
fruit = "apple"
 case fruit
 when "vanilla" then "a spice"    
 when  "spinach" then "a vegetable" 
 when "apple" then "a fruit" 
 else "an unexpected value"
end 
puts # blank

########################################################################################
puts "while :::\\:::\\" *5
# 37. while
# Executes code while the conditional statement is true. The while statement in Ruby is very similar to if and to other languages' while (syntactically). The code block will be executed again and again, as long as the expression evaluates to true.

# Ex: 1
puts "Do you live on the moon?"
line = readline.chomp while line != "no"
puts "Welcome back to planet earth, you never left."
puts #blank

# Ex: 2 
File.open('good_news.txt', 'r') do |f1|  
  while line = f1.gets  
    puts line  
  end  
end
puts #blank

# Ex: 3  
age = nil
puts "Enter age, or 0 to quit: "     
age = gets.to_i

while (age > 0 ) do
  if age > 65
    puts "Greetings Madame, you'll pay the Senior Fare."
  elsif age >= 14
    puts "Greetins Miss, you'll pay the Adult Fare."       
  elsif age >= 2
    puts "Hello Child, your momma will pay the Child Fare."
  else
    puts "You rid for free!"
end    
    puts "Enter another age for the fare pricing, or 0 to quit: "
    age = gets.to_i
end
puts #blank

########################################################################################
puts "yield :::\\:::\\" *5
# 38. yield
# Executes the block passed to the method - it's a method call. Evaluates the block given to the current method with arguments, if no argument is given, nil is used as an argument. The argument assignment to the block perameter is done just like multiple assignment. If the block is not supplied for the current method, an exception is raised.

# In ruby, methods may receive a code block that as the name describes are used to perform arbitrarily 
# segments of code. When a method expects a block, it invokes it by calling the yield function.
# Perfect to iterate a list or to provide a custom algorithm.

# For instance, this Person class is initialized with a name, and the 'do_with_name' method when instantiated
# will pass the name attribute, to the block received.

# Ex: 1
class Person 
    def initialize( name ) 
         @name = name
    end

    def do_with_name 
        yield( @name ) 
    end
end

person = Person.new("Andrea")
person.do_with_name {|string|
    puts "Hey, her name is #{string}"
}
puts #blank

########################################################################################
########################################################################################
# DATA TYPES
puts "true :::\\:::\\" *5
# 39. true
# Logical or Boolean true, instance of TrueClass.
# true: Value representing true. It's a Pseudo-variable and its a reserved word.  
i0 = 1
	loop {
	  i1 = 2
	  print defined?(i0), "\n"	# true
	  print defined?(i1), "\n"	# true
	  break
	}
print defined?(i0), "\n"	# true

########################################################################################
puts "false :::\\:::\\" *5
# 40. false
# Logical or Boolean false, instance of FalseClass. (See true.)
# false: Value representing false. It's a Pseudo-variable and its a reserved word.

print defined?(i1), "\n"	# false
puts # blank

########################################################################################
puts "nil :::\\:::\\" *5
# 41. nil
# Empty, uninitialized variable, or invalid, but not the same as zero; object of NilClass.
# nil: Value representing undefined. It's a Pseudo-variable and its a reserved word.
# the sole instance of the Class NilClass(represents false)
# In Ruby every value is an object. So, nil is an object, too. In fact, it is an instance of the NilClass:

my_object = nil
if my_object.nil?
  puts "There is no object!"
else
  puts "The value of the object is worthless."
end

nil.class
nil == nil            # Which will render true
5.nil?                # false
{:a => 1}[:b].nil?    # true
nil.nil?              # true

nil.object_id         # 4
# Why is the object id of nil equal to 4? First, you need to know that false and true variables work exactly the same way as nil does. They are singleton instances of FalseClass and TrueClass, respectively. When the Ruby interpreter boots up, it initializes FalseClass, TrueClass and NilClass. The result is:
false.object_id       # 0
true.object_id        # 2
nil.object_id         # 4

# What happened to 1 and 3? Well, the first bit is reserved for Fixnum values (numbers) only. 
# Simple and consistent.
puts # blank

########################################################################################
puts "constants :::\\:::\\" *5
# 42. constants
# A Ruby constant is like a variable, except that its value is supposed to remain constant for the duration of the program. The Ruby interpreter does not actually enforce the constancy of constants, but it does issue a warning if a program changes the value of a constant, as shown in the example. More on CONSTANTS are discussed in 'variables.

# Ex: 1
A_CONST = 10  
# A_CONST = 20  Uncomment this and run it and you'll get a warning.
puts A_CONST

# Ex: 2
# CONSTANTS 
# Constants begin with an uppercase letter. Constants defined within a class or module can be accessed from within that class or module, and those defined outside a class or module can be accessed globally.

class Collection
   SHADE1 = "blue"
   SHADE2 = "red"
   def show
       puts "Color of the first shade is #{SHADE1}"
       puts "Color of the second shade is #{SHADE2}"
   end
end

# Create Objects
object=Collection.new()
object.show
puts # blank
  
########################################################################################
puts "strings :::\\:::\\" *5
# 43. strings
# A String object holds and manipulates an arbitrary sequence of bytes, typically representing characters. String objects may be created using String::new or as literals.

# Because of aliasing issues, users of strings should be aware of the methods that modify the contents of a String object. Typically, methods with names ending in “!” modify their receiver, while those without a “!” return a new String. However, there are exceptions, such as String#[]=.

# Ex: 1
puts "1 + 1 = #{ 1 + 1 }."

# Ex: 2
puts "Contents of this is a string."

# Ex: 3
puts "%s now we're doing string formatting, with %s!" % ['Yay,', 'literals']
puts #blank line

########################################################################################
puts "numbers :::\\:::\\" *5
# 44. numbers
# In Ruby, numbers without decimal points are called integers.
# And numbers with a decimal point are called floating-point numbers or simply: 'floats'
# An integral literal is simply a sequence of digits, like 123, 12345678.

puts 1_000_000_000 # Underscores can be inserted into integer literals, often used as thousands seperators.
puts 3 / 2
puts 6 * 2 / 2 + 3
puts 55.2 / 3.2
puts #blank 

# Ruby integers are objects of class Fixnum or Bignum. Both classes descend from Integer and
# are therefore numeric. Fixnum and Bignum represent itegers of differing sizes. def sizes.
# In Ruby, numbers are 

########################################################################################
puts "variables :::\\:::\\" *5
# 45. variables
# Variables are the memory locations which holds any data to be used by any program.
# There are several types of variables. 
                               
# GLOBAL VARIABLES
# A global variable has a name beginning with $. It can be referred to from anywhere in a program. Before initialization, a global variable has the special value nil. Global variables begin with $. Uninitialized global variables have the value nil and produce warnings with the -w option.

$special_thing
$special_thing = 10
puts $special_thing
puts # blank

# INSTANCE VARIABLES
# Instance variables begin with @. Uninitialized instance variables have the value nil and produce 
# warnings with the -w option.   

name1 = "Liliana"
name2 = "George"
puts "Hello #{name1}, where is #{name2}?"
puts # blank

# CLASS VARIABLES   
# Class variables begin with @@ and must be initialized before they can be used in method definitions.
# Referencing an uninitialized class variable produces an error. Class variables are shared among descendants  
# of the class or module in which the class variables are defined.

class Poly
  @@sides = 15
  def self.sides
    @@sides
  end
end

puts Poly.sides      # => 15
# The issue with class variables is inheritance. Let’s say I want to subclass Polygon with Triangle like so:

class Tri < Poly
  @@sides = 3
end

puts Tri.sides       # => 3
puts Poly.sides      # => 3

# Wha happen, no comprende! Polygon’s sides was set to 10? When you set a class variable, you set it for the superclass and all of the subclasses. Rember this as INHERITANCE IS truly the big deal here!

class Rect < Poly
  @@sides = 4
end

puts Poly.sides       # => 4
puts # blank 

# LOCAL VARIABLES
# Instance variables begin with @. Uninitialized instance variables have the value nil and produce 
# warnings with the -w option.

class Client
   def initialize(id, name, phone)
      @client_id=id
      @client_name=name
      @client_phone=phone
   end
   def display_details()
      puts "Client id #@client_id"
      puts "Client name #@client_name"
      puts "Client phone #@client_phone"
    end
end

# Create Objects
client1=Client.new("1", "Jane", "310-555-1330")
client2=Client.new("2", "Mary", "310-666-3333")

# Call Methods
client1.display_details()
client2.display_details()
puts # blank 
   
# CONSTANTS 
# Constants begin with an uppercase letter. Constants defined within a class or module can be accessed from within that class or module, and those defined outside a class or module can be accessed globally.

# Constants may not be defined within methods. Referencing an uninitialized constant produces an error. Making an assignment to a constant that is already initialized produces a warning. Think of constants as frozen variables.

class Constants
   VAR1 = 100
   VAR2 = 200
   def show
       puts "Value of first Constant is #{VAR1}"
       puts "Value of second Constant is #{VAR2}"
   end
end

# Create Objects
object=Constants.new()
object.show
puts # blank 

# PSEUDO VARIABLES  
# They are special variables that have the appearance of local variables but behave like constants. You can not assign any value to these variables.

# self: The receiver object of the current method.

# true: Value representing true.

# false: Value representing false.

# nil: Value representing undefined.

# __FILE__: The name of the current source file.

# __LINE__: The current line number in the source file.
puts #blank

########################################################################################
puts "ranges :::\\:::\\" *5
# 46. ranges
# One of most fundamental things they do is express a sequence, with a starting point and
# an ednding point and a way to produce successive falues. Sequences are created with te ".."
# "..." range operatores.  Two dots creates an inclusive range, three does form a range that
# excludes a high value.

# Ex: 1
# Ranges are represented as range objects, with references to two Fixnum objects, to conver a
# range into a list, we use the 'to_a' method
puts (1..5).to_a
puts # blank

# Ex: 2
# You can iterate over ranges with methods that test their contents:
digits = 0..9
puts digits.include?(5)          # true
puts # blank

puts digits.min                  # 'min' method identifies the starting fixnum: 0  
puts # blank

puts digits.max                  # 'max' method identifies the ending fixnum: 9
puts # blank

puts digits.reject {|i| i < 5 }  # 'reject' method rejects all numbers less than fixnums: 5,6,7,8,9
puts # blank

digits.each do |digit|           # 'each' method iterates over each element and places the returning
  puts(digit)                    #  expression into 'digit', puts(digit) prints it
end

# Ex: 3
# Another way to use ranges is as Intervals. If a value falls within a range, we use the case
# equality operator: '==='. 
puts (1..50)    === 5	       #	true
puts (16..20)   === 15	     #  false
puts (1..10)    === 3.14159	 #	true
puts ('a'..'j') === 'c'	     #	true
puts ('a'..'j') === 'z'	     #	false

########################################################################################
puts "arrays :::\\:::\\" *5
# 47. arrays
# Arrays are ordered, integer-indexed collections of any object. 
# Array indexing starts at 0, as in C or Java. A negative index is assumed to be relative to the end of the array—that is, 
# an index of -1 indicates the last element of the array, -2 is the next to last element in the array, and so on.

# Ex: 1
first_set = ["Cookies N' Cream", "Chocoloate", "Vanilla", "Mint Chocolate Chip", "Chocolate Chip Cookie Dough", "Cookie Dough", "Strawberry", "Rocky Road", "Mint", "Coffee"]
puts first_set[0, 3]
puts #blank

# Ex: 2
second_set = ["Banana Split", "Boston Cream Pie", "Cake Batter", "Chunky Monkey", "Cake Batter", "Cannoli", "Half Baked", "Smores", "Karmel Sutra", "Cherry Garcia"]
second_set.collect! {|x| puts x + "!!"}
puts #blank

# Ex: 3
third_set = ["Dulce de Leche", "Choco Taco", "Tutti Frutti", "Cherimoya", "Passion-Fruit", "Strawberry Getalto", "Cinnamon Orange", "Pina Colada", "Tropical Fruit", "Watermelon Blast"]
third_set.cycle(2) {|x| puts x}
puts #blank

puts third_set.first + ": the yummiest one!"
puts #blank
puts third_set.last + ": perfect for summer nights!"
puts #blank
puts third_set[5] + ": perfect for summer nights!"
puts #blank
puts third_set.shuffle!
puts #blank

########################################################################################
puts "hashes :::\\:::\\" *5
# 48. hashes
# A Hash is a collection of key-value pairs. It is similar to an Array, except that indexing is done via arbitrary keys of any object type, not an integer index. Hashes enumerate their values in the order that the corresponding keys were inserted.

# Ex: 1
Hash["a", 100, "b", 200]             #=> {"a"=>100, "b"=>200}
Hash[ [ ["a", 100], ["b", 200] ] ]   #=> {"a"=>100, "b"=>200}
Hash["a" => 100, "b" => 200]         #=> {"a"=>100, "b"=>200}
puts # blank

# Ex: 2
h = Hash.new("Hey, this is a default value for a key")  # this returns nil
puts h.default  #= > Returns the value for a key that does not exist for the hash

# Ex: 3
h["a"] = 100
h["b"] = 200
puts h["a"]  #= > 100
puts h["c"].upcase! #= > the string, "Hey, this is passing..." is a defalut value for the key
puts #blank

# Ex: 4
h = { "a" => 100, "b" => 200 }
h = Hash.new {|hash, key| hash[key] = puts "This is the key: #{key}" }
puts h["c"]  #= > This is the key: c 

# Ex: 5
h = { "a" => 100, "b" => 200 }
h.each {|key, value| puts "#{key} is #{value}" }#= > a is 100, b is 200
puts #blank

# Ex: 6
h = { "a" => 100, "b" => 200 }
h.each_key {|key| puts key } #= > a, b
puts # blank

# Another method on the hash
puts h.length #= > 2
puts #blank

# Ex: 7
h = { "a" => 100, "b" => 200, "c" => 300 }
puts h.values   # => [100, 200, 300]

########################################################################################
# STRING ESCAPES SEQUENCES  / BACKSLASH NOTATION   

#   \\      : single backslash
puts %{The fruit-salad includes: apples\\oranges\\peaches\\pears.}   
puts #blank line     

#   \'      : single quote
puts %{78% of statistics are \'made\' up on the spot.}   
puts #blank line     

#   \"      : double quote
puts %{78% of statistics are \"made up\" on the spot}   
puts #blank line

#   \a      : bell or alert
puts #blank line     

#   \b      : is the backspace character only inside a character class. 
puts #blank line

#   \b      : Outside a character class, \b is a word/non-word boundary.
puts #blank line     

#   \cx     : control x
puts #blank line     

#   \Cx     : control x   
puts #blank line     

#   \f      : form feed
puts #blank line     

#   \e      : escape
puts #blank line     

#   \M-x    : meta x
puts #blank line     

#  \M-\C-x  : meta control x
puts #blank line     

#   \n      : a newline
puts "this is a\ntwo line string"
puts #blank line     

#   \nnn    : character in octal value nnn
puts #blank line     

#   \nnn    : character with hexadecimal value nn
puts #blank line     

#   \unnnn  : Unicode code point U+nnnn (Ruby 1.9 and later)
puts #blank line     

#   \r      : carriage return
puts #blank line     

#   \s      : whitespace, essentially a space  
puts #blank line     

#   \t      : a tab
puts #blank line     

#   \v      : vertical tab
puts #blank line     

#   \xnn    : character in hexadecimal value nn
puts #blank line     

#   \x      : character x itself (\" a single quote, for example) 
puts #blank line 

#   \z      : Matches the end of the string unless the string ends with a ``\n'', 
            # in which case it matches just before the ``\n''. 
puts #blank line    
    

########################################################################################
# BRAND def OPERATORS
#   (

#   ()       : Parentheses are also used to collect the results of pattern matching. 
             # Ruby counts opening parentheses, and for each stores the result of the partial match 
             # between it and the corresponding closing parenthesis.
             
             
             
             
             # : You can use parentheses to group terms within a regular expression. 
             # Everything within the group is treated as a single regular expression.
             
#   $        #
puts "This is line #$."

#   []

#   **

#   -(unary)

#   +(unary)

#   !

#   ~

#   *

#   /

#   %

#   +

#   -

#   <<

#   >>

#   &

#   |

#   >

#   >=

#   <

#   <=

#   <=>

#   ==

#   ===

#   !=

#   =~

#   !~

#   &&

#   ||

#   ..

#   ...



