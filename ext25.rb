#Exercise 25: EVEN MORE PRACTICE

# A Module is a collection of methods or the other name: 'functions' and CONTSTANTS 
# (remember, it's a good idea to keep CONSTANTS capitalized) 
# The methods in a module may be instance methods or module methods. 

# Instance methods appear as methods in a class when the module is included, module methods do not. 
# Conversely, module methods may be called without creating an encapsulating object, while instance methods may not.   
# The following  

module Ex25
  def self.break_words(stuff)
    # The 'split' function will break up words for us and pass them back with single quotes
    words = stuff.split (' ')
    words
  end

  def self.sort_words(words)
    # Sort the words.
    words.sort()
  end

  def self.print_first_word(words)
    # Prints the first word and shifts the others down by one.
    word = words.shift()
    puts word
  end

  def self.print_last_word(words)
    #Prints the last word after popping it off the end.
    word = words.pop()
    puts word
  end

  def self.sort_sentence(sentence)
    #Takes in a full sentence and returns the sorted words.
    words = break_words(sentence)
    sort_words(words)
  end

  def self.print_first_and_last(sentence)
    #Prints the first and last words of the sentence.
    words = break_words(sentence)
    print_first_word(words)
    print_last_word(words)
  end

  def self.print_first_and_last_sorted(sentence)
    # Sorts the words then prints the first and last one.
    words = sort_sentence(sentence)
    print_first_word(words)
    print_last_word(words)
  end
end 

##############################################################################################################################
# EXTRA CREDIT
# Take the remaining lines of the WYSS output and figure out what they are doing. Make sure you understand how you are running your # functions in the Ex25 module.
# The reason we put our functions in a module is so they have their own namespace. If someone else writes a function called 'break_words', we won't collide. However, if typing Ex25. is annoying, you can type include Ex25 which is like saying, "Include everything from the Ex25 module in my current module."
# Try breaking your file and see what it looks like in Ruby when you use it. You will have to quit IRB with CTRL-D to be able to 
# reload it.