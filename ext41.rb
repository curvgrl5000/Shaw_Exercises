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

######################################################################################################
# No. 1
# class X(Y)
# "Make a class named X that is-a Y."

# Here we show how a class can be created and building the relationship between X and Y
# The class Fruit's method 'set_kind' will set or write the kind with the placeholder variable K
# The class Fruit's method 'get_kind' will read the value of the first param, as long as there is one.
puts " -- "*10    
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
puts " -- "*10    
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
puts " -- "*10    
class Fruit
  attr_accessor :kind   # attr_accessor is a getter and a setter > See chart below
  def size(k)
    @kind = k
  end
end

f4 = Fruit.new
p f4.size("small")

# Shortcut	            Effect
# attr_reader :v	      def v; @v; end
# attr_writer :v	      def v=(value); @v=value; end
# attr_accessor :v	    attr_reader :v; attr_writer :v
# attr_accessor :v, :w	attr_accessor :v; attr_accessor :w

###################################################################################################### No. 2  
# class X(object) def initialize(J)
# "class X has-a initialize that takes J parameters."

# Ex: 1
puts " -- "*10    
class Fruit
  def initialize
    @j = "juicy"
  end
  def state
    @j
  end
end

f5 = Fruit.new
puts f5.state

# Ex: 2
puts " -- "*10    
class Fruit
  def initialize ( j )
    @j = j
  end
  def state
    @j
  end
end
f6 = Fruit.new("sour") 
puts f6.state

# Ex: 3  
puts " -- "*10    
class Fruit
  def initialize ( j="tart" )  # Here we are noting a default value that can be overridden.
    @j = j
  end
  def state
    @j
  end
end
f7 = Fruit.new("sweet")
puts f7.state

######################################################################################################No. 3  
# class X(object) def M(J) 
# "class X has-a function named M that takes J parameters."

puts " -- "*10 
class Fruit
  def m(j)
    @j = j
  end 
end

f8 = Fruit.new
puts f8.m("tart")

######################################################################################################No. 4 
# foo = X()
# "Set foo to an instance of class X."

puts " -- "*10  
class X
  puts "hey!"
end

foo = X.new

###################################################################################################### No. 5 
# foo.M(J)
# "From foo get the M function, and call it with parameters J."

puts " -- "*10  
class X 
  attr_accessor :j
  def m(j)
    @j = j  
    puts "hey! I #{@j}"
  end
end
foo = X.new
puts foo.m("see you!") 

puts " -- "*10  
class X 
  attr_accessor :j
  def m(j)
    @j = j  
    puts "hey! I'm #{@j}"
  end
end

foo = X.new
puts foo.m("Anna")

###################################################################################################### 
# No. 6 
# foo.K = Q 
# "From foo get the K attribute and set it to Q." 

puts " -- "*10
class Testing
  Q = "all that and a bag of chips"
  def K 
    puts Q
  end
end

foo = Testing.new
foo.K

puts " -- "*10
class Testing
  def k=(q) 
    @q = q
  end
end
q = "all that and a bag of chips"
foo = Testing.new
puts foo.k = q 

require 'open-uri'

WORD_URL = "http://learncodethehardway.org/words.txt"
WORDS = []

PHRASES = {
  "class ### < ###\nend" => "Make a class named ### that is-a ###.",
  "class ###\n\tdef initialize(@@@)\n\tend\nend"  => "class ### has-a initialize that takes @@@ parameters.",
  "class ###\n\tdef ***(@@@)\n\tend\nend" => "class ### has-a function named *** that takes @@@ parameters.",
  "*** = ###.new()"  => "Set *** to an instance of class ###.",
  "***.***(@@@)"  => "From *** get the *** function, and call it with parameters @@@.",
  "***.*** = '***'" => "From *** get the *** attribute and set it to '***'."
}

PHRASE_FIRST = ARGV[0] == "english"

open(WORD_URL) {|f| 
  f.each_line {|word| WORDS.push(word.chomp)}
}

def craft_names(rand_words, snippet, pattern, caps=false)
  names = snippet.scan(pattern).map do
    word = rand_words.pop()
    caps ? word.capitalize : word
  end

  return names * 2
end

def craft_params(rand_words, snippet, pattern)
  names = (0...snippet.scan(pattern).length).map do
    param_count = rand(3) + 1
    params = (0...param_count).map {|x| rand_words.pop() }
    params.join(', ')
  end

  return names * 2
end

def convert(snippet, phrase)
  rand_words = WORDS.sort_by {rand}
  class_names = craft_names(rand_words, snippet, /###/, caps=true)
  other_names = craft_names(rand_words, snippet, /\*\*\*/)
  param_names = craft_params(rand_words, snippet, /@@@/)
 
  results = []

  for sentence in [snippet, phrase]
    # fake class names, also copies sentence
    result = sentence.gsub(/###/) {|x| class_names.pop }

    # fake other names
    result.gsub!(/\*\*\*/) {|x| other_names.pop }

    # fake parameter lists
    result.gsub!(/@@@/) {|x| param_names.pop }

    results.push(result)
  end

  return results
end 
 
# keep going until they hit CTRL-D
loop do
  snippets = PHRASES.keys().sort_by {rand}

  for snippet in snippets
    phrase = PHRASES[snippet]
    question, answer = convert(snippet, phrase)

    if PHRASE_FIRST
      question, answer = answer, question
    end

    print question, "\n\n> "

    exit(0) unless STDIN.gets

    puts "\nANSWER:  %s\n\n" % answer
  end
end


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


















